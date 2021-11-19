import 'package:relaex/controls/objects/modules/modulebo.dart';

class ModuleManager {
  static List<ModuleConstructor> modules = [];

  static loadModules(){
    for(int m = 0; m <= 30; m++){
      ModuleConstructor module = ModuleConstructor(moduleBO: ModuleBO(m, 'module $m'));
      modules.add(module);
    }
  }
}