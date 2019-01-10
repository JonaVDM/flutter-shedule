import 'package:amo_schedule/classes/class_room.dart';

class Lesson {
  String name;
  String summary;
  ClassRoom classRoom;
  DateTime startTime;
  DateTime endTime;

  Lesson({
    this.name,
    this.classRoom,
    this.startTime,
    this.endTime,
    this.summary,
  });

  String getTime() {
    String startHour = ((startTime.hour < 10) ? '0' : '') + startTime.hour.toString();
    String startMinute = ((startTime.minute < 10) ? '0' : '') + startTime.minute.toString();
    String endHour = ((endTime.hour < 10) ? '0' : '') + endTime.hour.toString();
    String endMinute = ((endTime.minute < 10) ? '0' : '') + endTime.minute.toString();
    return '$startHour:$startMinute-$endHour:$endMinute';
  }
}