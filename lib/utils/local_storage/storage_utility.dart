import '';

class TLocalStorage {
  static final TlocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal;

  final _storage = GetStorage();

  // Generic Method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }
  
  // Generic Method to save data
  T? readData<T>(String key) {
    return _storage.context.read<T>()(key);
  }
}
