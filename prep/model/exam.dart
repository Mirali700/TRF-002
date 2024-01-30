abstract class Rentable {
  rent();
  returnVehicle();
}

enum VehicleType {
  Commercial,
  Coupe,
  Hatchback,
  Sedan,
  Sport,
  SUV,
  Motorcycle,
}

class Vehicle implements Rentable  {
  String brand;
  String model;
  VehicleType type;
  Vehicle(this.brand, this.model, this.type);

  @override
  void rent() {
    print("$brand $model rented");
  }

  @override
  void returnVehicle() {
    print("$brand $model returned");
  }
}

mixin Discountable {
  void calculateDiscountedPrice(int price,int discount) {
    print("Orginal price:$price");
    print("Discounted price:${price-discount}");
    
  }
}

class Car extends Vehicle with Discountable {
  int passengerCapacity;

  Car(super.brand, super.model, super.type,this.passengerCapacity);


}
