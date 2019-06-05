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
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
    MailContent("John Doe", "Happy Halloween",
        "This is a simple demo mail...", "31 Oct"),
  ];

  static MailContent getMailContent(int position) => mailList[position];

  static int mailListLength = mailList.length;
}