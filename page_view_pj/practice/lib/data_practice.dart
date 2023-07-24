void main() {
  DateTime now = DateTime.now();
  print(now);
  print(now.year);
  print(now.minute);
  print(now.millisecond);

  Duration duration = Duration(seconds:3600);

  print(duration);
  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMinutes);

  DateTime specificDay = DateTime(
    2022,
    11,
    23,
  );
  print(specificDay);

  final difference = now.difference(specificDay);
  print(difference);
  print(difference.inDays);

  print(now.isAfter(specificDay));
  print(now.isBefore(specificDay));

  print(now.add(Duration(hours:10)));
  print(now.subtract(Duration(seconds:20)));
}
