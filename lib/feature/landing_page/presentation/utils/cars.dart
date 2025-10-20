
import 'package:fleetride/gen/assets.gen.dart';

class CarVendors {
  final String name;
  final String icon;

  CarVendors({required this.name, required this.icon});
}

class AdModel {
  final String image;
  final String title;
  final String description;

  AdModel({
    required this.image,
    required this.title,
    required this.description,
  });
}


class CarType {
  final String name;
  final String icon;

  CarType({required this.name, required this.icon});
}
class Car {
  final String name;
  final String icon;
  final String kilometer;
  final double price;

  Car({required this.kilometer,required this.price,required this.name, required this.icon});
}

 final List<CarVendors> carsVendors = [
    CarVendors(name: 'Add Car', icon: Assets.images.car2.path),
    CarVendors(name: 'Inquiry Car', icon: Assets.images.car2.path),
    CarVendors(name: 'Car Services', icon: Assets.images.car2.path),
  ];
   final List<CarVendors> carsRendering = [
    CarVendors(name: 'Book', icon: Assets.images.bus.path),
    CarVendors(name: 'Rent', icon: Assets.images.bus2.path),
    CarVendors(name: 'Cars', icon: Assets.images.car2.path),
  ];

final List<String> routes = [
    '/landing/dashboard',
    '/cars',
    '/landing/favorites',
    '/landing/profile',
  ];

   final List<AdModel> ads = [
    AdModel(
      image: Assets.images.range1.path,
      title: '20% Off Luxury Rides',
      description: 'Enjoy premium rides with exclusive discounts!',
    ),
    AdModel(
      image: Assets.images.bg.path,
      title: 'Ride Now, Pay Later',
      description: 'Book a ride today and pay next month.',
    ),
    AdModel(
      image: Assets.images.range2.path,
      title: 'Airport Pickup Deals',
      description: 'Hassle-free airport transfers at great prices.',
    ),
  ];

     final List<Car> cars = [
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.mercedes.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.mercedes.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.mercedes.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
  ];

       final List<Car> carsService = [
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
  
      Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
    Car(name: 'Jeep Wrangler X839', icon: Assets.images.car2.path,price:1.0,kilometer:"8,750 KWD"),
  ];