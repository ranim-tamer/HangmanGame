import 'dart:io';
import 'hotels.dart';

void availableRooms(List<Hotel> roomLists){
  for (var item in roomLists){
    if (item.booked == false){
      print("Room Number : ${item.roomNumber}");
      print("Floor : ${item.floor}");
      print("Balcony : ${item.balcony}");
      print('Price Per Night :' r' $' '${item.pricePerNight}');
    }
  }
}

void bookedRooms(List<Hotel> roomLists){
  for (var item in roomLists){
    if (item.booked == true){
      print("Room Number : ${item.roomNumber}");
      print("Floor : ${item.floor}");
      print("Balcony : ${item.balcony}");
      print('Price Per Night :' r' $' '${item.pricePerNight}');
    }
  }
}

void changeStatus(List<Hotel> roomLists){
  print('Enter Room Number:');
  int newNo = int.parse(stdin.readLineSync()!);
  print("Change the booking");
  String a = stdin.readLineSync()!;
  bool newStatus = a.parseBool();
  for (var item in roomLists){
    if ( item.roomNumber == newNo ){
      item.booked == newStatus;
    }
  }
}

void checkIn(){
  print('Welcome..Have a nice rest');
}

void checkOut(){
  print('Goodbye..Waiting you soon');
}

void pay(List<Hotel> roomLists){
  for (var item in roomLists){
    print('Price Per Night :' r' $' '${item.pricePerNight}');
  }
  double x = double.parse(stdin.readLineSync()!);
  print('${x} is paid /n So process is done');
}

extension BoolParsing on String{
  parseBool() {
    if (toLowerCase() == 'true') {
      return true;
    }else if(toLowerCase() == 'false'){
      return false;
    }
  }
}