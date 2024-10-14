import 'dart:core';

abstract class DataToDomainMapper<T> {
  T mapper();
}

extension DataToDomainMapperListExtension<T> on List<DataToDomainMapper<T>> {
  List<T> mapper() => map((dataModel) => dataModel.mapper()).toList();
}
