
import 'dart:io';
import 'functions.dart';
import 'guests.dart';
import 'hotels.dart';


List<Hotel> roomLists =[
  Hotel(
    roomNumber: 1 , numberOfRooms: 2 , floor: 3 ,
    balcony: 'yes', booked: false , smokeOrNot: false,
    pricePerNight: 1000 ,
  ),
  Hotel(
    roomNumber: 5 , numberOfRooms: 2 , floor: 2 ,
    balcony: 'yes', booked: false , smokeOrNot: true,
    pricePerNight: 2000 ,
  ),
  Hotel(
    roomNumber: 4 , numberOfRooms: 3 , floor: 1 ,
    balcony: 'yes', booked:true , smokeOrNot: false,
    pricePerNight: 4500 ,
  )
];

List<Guests> guestList =[];

menu(){
  print("WELCOME TO OUR HOTEL BOOKING SYSTEM");
  print("ENTER 1 : view available rooms ");
  print("ENTER 2 : view booked room ");
  print("ENTER 3 : change the booked room ");
  print("ENTER 4 : to book the room ");
  print("ENTER 5 : check In ");
  print("ENTER 6 : check Out ");
  print("ENTER 7 : Pay ");
}



void main(){
  int? x;
  Hotel myRooms = Hotel();
  Guests myGuests = Guests();
  menu();

  x = int .parse(stdin.readLineSync()!);
  if (x ==1){
    availableRooms(roomLists);
    main();
  }
  else if( x == 2){
    bookedRooms(roomLists);
    main();
  }
  else if ( x == 3){
    myRooms.inform(roomLists);
    changeStatus(roomLists);
    main();
  }
  else if( x == 4){
    myGuests.guest(guestList, roomLists);
    myGuests.guestInfo(guestList);
    main();
  }
  else if( x == 5){
    myGuests.guest(guestList, roomLists);
    checkIn();
    main();
  }
  else if( x == 6){
    checkOut();
    main();
  }
  else{
    if( x == 7){
      myGuests.guest(guestList, roomLists);
      pay(roomLists);
      checkOut();
      main();
    }
  }

}