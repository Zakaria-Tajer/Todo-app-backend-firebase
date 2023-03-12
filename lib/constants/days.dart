class Days {
  String? id;
  String? day;
  String? hours;
  bool? isOver;

  Days({
    required this.id,
    required this.day,
    required this.hours,
    required this.isOver,
  });

  static List<Days> daysList() {
    return [
      Days(id: "#01", day: "All", hours: "0", isOver: false),
      Days(id: "1", day: "Mon", hours: "24", isOver: false),
      Days(id: "2", day: "Tue", hours: "24", isOver: false),
      Days(id: "3", day: "Wed", hours: "24", isOver: false),
      Days(id: "4", day: "Thu", hours: "24", isOver: false),
      Days(id: "5", day: "Fri", hours: "24", isOver: false),
      Days(id: "6", day: "Sat", hours: "24", isOver: false),
      Days(id: "7", day: "Sun", hours: "24", isOver: false)
    ];
  }
}
