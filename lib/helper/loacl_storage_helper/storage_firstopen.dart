import 'package:get_storage/get_storage.dart';

class FirstOpen{

   final GetStorage box = GetStorage();

   void saveFirstOpen()=> box.write("firstOpen", true);

   bool isFirstOpen()=>box.read<bool>('firstOpen') ?? false;


}
