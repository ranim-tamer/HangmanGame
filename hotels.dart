
class Hotel{
  int? roomNumber;
  int? numberOfRooms;
  String? balcony;
  int? floor;
  double? pricePerNight;
  bool? booked;
  bool? smokeOrNot;

  Hotel({
    this.roomNumber, this.numberOfRooms, this.floor,
    this.balcony, this.booked ,this.smokeOrNot,
    this.pricePerNight ,
  });

  void inform(List<Hotel> roomLists){
    for(var item in roomLists){
      print("Room Number : ${item.roomNumber}");
      print("Floor : ${item.floor}");
      print("Balcony : ${item.balcony}");
      print("Is Booked : ${item.booked}");
      print('Price Per Night :' r' $' '${item.pricePerNight}');
    }
  }

}