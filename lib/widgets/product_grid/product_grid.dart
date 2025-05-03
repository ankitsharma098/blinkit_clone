// // lib/widgets/product_grid/product_grid.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../bloc/product/product_bloc.dart';
// import 'product_card.dart';
// import '../../models/product.dart';
//
// class ProductGrid extends StatelessWidget {
//   const ProductGrid({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProductBloc, ProductState>(
//       builder: (context, state) {
//         if (state is ProductLoading) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (state is ProductLoaded) {
//           final products = state.filteredProducts;
//
//           if (products.isEmpty) {
//             return SizedBox(
//               height: 200,
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.search_off,
//                       size: 48,
//                       color: Colors.grey[400],
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       'No products found',
//                       style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                             color: Colors.grey[600],
//                           ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//
//           return Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.7,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: products.length,
//               itemBuilder: (context, index) {
//                 final product = products[index];
//                 return ProductCard(product: product);
//               },
//             ),
//           );
//         } else if (state is ProductError) {
//           return Center(child: Text(state.message));
//         }
//
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }
