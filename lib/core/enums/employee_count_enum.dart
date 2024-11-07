enum EmployeeCountEnum {
  justMe('Just me'),
  twoToTen('2 - 10'),
  tenToTwenty('10 - 20'),
  twentyToFifty('20 - 50'),
  fiftyToHundred('50 - 100'),
  hundredPlus('100+');

  final String label;

  const EmployeeCountEnum(this.label);

  // Optional: Method to convert an enum to a string
  @override
  String toString() {
    return label;
  }
}
