
class Util {
  static String getMonthName(int month) {
    List<String> monthNames = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    return monthNames[month - 1];
  }

  static String formateDate(DateTime date, String format) {
    Map<String, String> values = {
      "YYYY": date.year.toString(),
      "MMM": getMonthName(date.month),
      "DD": date.day.toString(),
      "MM": date.month.toString(),
      "YY": date.year.toString().substring(2),
      "hh": date.hour.toString(),
      "mm": date.minute.toString(),
      "ss": date.second.toString()
    };
    values.forEach((key, value) {
      format = format.replaceAll(key, value);
    });
    return format;
  }
}

class withoutInherit {
  DateTime date = DateTime.now();
  void displayFormateDate() {
    print(Util.formateDate(date, "YY/MM/DD"));
    print(Util.formateDate(date, "YYYY-MM-DD"));
  }
}

void main() {
  withoutInherit w = withoutInherit();
  w.displayFormateDate();
}
