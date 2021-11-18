import 'package:relaex/controls/objects/modules/modulebo.dart';

class ModuleManager {
  static List<ModuleBO> modules = [];

  static loadModules(){
    for(int m = 0; m <= 30; m++){
      ModuleBO module = ModuleBO(m, 'module $m');
      modules.add(module);
    }
  }
}