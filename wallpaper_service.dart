import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:http/http.dart' as http;

class WallpaperService {
  Future<String?> downloadImage(String url, String fileName) async {
    try {
      var res = await http.get(Uri.parse(url));
      var dir = await getTemporaryDirectory();
      File file = File('\${dir.path}/\$fileName');
      await file.writeAsBytes(res.bodyBytes);
      await GallerySaver.saveImage(file.path, albumName: 'WALLPAPER_BY_PRINCE');
      return file.path;
    } catch (e) {
      print('Download error: \$e');
      return null;
    }
  }
}
