class AppStrings {
  AppStrings._();

  static String get appName => "Book Generating App".tr;

  static String get tabishBinTahir => "Tabish bin Tahir".tr;

  static String get bookTitle => "Book Title".tr;

  static String get bookName => "Book Name".tr;

  static String get chooseBetweenTheQuestionsBelow => "Choose between the questions below:".tr;

  static String get designationOrNameOfPerson => "Designation or Name of Person".tr;

  static String get volumeNumber => "Volume Number".tr;

  static String get books => "Books".tr;

  static String get createABook => "Create a Book".tr;

  static String get addQuestions => "Add Questions".tr;

  static String get bookDetails => "Book Details".tr;

  static String get edit => "Edit".tr;

  static String get delete => "Delete".tr;

  static String get downloadPdf => "Download PDF".tr;

  static String get totalQuestions => "Total Questions".tr;

  static String get answeredQuestions => "Answered - Questions".tr;

  static String get unAnsweredQuestions => "Unanswered - Questions".tr;

  static String get questions => "Questions".tr;

  static String get description => "Description".tr;

  static String get answers => "Answers".tr;

  static String get share => "Share".tr;

  static String get searchHere => "Search Here".tr;

  static String get uploadCover => "Upload Cover".tr;

  static String get chooseStyle => "Choose Styled".tr;

  static String get saveDraft => "Save draft".tr;
}

extension StringX on String {
  String get tr {
    //TODO: Handle translation here
    return this;
  }
}
