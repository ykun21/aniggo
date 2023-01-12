import 'package:better_player/better_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.state.freezed.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.data(BetterPlayerController controller) =
      _Data;
  const factory VideoPlayerState.loading(String? e) = _Loading;
  const factory VideoPlayerState.error(Object? e, [StackTrace? stk]) = _Error;
}
