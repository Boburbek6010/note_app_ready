import 'dart:io';

class FileService {
  Directory directory = Directory(Directory.current.path + "\\assets\\files");

  Future<void> init() async {
    bool isDirectoryCreated = await directory.exists();
    if(!isDirectoryCreated) {
      await directory.create();
    }
  }
}