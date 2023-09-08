import 'dart:io';
import 'functions.dart';
import 'hotels.dart';

class Guests extends Hotel{
  String? fName;
  String? lName;
  int? phNumber;
  String? passPNumber;
  int? numberOfGuests;

  Guests({
    this.fName, this.lName , this.phNumber,
    this.passPNumber, this.numberOfGuests,
    bool? smokeOrNot, int? roomNumber,
  }) : super( smokeOrNot:  smokeOrNot , roomNumber: roomNumber);

  void guest(List<Guests> guestList, List<Hotel> roomLists){
    print('Enter First Name : ');
    fName = stdin.readLineSync()!;
    print('Enter Last Name : ');
    lName = stdin.readLineSync()!;
    print('How many Guests will stay with? ');
    numberOfGuests = int.parse(stdin.readLineSync()!);
    print('Smoker OR Non-Smoker ? ');
    String s = stdin.readLineSync()!;
    smokeOrNot = s.parseBool();
    print('Enter Phone Number : ');
    phNumber = int.parse(stdin.readLineSync()!);
    print('Enter Passport Number : ');
    passPNumber = stdin.readLineSync()!;
    availableRooms(roomLists);
    print('Chose a room from them ');
    int roomNo = int.parse(stdin.readLineSync()!);

    guestList.add(Guests(
      fName: fName,
      lName: lName,
      phNumber: phNumber,
      passPNumber: passPNumber,
      numberOfGuests: numberOfGuests,
      roomNumber: roomNo,
      smokeOrNot: smokeOrNot,
    ));
    print("Welcome '${fName} you are added ");
  }

  void guestInfo(List<Guests> guestList){
    var roomLists;
    super.inform(roomLists);
    for(var item in guestList) {
      print("Room '${item.roomNumber}' is booked to guest '${item.fName} ${item.lName}' ");
      print('Room Number : ${item.roomNumber}');
      print('First Name : ${item.fName}');
      print('Last Name : ${item.lName}');
      print('Phone Number : ${item.phNumber}');
      print('Number Of Guests : ${item.numberOfGuests}');
      print('Passport Number : ${item.passPNumber}');
      print('smoker Or Not : ${item.smokeOrNot}');
    }
  }

}