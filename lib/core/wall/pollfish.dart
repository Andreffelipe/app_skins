import 'package:flutter_pollfish/flutter_pollfish.dart';

abstract class IPollFish {
  void init();
  void dispose();
  void show();
}

class PollFishController extends IPollFish {
  Future<void> _initPollfish() async {
    FlutterPollfish.instance.init(
      androidApiKey: 'bf8867a9-907e-4f79-b765-1b5a4d58a49e',
      iosApiKey: 'ff868d2f-6630-4728-8bd8-c6e5bd2e4ad7',
      rewardMode: true,
      releaseMode: true,
      offerwallMode: true,
      requestUUID: '',
      userProperties: {'gender': '1', 'education': '1'},
      clickId: '',
    );
  }

  @override
  void dispose() {
    FlutterPollfish.instance.removeListeners();
  }

  @override
  void init() {
    _initPollfish();
  }

  @override
  void show() async {
    print("show");
    await FlutterPollfish.instance.show();
  }
}
