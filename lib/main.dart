import 'user_model.dart';

void main() {
  // Data JSON lengkap
  final jsonData = {
    'id': 1,
    'name': 'Adi',
    'email': 'adi@gmail.com',
    'age': 20,
  };

  // Mengubah JSON menjadi Object UserModel
  final user = UserModel.fromJson(jsonData);

  print('=== DATA USER ===');
  print('ID     : ${user.id}');
  print('Nama   : ${user.name}');
  print('Email  : ${user.email}');
  print('Umur   : ${user.age}');

  // Mengubah Object UserModel kembali menjadi JSON
  final jsonResult = user.toJson();

  print('\n=== HASIL toJson() ===');
  print(jsonResult);

  // Pengujian Null Safety
  // Beberapa data sengaja dihilangkan
  final incompleteJson = {
    'id': 2,
    'name': 'Budi',
  };

  final userWithoutData = UserModel.fromJson(incompleteJson);

  print('\n=== DATA DENGAN FIELD HILANG ===');
  print('ID     : ${userWithoutData.id}');
  print('Nama   : ${userWithoutData.name}');
  print('Email  : ${userWithoutData.email}');
  print('Umur   : ${userWithoutData.age}');
}
