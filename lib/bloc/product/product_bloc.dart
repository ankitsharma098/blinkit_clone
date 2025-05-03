import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../core/constants/dummy_data.dart';
import '../../models/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<LoadProducts>(_onLoadProducts);
    on<FilterProductsByCategory>(_onFilterProductsByCategory);
    on<SearchProducts>(_onSearchProducts);
  }
  void _onLoadProducts(LoadProducts event, Emitter<ProductState> emit) {
    emit(ProductLoading());
    try {
      final products = DummyData.getProducts();
      emit(ProductLoaded(allProducts: products, filteredProducts: products));
    } catch (e) {
      emit(ProductError('Failed to load products: $e'));
    }
  }

  void _onFilterProductsByCategory(
      FilterProductsByCategory event, Emitter<ProductState> emit) {
    if (state is ProductLoaded) {
      final currentState = state as ProductLoaded;

      if (event.categoryId == null) {
        emit(ProductLoaded(
          allProducts: currentState.allProducts,
          filteredProducts: currentState.allProducts,
        ));
      } else {
        final filteredProducts = currentState.allProducts
            .where((product) => product.categoryId == event.categoryId)
            .toList();

        emit(ProductLoaded(
          allProducts: currentState.allProducts,
          filteredProducts: filteredProducts,
        ));
      }
    }
  }

  void _onSearchProducts(SearchProducts event, Emitter<ProductState> emit) {
    if (state is ProductLoaded) {
      final currentState = state as ProductLoaded;
      final query = event.query.toLowerCase();

      if (query.isEmpty) {
        emit(ProductLoaded(
          allProducts: currentState.allProducts,
          filteredProducts: currentState.allProducts,
        ));
      } else {
        final filteredProducts = currentState.allProducts
            .where((product) => product.name.toLowerCase().contains(query))
            .toList();

        emit(ProductLoaded(
          allProducts: currentState.allProducts,
          filteredProducts: filteredProducts,
        ));
      }
    }
  }
}
