import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/constants/dummy_data.dart';
import '../../models/category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<LoadCategories>(_onLoadCategories);
    on<SelectCategory>(_onSelectCategory);
  }
  void _onLoadCategories(LoadCategories event, Emitter<CategoryState> emit) {
    emit(CategoryLoading());
    try {
      // In a real app, we'd fetch from API, but here we use dummy data
      final categories = DummyData.getCategories();
      emit(CategoryLoaded(categories));
    } catch (e) {
      emit(CategoryError('Failed to load categories: $e'));
    }
  }

  void _onSelectCategory(SelectCategory event, Emitter<CategoryState> emit) {
    if (state is CategoryLoaded) {
      final currentState = state as CategoryLoaded;
      emit(CategoryLoaded(
        currentState.categories,
        selectedCategoryId: event.categoryId,
      ));
    }
  }
}
