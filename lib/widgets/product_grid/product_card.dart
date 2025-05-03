// // lib/widgets/product_grid/product_card.dart
// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import '../../models/product.dart';
//
// class ProductCard extends StatelessWidget {
//   final Product product;
//
//   const ProductCard({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//         side: BorderSide(
//           color: Theme.of(context).brightness == Brightness.light
//               ? Colors.grey.shade200
//               : Colors.grey.shade800,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             Expanded(
//               child: Center(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(4),
//                   child: CachedNetworkImage(
//                     imageUrl: product.imageUrl,
//                     fit: BoxFit.contain,
//                     placeholder: (context, url) => Container(
//                       color: Colors.grey[200],
//                       child: const Center(
//                         child: CircularProgressIndicator(),
//                       ),
//                     ),
//                     errorWidget: (context, url, error) => Container(
//                       color: Colors.grey[200],
//                       child: const Icon(Icons.error),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(height: 8),
//
//             // Product Unit
//             Text(
//               product.unit,
//               style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     color: Colors.grey,
//                   ),
//             ),
//
//             const SizedBox(height: 4),
//
//             // Product Name
//             Text(
//               product.name,
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     fontWeight: FontWeight.bold,
//                   ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//
//             const SizedBox(height: 8),
//             // Continuing lib/widgets/product_grid/product_card.dart
//             // Price Section
//             Row(
//               children: [
//                 if (product.discountedPrice != null) ...[
//                   Text(
//                     '₹${product.discountedPrice!.toStringAsFixed(0)}',
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                         ),
//                   ),
//                   const SizedBox(width: 4),
//                   Text(
//                     '₹${product.price.toStringAsFixed(0)}',
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                           decoration: TextDecoration.lineThrough,
//                           color: Colors.grey,
//                         ),
//                   ),
//                 ] else
//                   Text(
//                     '₹${product.price.toStringAsFixed(0)}',
//                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                         ),
//                   ),
//               ],
//             ),
//
//             const SizedBox(height: 8),
//
//             // Add Button
//             SizedBox(
//               width: double.infinity,
//               height: 32,
//               child: ElevatedButton(
//                 onPressed: product.isAvailable ? () {} : null,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Theme.of(context).colorScheme.secondary,
//                   foregroundColor: Colors.white,
//                   disabledBackgroundColor: Colors.grey,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                 ),
//                 child: Text(product.isAvailable ? 'ADD' : 'OUT OF STOCK'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
