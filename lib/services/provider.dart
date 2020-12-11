import 'package:get_it/get_it.dart';
import 'package:tictac/services/alert.dart';
import 'package:tictac/services/board.dart';
import 'package:tictac/services/sound.dart';

GetIt locator = GetIt();
void setupLocator(){
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
  locator.registerSingleton(AlertService());

}