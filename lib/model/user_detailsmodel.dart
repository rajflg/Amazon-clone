class userdetaild{
  final String name;
  final String address;

  userdetaild({required String this.name, required String this.address})
  {}Map<String, dynamic> getjson() => {
      'name': name,
       'address': address,
    };
  }
