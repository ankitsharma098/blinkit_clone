import 'package:flutter/material.dart';

import '../../models/product_category.dart';

class BestsellerCategoryGrid extends StatelessWidget {
  final List<ProductCategory> categories;

  const BestsellerCategoryGrid({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 12),
          child: Text(
            'Bestsellers',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: size.width / (size.height * 0.8),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return BestsellerCategoryCard(
              category: category,
              onTap: () {
                // Navigate to category
              },
            );
          },
        ),
        SizedBox(height: size.height * 0.02),
      ],
    );
  }
}

class BestsellerCategoryCard extends StatelessWidget {
  final ProductCategory category;
  final VoidCallback onTap;

  const BestsellerCategoryCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 1.0,
              children: List.generate(
                category.itemImages.length > 4 ? 4 : category.itemImages.length,
                (index) => ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    category.itemImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (category.itemCount > 4)
              Text(
                '+${category.itemCount - 4} more',
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            Text(
              category.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
