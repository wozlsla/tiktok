// data + UI
import 'package:flutter/cupertino.dart';
import 'package:tiktok/features/videos/models/playback_config_model.dart';
import 'package:tiktok/features/videos/repos/playback_config_repo.dart';

class PlaybackConfigViewModel extends ChangeNotifier {
  // access to the data (read&wrie 담당과 소통 필요)
  final PlaybackConfigRepository _repository;

  // 모델 초기화 (위의 data로)
  late final PlaybackConfigModel _model = PlaybackConfigModel(
    muted: _repository.isMuted(),
    autoplay: _repository.isAutoplay(),
  );

  // Constructor (초기화)
  PlaybackConfigViewModel(this._repository);

  /* Expose just data (no expose repo, model) */
  // getter
  bool get muted => _model.muted;
  bool get autoplay => _model.autoplay;

  /* View 에 data 공개 */
  void setMuted(bool value) {
    _repository.setMuted(value); // 1. repo 에서 value 를 disk 에 persist 하게 저장하게 함
    _model.muted = value; // 2. modify model
    notifyListeners(); // 3. notify to listeners
  }

  void setAutoplay(bool value) {
    _repository.setAutoplay(value);
    _model.autoplay = value;
    notifyListeners();
  }
}
