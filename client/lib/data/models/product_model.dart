import 'package:shop/domain/entity/product_entity.dart';

/// Instance of class [ProductEntity] which has the role of fetching and parsing data from/to json.
class ProductModel extends ProductEntity {
  /// Fetch data from json format.
  ProductModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json['id'],
          name: json['judul_buku'],
          pengarang: json['pengarang'],
          sinopsis: json['sinopsis'],
        );

  get pengarang => null;

  /// Parse data into json format.
  Map<String, dynamic> toJson() => {
        'weather': {
          'id': id,
          'judul_buku': name,
          'pengarang': pengarang,
          'sinopsis': sinopsis,
        },
      };
}
