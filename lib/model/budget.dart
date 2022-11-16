class MyBudget{
  String judul;
  int budget;
  String jenisBudget;
  static List<MyBudget> budgetSaya = [];
  MyBudget({
    required this.judul,
    required this.budget,
    required this.jenisBudget,
  });

  static void insertToList(String judul, int budget, String jenisBudget){
    budgetSaya.add(MyBudget(judul: judul, budget: budget, jenisBudget: jenisBudget));
  }

  static List<MyBudget> getList(){
    return budgetSaya;
  }
}

