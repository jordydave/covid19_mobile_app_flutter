class PertanyaanModel {
  String pertanyaan;
  String jawaban;

  PertanyaanModel({this.pertanyaan, this.jawaban});

  void setPertanyaan(String getPertanyaan) {
    pertanyaan = getPertanyaan;
  }

  void setJawaban(String getJawaban) {
    jawaban = getJawaban;
  }

  String getPertanyaan() {
    return pertanyaan;
  }

  String getJawaban() {
    return jawaban;
  }
}
