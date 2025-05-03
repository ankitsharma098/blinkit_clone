import '../../models/category.dart';
import '../../models/product.dart';
import '../../models/product_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyData {
  static List<Category> getCategories() {
    return [
      Category(id: 1, name: "All", icon: FontAwesomeIcons.borderAll),
      Category(id: 2, name: "Summer", icon: FontAwesomeIcons.sun),
      Category(id: 3, name: "Electronics", icon: FontAwesomeIcons.headphones),
      Category(id: 4, name: "Beauty", icon: FontAwesomeIcons.spa),
      Category(id: 5, name: "Kids", icon: FontAwesomeIcons.baby),
      const Category(id: 6, name: "Fruits", icon: FontAwesomeIcons.apple),
    ];
  }

  static List<ProductCategory> getBestsellerCategories() {
    return [
      ProductCategory(
        id: 1,
        name: "Vegetables & Fruits",
        itemImages: [
          "https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg",
          "https://cdn.pixabay.com/photo/2017/06/02/18/24/fruit-2367029_960_720.jpg",
          "https://m.media-amazon.com/images/I/51DJ-9xkuQL._AC_UF1000,1000_QL80_.jpg",
          "https://thumbs.dreamstime.com/b/bunch-bananas-6175887.jpg",
        ],
        itemCount: 105,
      ),
      ProductCategory(
        id: 2,
        name: "Chips & Namkeen",
        itemImages: [
          "https://www.quickpantry.in/cdn/shop/products/lay-s-chile-limon-potato-chips-32-g-quick-pantry.jpg?v=1710539171",
          "https://rewyndsnacks.com/cdn/shop/files/Hing_Jeera_Roasted_Peanuts_1500x.png?v=1731672550",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4IfdlmnFJ-osuDbgIf-0YBYW4sIKWTADa_A&s",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT99wUZIzZ2T9WJ1p4KMIA6vzNIIDI53m1Jdw&s",
        ],
        itemCount: 387,
      ),
      ProductCategory(
        id: 3,
        name: "Ice Creams & More",
        itemImages: [
          "https://5.imimg.com/data5/SELLER/Default/2023/8/333592871/VM/KD/SL/52538228/700-ml-750-ml-family-pack-ice-cream-paper-box.jpg",
          "https://5.imimg.com/data5/SELLER/Default/2022/6/NK/SD/HH/52538228/4l-ice-cream-packaging-box.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkR23_nU6XtujMG44yec4xewbP1_KfD6BvwL1-a8_5uDfRQL1b-NVvwGR1XbeNtWCs8a4&usqp=CAU",
          "https://www.jiomart.com/images/product/original/490794886/amul-vanilla-royale-ice-cream-750-ml-carton-product-images-o490794886-p596302695-0-202212121730.jpg?im=Resize=(1000,1000)",
        ],
        itemCount: 34,
      ),
      ProductCategory(
        id: 4,
        name: "Dairy, Bread & Eggs",
        itemImages: [
          "https://5.imimg.com/data5/SELLER/Default/2022/4/XN/XO/GT/48185030/milk-packaging-box.jpg",
          "https://m.media-amazon.com/images/I/813QtiWCz7L.jpg",
          "https://img500.exportersindia.com/product_images/bc-500/2023/11/9829132/milk-packaging-pouch-1676264582-6759626.jpg",
          "https://img.freepik.com/free-psd/single-brown-chicken-egg-isolated-transparent-background_632498-57862.jpg",
        ],
        itemCount: 8,
      ),
      ProductCategory(
        id: 5,
        name: "Bakery & Biscuits",
        itemImages: [
          "https://www.jiomart.com/images/product/original/492489522/sunder-super-coconut-biscuits-1-kg-product-images-o492489522-p590961510-0-202206180633.jpg?im=Resize=(420,420)",
          "https://www.jiomart.com/images/product/original/rvca0xzqem/malkist-chocolate-flavoured-cracker-biscuits-family-pack-144g-pack-of-30-product-images-orvca0xzqem-p594572895-0-202210180835.jpg?im=Resize=(420,420)",
          "https://unibicestore.com/cdn/shop/files/61KqUogiEmL._SL1500.jpg?v=1701846129&width=1946",
          "https://www.jiomart.com/images/product/original/rve5pvj7so/malkist-cheese-flavoured-cracker-biscuits-family-pack-144g-pack-of-30-product-images-orve5pvj7so-p594572886-0-202210180835.jpg?im=Resize=(420,420)"
        ],
        itemCount: 162,
      ),
      ProductCategory(
        id: 6,
        name: "Drinks & Juices",
        itemImages: [
          "https://afu.sg/wp-content/uploads/2022/06/Packet-Drinks.png",
          "https://www.bigbasket.com/media/uploads/p/xxl/265707_10-thums-up-thums-up-soft-drink.jpg",
          "https://images.apollo247.in/pub/media/catalog/product/o/r/ors0003_1-june23_1_.jpg?tr=q-80,f-webp,w-400,dpr-3,c-at_max%201200w",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5bkrpps71NTMcHPO1NFu5EjfillDZ-f-3kQ&s",
        ],
        itemCount: 44,
      ),
    ];
  }

  static List<ProductCategory> getGroceryCategories() {
    return [
      ProductCategory(
        id: 1,
        name: "Vegetables & Fruits",
        itemImages: [
          "https://www.lalpathlabs.com/blog/wp-content/uploads/2019/01/Fruits-and-Vegetables.jpg",
        ],
        itemCount: 135,
      ),
      ProductCategory(
        id: 2,
        name: "Atta, Rice & Dal",
        itemImages: [
          "https://www.madhoorstores.com/Media/image_gif/8901725121181.jpg",
        ],
        itemCount: 87,
      ),
      ProductCategory(
        id: 3,
        name: "Oil. Ghee & Masala",
        itemImages: [
          "https://content.jdmagicbox.com/v2/comp/palghar/x1/022pxx22.xx22.200214150848.m2x1/catalogue/star-bazaar-nalasopara-west-palghar-star-bazaar-uzgulftxot-250.jpg",
        ],
        itemCount: 90,
      ),
      ProductCategory(
        id: 4,
        name: "Bakery & Biscuits",
        itemImages: [
          "https://m.media-amazon.com/images/I/71sQlowv7aS._AC_UF894,1000_QL80_.jpg",
        ],
        itemCount: 87,
      ),
      ProductCategory(
        id: 5,
        name: "Dairy, Bread & Eggs",
        itemImages: [
          "https://www.shutterstock.com/image-photo/bottle-milk-eggs-bread-on-260nw-1121951432.jpg"
        ],
        itemCount: 55,
      ),
      ProductCategory(
        id: 6,
        name: "Chicken, Meat & Fish",
        itemImages: [
          "https://m.media-amazon.com/images/I/61eWrG59tFL._AC_UF1000,1000_QL80_.jpg"
        ],
        itemCount: 85,
      ),
      ProductCategory(
        id: 7,
        name: "Dry Fruits & Cereals",
        itemImages: [
          "https://eatanytime.in/cdn/shop/files/MiniDryFruits-912399.png?v=1714830184"
        ],
        itemCount: 75,
      ),
    ];
  }

  static List<ProductCategory> getSnacksCategories() {
    return [
      ProductCategory(
        id: 1,
        name: "Chips & Namkeen",
        itemImages: [
          "https://eatbetterco.com/cdn/shop/files/Chilli_garlic.jpg?v=1725259685"
        ],
        itemCount: 179,
      ),
      ProductCategory(
        id: 2,
        name: "Sweets & Chocolates",
        itemImages: ["https://m.media-amazon.com/images/I/81QPaJh0sBL.jpg"],
        itemCount: 95,
      ),
      ProductCategory(
        id: 3,
        name: "Drinks & Juices",
        itemImages: [
          "https://wingreensworld.com/cdn/shop/products/MixedFruit200ml01.jpg?v=1692272880&width=416"
        ],
        itemCount: 105,
      ),
      ProductCategory(
        id: 4,
        name: "Sweets & Chocolates",
        itemImages: [
          "https://5.imimg.com/data5/UO/HM/MY-44085689/sweet-milk-chocolate.jpg"
        ],
        itemCount: 95,
      ),
      ProductCategory(
        id: 5,
        name: "Tea, Coffee & MilkShake",
        itemImages: [
          "https://www.shutterstock.com/image-photo/drinks-made-tea-coffee-260nw-1466338637.jpg"
        ],
        itemCount: 102,
      ),
      ProductCategory(
        id: 6,
        name: "Instant Food",
        itemImages: [
          "https://i1.zopping.com/zopsmart-media/24019/images/640/20240712/917cf669-53b1-4353-86d0-968dc3acf330-imagefile.webp"
        ],
        itemCount: 145,
      ),
      ProductCategory(
        id: 7,
        name: "Sauces & Spreads",
        itemImages: [
          "https://i.pinimg.com/236x/b3/e5/bc/b3e5bc348009bf0ad7cfe054f303886a.jpg"
        ],
        itemCount: 85,
      ),
      ProductCategory(
        id: 8,
        name: "Paan Corner",
        itemImages: [
          "https://5.imimg.com/data5/SELLER/Default/2022/9/VF/CL/GL/159590095/2-jpg-250x250.jpg"
        ],
        itemCount: 195,
      ),
    ];
  }

  static List<Product> getProducts() {
    return [
      const Product(
        id: 1,
        name: "Red Apple",
        price: 120,
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_960_720.jpg",
        categoryId: 1,
        unit: "1 kg",
        isAvailable: true,
        discountedPrice: 99,
      ),
      const Product(
        id: 2,
        name: "Banana",
        price: 60,
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/09/03/20/48/bananas-1642706_960_720.jpg",
        categoryId: 1,
        unit: "12 pcs",
        isAvailable: true,
      ),
      const Product(
        id: 3,
        name: "Full Cream Milk",
        price: 68,
        imageUrl:
            "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
        categoryId: 2,
        unit: "500 ml",
        isAvailable: true,
      ),
      const Product(
        id: 4,
        name: "Cheese Slices",
        price: 130,
        imageUrl:
            "https://cdn.pixabay.com/photo/2018/03/09/09/04/cheese-3211180_960_720.jpg",
        categoryId: 2,
        unit: "10 slices",
        isAvailable: false,
      ),
      const Product(
        id: 5,
        name: "Potato Chips",
        price: 30,
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/11/22/18/52/chips-1850263_960_720.jpg",
        categoryId: 3,
        unit: "45 g",
        isAvailable: true,
        discountedPrice: 25,
      ),
      const Product(
        id: 6,
        name: "Cola",
        price: 40,
        imageUrl:
            "https://cdn.pixabay.com/photo/2014/09/26/19/51/drink-462776_960_720.jpg",
        categoryId: 4,
        unit: "750 ml",
        isAvailable: true,
      ),
      const Product(
        id: 7,
        name: "White Bread",
        price: 35,
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/03/27/21/59/bread-1284438_960_720.jpg",
        categoryId: 5,
        unit: "400 g",
        isAvailable: true,
      ),
      const Product(
        id: 8,
        name: "Hand Soap",
        price: 99,
        imageUrl:
            "https://cdn.pixabay.com/photo/2016/11/26/12/58/soap-1860388_960_720.jpg",
        categoryId: 6,
        unit: "250 ml",
        isAvailable: true,
        discountedPrice: 85,
      ),
    ];
  }
}
