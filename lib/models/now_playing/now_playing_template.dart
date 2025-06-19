import 'package:uuid/uuid.dart';

/// A template that displays the system's now playing controls.
///
/// The now playing template displays the system's now playing controls. The system manages
/// the appearance and behavior of the now playing template, including the playback controls
/// and the content that appears in the template.
///
/// You don't create instances of this class directly. Instead, use the [CPNowPlayingTemplate.shared]
/// property to access the shared instance.
///
/// **See Also:**
/// - [Apple Developer Documentation](https://developer.apple.com/documentation/carplay/cpnowplayingtemplate)
class CPNowPlayingTemplate {
  /// Unique id of the object.
  final String _elementId = const Uuid().v4();

  /// The shared now playing template.
  static final CPNowPlayingTemplate shared = CPNowPlayingTemplate._();

  /// Creates a private instance of [CPNowPlayingTemplate].
  CPNowPlayingTemplate._();

  /// Converts the template to a JSON representation.
  Map<String, dynamic> toJson() => {
        "_elementId": _elementId,
      };

  /// Gets the unique identifier for this template.
  String get uniqueId {
    return _elementId;
  }
}
