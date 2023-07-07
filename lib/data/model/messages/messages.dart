class Message{
  final String text;
  final DateTime date;
  final bool sentByUser;

  const Message({
    required this.text,
    required this.date,
    required this.sentByUser,
  });
}