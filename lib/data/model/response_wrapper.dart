
class Network_Response{
  final int? responsecode;
  final String? errorMessage;
  final dynamic responseData;
  final bool issuccess;

  Network_Response({ required this.responsecode, this.errorMessage='something is wrong', this.responseData, required this.issuccess,});
}