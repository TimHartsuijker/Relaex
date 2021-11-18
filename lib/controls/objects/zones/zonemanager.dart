import 'package:relaex/controls/objects/zones/zonebo.dart';

class ZoneManager {
  static List<ZoneBO> zones = [];

  static loadZones(){
    for(int z = 0; z <= 30; z++){
      ZoneBO zone = ZoneBO(z, 'zone $z');
      zones.add(zone);
    }
  }
}