class Time {
  int hour;
  int minute;

  Time(this.hour, this.minute);

  Time add(Time other) {
    int thisTotalMinutes = this.hour * 60 + this.minute;
    int otherTotalMinutes = other.hour * 60 + other.minute;

    int totalMinutes = thisTotalMinutes + otherTotalMinutes;

    int newHour = totalMinutes ~/ 60;
    int newMinute = totalMinutes % 60;

    return Time(newHour, newMinute);
  }

  String toString() {
    String hourString = hour.toString().padLeft(2, '0');
    String minuteString = minute.toString().padLeft(2, '0');
    return '$hourString:$minuteString';
  }
}

void main() {
  Time time1 = Time(10, 45);
  Time time2 = Time(5, 30);

  Time result = time1.add(time2);

  print('Time 1: $time1');
  print('Time 2: $time2');
  print('Result: $result');
}
