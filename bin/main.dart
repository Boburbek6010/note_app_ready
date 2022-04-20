import 'dart:io';
import 'package:note_app/services/data_service.dart';
import 'package:note_app/services/io_service.dart';

void main() async {

  DataService dataService = DataService();
  await dataService.init();

  writeln("Qaysi ma'lumotni o'chirmoqchisiz?: ");
  String text = read();
  
  dataService.deleteData(key: text).then((value) {
    writeln(value);
  });
}

/*
//this function done
await database.storeString('action', 'Start');

//Home task
await database.storeInt('counter', 10);
await database.storeBool('repeat', true);
await database.storeDouble('decimal', 1.5);
await database.storeStringList('items', <String>['Earth', 'Moon', 'Sun']);
 */
