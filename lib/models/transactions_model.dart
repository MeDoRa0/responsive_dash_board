class TransactionsModel {
  final String transactionName, transactionDate, transactionValue;
  final bool isWithdrawel;
  

  const TransactionsModel( 
      {required this.transactionName,
      required this.transactionDate,
      required this.transactionValue,
      required this.isWithdrawel});
}
