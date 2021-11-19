import 'package:relaex/controls/objects/scenes/scenebo.dart';

class SceneManager {
  static List<SceneConstructor> scenes = [];

 static loadScenes(){
    for(int s = 0; s <= 30; s++){
      SceneConstructor scene = SceneConstructor(sceneBO: SceneBO(s, 'Scene $s'));
      scenes.add(scene);
    }
  }
}