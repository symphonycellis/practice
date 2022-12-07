class Budget {
  String judul = "";

  int? nominal = 0;

  String jenis;
  
  Budget(this.judul, this.nominal, this.jenis);
}

class objectBudget {
  static List<Budget> data = [];
}