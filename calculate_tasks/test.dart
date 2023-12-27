void main() {
  Car car1=Car(400,"kia","white","xezbek");
  print("${car1.colour} ${car1.name} ${car1.hp} ${car1.type}");
}
  
class Car {
  int? hp;
  String? name;
  String? colour;
  String? type;
  Car(this.hp,this.name,this.colour,this.type);
  
}
