

void main() {
  DateTime now = new DateTime.now();
  String getMonthName(int month) {
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

  String formateDate(DateTime date, String format) {
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

  print(formateDate(now, "DD/MM/YYYY"));
  print(formateDate(now, "DD-MM-YYYY"));
  print(formateDate(now, "DD-MMM-YYYY"));
  print(formateDate(now, "DD-MM-YY"));
  print(formateDate(now, "DD-MM-YY hh:mm:ss"));
}
