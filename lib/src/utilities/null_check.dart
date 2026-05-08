bool isNull(dynamic data) {
  List nulls = [null, '', 'null', {}, [], "Null"];
  return nulls.contains(data);
}

dynamic setNull(dynamic data) {
  List nulls = [null, '', 'null', {}, [], "Null"];
  return nulls.contains(data) ? null : data;
}

String setNA(dynamic data) {
  List nulls = [null, '', 'null', {}, [], "Null"];
  return nulls.contains(data) ? "NA" : data;
}