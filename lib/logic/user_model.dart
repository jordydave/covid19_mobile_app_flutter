class User {
  String name;
  String positif;
  String sembuh;
  String meninggal;
  String dirawat;

  User({
    this.name,
    this.positif,
    this.sembuh,
    this.meninggal,
    this.dirawat,
  });

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      name: object['name'],
      positif: object['positif'],
      sembuh: object['sembuh'],
      meninggal: object['meninggal'],
      dirawat: object['dirawat'],
    );
  }
}
