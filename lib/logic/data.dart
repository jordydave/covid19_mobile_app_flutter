import 'package:covid19/logic/pertanyaan_model.dart';

List<PertanyaanModel> getPertanyaan() {
  List<PertanyaanModel> pertanyaan = new List<PertanyaanModel>();
  PertanyaanModel pertanyaanModel = new PertanyaanModel();

  pertanyaanModel
      .setPertanyaan("Apakah anda bepergian keluar kota / Wilayah zona merah?");
  pertanyaanModel.setJawaban("Iya / Tidak");
  pertanyaan.add(pertanyaanModel);
  pertanyaanModel = new PertanyaanModel();

  pertanyaanModel.setPertanyaan(
      "Apakah anda melakukan kontak fisik dengan pasien positif?");
  pertanyaanModel.setJawaban("Iya / Tidak");
  pertanyaan.add(pertanyaanModel);
  pertanyaanModel = new PertanyaanModel();

  pertanyaanModel
      .setPertanyaan("Apakah anda mengalami demam dengan suhu diatas 38°C?");
  pertanyaanModel.setJawaban("Iya / Tidak");
  pertanyaan.add(pertanyaanModel);
  pertanyaanModel = new PertanyaanModel();

  pertanyaanModel.setPertanyaan(
      "Apakah anda mengalami gejala seperti flu, demam, dan sesak nafas?");
  pertanyaanModel.setJawaban("Iya / Tidak");
  pertanyaan.add(pertanyaanModel);
  pertanyaanModel = new PertanyaanModel();

  pertanyaanModel = new PertanyaanModel();

  return pertanyaan;
}
