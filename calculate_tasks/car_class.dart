
void main() {
  

  //Car.displayInfo('Sedan', 'Toyota', 'Camry', 60.0);
  Car car1=Car('Sedan', 'Toyota', 'Camry', 0);
 //car1.speedUp(10);
 car1.brake(10);
}

class Car {
  String type;
  String brand;
  String model;
  double speed=0;

  Car(this.type, this.brand, this.model, this.speed);

  Car.displayInfo(this.type, this.brand, this.model, this.speed) {
    print('Sinif: $type');
    print('Marka: $brand');
    print('Model: $model');
    print('Suret: $speed km/h');
  }

  void speedUp(double increase) {
    speed += increase;
    print('Yenilenmis suret: $speed km/h');
  }

  void brake(double decrease) {
    speed -= decrease;
    speed = speed <= 0 ? 0 : speed; //! speed 0-dan asagi olmamasi ucun kontrol
    print('Yenilenmis suret: $speed km/h');
  }
}













