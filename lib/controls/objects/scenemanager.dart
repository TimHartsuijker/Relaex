import 'package:relaex/controls/objects/scenebo.dart';

class SceneManager {
  static List<SceneBO> scenes = [];

 static loadScenes(){
    for(int s = 0; s <= 30; s++){
      SceneBO scene = SceneBO(s, 'scene $s');
      scenes.add(scene);
    }
  }
}