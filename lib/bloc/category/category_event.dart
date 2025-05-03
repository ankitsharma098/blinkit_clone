part of 'category_bloc.dart';

abstract class CategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadCategories extends CategoryEvent {}

class SelectCategory extends CategoryEvent {
  final int categoryId;

  SelectCategory(this.categoryId);

  @override
  List<Object?> get props => [categoryId];
}
