class DateUtil {
  String getMonthName(int month) {
    List<String> monthNames = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return monthNames[month - 1];
  }

  String formatDate(DateTime date, String format) {
    Map<String, String> values = {
      'YYYY': date.year.toString(),
      'MMM': getMonthName(date.month),
      'MM': date.month.toString().padLeft(2, '0'),
      'DD': date.day.toString().padLeft(2, '0'),
      'hh': date.hour.toString().padLeft(2, '0'),
      'mm': date.minute.toString().padLeft(2, '0'),
      'ss': date.second.toString().padLeft(2, '0'),
    };

    // Replace longer keys first
    List<String> keys = ['YYYY', 'MMM', 'MM', 'DD', 'hh', 'mm', 'ss'];
    keys.forEach((key) {
      format = format.replaceAll(key, values[key]!);
    });

    return format;
  }

  String formatDate1(DateTime date) {
    return formatDate(date, 'DD/MM/YYYY');
  }

  String formatDate2(DateTime date) {
    return formatDate(date, 'DD-MM-YYYY');
  }

  String formatDate3(DateTime date) {
    return formatDate(date, 'DD-MMM-YYYY');
  }

  String formatDate4(DateTime date) {
    return formatDate(date, 'DD-MM-yy');
  }

  String formatDate5(DateTime date) {
    return formatDate(date, 'DD MMM, YYYY');
  }
}



class ClassWithInheritance extends DateUtil {
  void displayFormattedDates() {
    DateTime now = DateTime.now();
    print('With Inheritance:');
    print('Format 1: ${formatDate1(now)}');
    print('Format 2: ${formatDate2(now)}');
    print('Format 3: ${formatDate3(now)}');
    print('Format 4: ${formatDate4(now)}');
    print('Format 5: ${formatDate5(now)}');
  }
}

void main() {
  ClassWithInheritance classWithInheritance = ClassWithInheritance();

  classWithInheritance.displayFormattedDates();
}
