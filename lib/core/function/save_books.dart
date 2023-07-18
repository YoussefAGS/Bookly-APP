import 'package:hive/hive.dart';

import '../../constant.dart';
import '../../features/home/domain/entites/book_entity.dart';

void saveDataBooks(List<BookEntity> bokEntity,String key) {
  var box=Hive.box(key);
  box.add(bokEntity);
}
