import 'package:reddit_task/core/utils/number_utils.dart';

extension DurationX on Duration {
  String get inMMSS {
    final minutes = NumberUtils.twoDigits(inMinutes);
    final seconds = NumberUtils.twoDigits(inSeconds.remainder(60));

    return "$minutes:$seconds";
  }
}
