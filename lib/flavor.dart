
enum Flavor { dev, prod }

class FlavorConfig {
  static late Flavor appFlavor;
  static Uri get baseUri {
    if(appFlavor==Flavor.prod){
      return Uri(host: '',scheme: 'https',path: '');
    }else{
        return Uri(
            host: 'http://localhost:8081/api/v1',
            scheme: 'https',
            path: '');
    }
  }



 }