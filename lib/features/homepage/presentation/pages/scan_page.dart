import 'dart:async';
import 'dart:io';
import 'package:edge_detection/edge_detection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/features/custom_widgets/custom_button.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

import '../../../../core/util/app_strings.dart';
import '../../../../core/util/utils.dart';
import '../provider/receipt_provider.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String? _imagePath;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getImageFromCamera() async {
    bool isCameraGranted = await Permission.camera.request().isGranted;
    if (!isCameraGranted) {
      isCameraGranted =
          await Permission.camera.request() == PermissionStatus.granted;
    }

    if (!isCameraGranted) {
      return;
    }

    String imagePath = join((await getApplicationSupportDirectory()).path,
        "${(DateTime.now().millisecondsSinceEpoch / 1000).round()}.jpeg");

    bool success = false;

    try {
      success = await EdgeDetection.detectEdge(
        imagePath,
        canUseGallery: true,
        androidScanTitle: 'Scanning',
        androidCropTitle: 'Crop',
        androidCropBlackWhiteTitle: 'Black White',
        androidCropReset: 'Reset',
      );
      Utils.showToast((success) ? LocaleKeys.imageSuccessfullySelected : LocaleKeys.imageNotSelected);
    } catch (e) {
      Utils.showToast(e.toString());
    }

    if (!mounted) return;

    setState(() {
      if (success) {
        _imagePath = imagePath;
      }
    });
  }

  Future<void> getImageFromGallery() async {
    String imagePath = join((await getApplicationSupportDirectory()).path,
        "${(DateTime.now().millisecondsSinceEpoch / 1000).round()}.jpeg");

    bool success = false;
    try {
      success = await EdgeDetection.detectEdgeFromGallery(
        imagePath,
        androidCropTitle: 'Crop', // use custom localizations for android
        androidCropBlackWhiteTitle: 'Black White',
        androidCropReset: 'Reset',
      );
      Utils.showToast((success) ? LocaleKeys.imageSuccessfullySelected : LocaleKeys.imageNotSelected);
    } catch (e) {
      Utils.showToast(e.toString());
    }

    if (!mounted) return;

    setState(() {
      if (success) {
        _imagePath = imagePath;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0,
        title: const CustomText(text: LocaleKeys.imageSelectionPage),
      ),
      body: Consumer<ReceiptProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Visibility(
                  visible: !provider.isLoading,
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 90.w),
                        child: Column(
                          children: [
                            CustomButton(
                              text: LocaleKeys.scanImage,
                              onPressed: getImageFromCamera,
                            ),
                            20.verticalSpace,
                            CustomButton(
                              text: "${LocaleKeys.uploadFromGallery} ",
                              onPressed: getImageFromGallery,
                            ),
                          ],
                        ),
                      )),
                ),
                20.verticalSpace,
                const SizedBox(
                    width: double.infinity,
                    child: CustomText(
                      text: '${LocaleKeys.croppedImagePath}:',
                      textAlign: TextAlign.center,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                  child: CustomText(
                    text: _imagePath.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Visibility(
                  visible: _imagePath != null,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.file(
                          File(_imagePath ?? ''),
                        ),
                        provider.isLoading
                            ? const CircularProgressIndicator()
                            : Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 90.w),
                          child: CustomButton(
                            text: LocaleKeys.uploadReceipt,
                            onPressed: () async {
                              if (_imagePath != null) {
                                await provider
                                    .uploadReceiptImage(_imagePath!);
                              } else {
                                Utils.showToast(
                                    LocaleKeys.pleaseSelectAnImageFirst);
                              }
                            },
                          ),
                        ),
                        20.verticalSpace,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
