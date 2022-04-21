import 'package:note_app/models/note_model.dart';
import 'package:note_app/services/data_service.dart';
import 'package:note_app/services/file_service.dart';
import 'package:note_app/services/io_service.dart';
import 'package:note_app/services/ext_service.dart';

void main() async {
  FileService fileService = FileService();
  await fileService.init();
  
  String title = "";
  String content = "";
  String exit = "";
  
  write("Iltimos note ni nomini kiriting: ");
  title = read();
  
  writeln("Note ni yozishingiz mumkin(Yozib tugatganingizda 'Save' so'zini yozsangiz note saqlab qo'yiladi)");
  while(exit != "Save") {
    exit = read();
    if(exit == "Save") {
      break;
    }
    content += (exit + "\n");
  }
  
  Note note = Note(title: title, content: content);
  await fileService.createFile(note).then((value) => print("Note muvofaqiyatli saqlandi"));
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
