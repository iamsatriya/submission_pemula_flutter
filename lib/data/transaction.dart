import 'package:uuid/uuid.dart';

class Transaction {
  final String id;
  final DateTime createdOn;
  final String title;
  final String labelId;
  final int amount;
  final String currency;
  final DateTime? updatedOn;
  final DateTime? deletedOn;
  final String imageSrc;
  final String? notes;

  Transaction({
    required this.id,
    required this.createdOn,
    required this.title,
    required this.labelId,
    required this.amount,
    required this.currency,
    this.updatedOn,
    this.deletedOn,
    required this.imageSrc,
    this.notes,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] as String,
      createdOn: DateTime.parse(json['created_on'] as String),
      title: json['title'] as String,
      labelId: json['label_id'] as String,
      amount: json['amount'] as int,
      currency: json['currency'] as String,
      updatedOn: json['updated_on'] != null
          ? DateTime.parse(json['updated_on'])
          : null,
      deletedOn: json['deleted_on'] != null
          ? DateTime.parse(json['deleted_on'])
          : null,
      imageSrc: json['image_src'] as String,
      notes: json['notes'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_on': createdOn.toIso8601String(),
      'title': title,
      'label_id': labelId,
      'amount': amount,
      'currency': currency,
      'updated_on': updatedOn?.toIso8601String(),
      'deleted_on': deletedOn?.toIso8601String(),
      'image_src': imageSrc,
      'notes': notes,
    };
  }
}

// Initialize a UUID generator
const Uuid uuid = Uuid();

List<Transaction> transactions = [
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-09-30 14:00:00"),
    title: "Nike Store",
    labelId: "abcd-efgh-ijklm",
    amount: 4500000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/200",
    notes: null,
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-01 10:30:00"),
    title: "Adidas Store",
    labelId: "xyz-123-lmnop",
    amount: 987654321,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/201",
    notes: "Sportswear shopping",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-01 12:45:00"),
    title: "Puma Store",
    labelId: "uvw-456-qrst",
    amount: 450000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/202",
    notes: "Sneakers purchase",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-02 09:15:00"),
    title: "Apple Store",
    labelId: "hijk-789-mnop",
    amount: 2500000,
    currency: "IDR",
    updatedOn: DateTime.parse("2024-10-02 10:00:00"),
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/203",
    notes: "Bought new iPhone",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-02 11:30:00"),
    title: "Samsung Store",
    labelId: "defg-321-qrst",
    amount: 3000000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/204",
    notes: "Bought Galaxy S",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-02 14:30:00"),
    title: "Starbucks",
    labelId: "xyza-654-bcde",
    amount: 75000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/205",
    notes: "Coffee and snacks",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-03 08:45:00"),
    title: "McDonald's",
    labelId: "lmno-123-pqr",
    amount: 50000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/206",
    notes: "Breakfast meal",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-03 12:00:00"),
    title: "Amazon",
    labelId: "pqrs-456-uvwx",
    amount: 1500000,
    currency: "IDR",
    updatedOn: DateTime.parse("2024-10-03 13:00:00"),
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/207",
    notes: "Electronics order",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-04 09:30:00"),
    title: "Google Play",
    labelId: "rstu-789-wxyz",
    amount: 20000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/208",
    notes: "App purchase",
  ),
  Transaction(
    id: uuid.v4(),
    createdOn: DateTime.parse("2024-10-04 11:45:00"),
    title: "Spotify",
    labelId: "uvwx-123-abcd",
    amount: 100000,
    currency: "IDR",
    updatedOn: null,
    deletedOn: null,
    imageSrc: "https://picsum.photos/200/209",
    notes: "Monthly subscription",
  ),
];
