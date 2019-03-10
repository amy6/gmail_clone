class MailContent {

  String sender;
  String subject;
  String message;
  String time;

  MailContent(this.sender, this.subject, this.message, this.time);

  String getSubject() => this.subject;
  String getSender() => this.sender;
  String getTime() => this.time;
  String getMessage() => this.message;
}

class MailGenerator {
  static var mailList = [
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
  ];

  static MailContent getMailContent(int position) => mailList[position];

  static int mailListLength = mailList.length;
}