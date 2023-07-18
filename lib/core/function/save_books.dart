import 'package:hive/hive.dart';

import '../../constant.dart';
import '../../features/home/domain/entites/book_entity.dart';

void saveDataBooks(List<BookEntity> bokEntity) {
  var box=Hive.box(kFeaturedBox);
  box.add(bokEntity);
}
