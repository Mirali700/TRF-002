import 'model/exam.dart';

void main() {
  Car vehicle1 = Car("toyota", "supra", VehicleType.Sedan,6);
  
  vehicle1.rent();
  vehicle1.calculateDiscountedPrice(200, 100);

  vehicle1.returnVehicle();
  
  

  


}
