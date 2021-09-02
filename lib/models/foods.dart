class Foods {
  int id;
  String name;
  int price;
  String explanation;

  Foods(
    this.name,
    this.explanation,
    this.price,
  ); //verileri yazarken
  Foods.withID(
    this.id,
    this.name,
    this.explanation,
    this.price,
  ); // verileri okurken

  Map<String, dynamic> toMap() {
    // DBye yazmak için map a dönüştür
    var map = Map<String, dynamic>();
    map['id'] = id;
    map['name'] = name;
    map['explanation'] = explanation;
    map['price'] = price;
    return map;
  }

  Foods.fromMap(Map<String, dynamic> map) {
    // DB den okuduğun mapi objeye dönüştür
    this.id = map['id'];
    this.name = map['name'];
    this.explanation = map['explanation'];
    this.price = map['price'];
  }

  String toString() {
    return 'Foods{id: $id, name: $name, explanation: $explanation, price: $price}';
  }
}