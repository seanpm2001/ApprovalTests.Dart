part of '../../approval_tests.dart';

/// `Options` class is a class used to set options for the approval test.
class Options {
  /// `scrubber` is a scrubber that is used to clean up strings before they are compared.
  final ApprovalScrubber scrubber;

  /// A final variable `comparator` of type `Comparator` used to compare the approved and received files.
  final Comparator comparator;

  /// A final bool variable `approveResult` used to determine if the result should be approved after the test.
  final bool approveResult;

  /// Path to the files: `approved` and `received`.
  final String? filesPath;

  /// A final bool variable `deleteReceivedFile` used to determine if the received file should be deleted after passed test.
  final bool deleteReceivedFile;

  /// A final variable `namer` of type `Namer` used to set the name and path of the file.
  final Namer? namer;

  /// A final bool variable `logErrors` used to determine if the errors should be logged.
  final bool logErrors;

  /// A final bool variable `logResults` used to determine if the results should be logged.
  final bool logResults;

  // A constructor for the class Options which initializes `isScrub` and `fileExtensionWithoutDot`.
  const Options({
    this.scrubber = const ScrubNothing(),
    this.approveResult = false,
    this.comparator = const CommandLineComparator(),
    this.filesPath,
    this.deleteReceivedFile = false,
    this.namer,
    this.logErrors = true,
    this.logResults = true,
  });
}
