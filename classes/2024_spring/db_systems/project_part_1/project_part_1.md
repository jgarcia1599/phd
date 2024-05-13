

User
- username 
- name
    - first name, 
    - last name, 
- date of birth, 
- gender
- one or more email addresses
- phone numbers
- password


user may have pets
 A user may have pets of different types that have the same name, but their pets of 
the same type are required to have different names. (For example, a user could 
have a dog and a cat that are both named ‘Spot’, but cannot have two dogs that 
are both named ‘Spot’).


pet 
- name 
-type 
-size



ApartmentUnits, 
- unique UnitRentalID 
- unit number, 
- monthly rent price, 
- approximate square footage, 
- an available date for move-in.


apartmentunits may have different rooms. he names of rooms are unique within 
each Apartment unit, but the different Apartment Units may have the same room 
name(s)

Room
 - name (e.g. ‘bedroom1’, ‘bedroom2’, etc.), 
 - square footage 
 - description


 Each ApartmentUnits is in an  ApartmentBuilding.


 ApartmentBuilding
 - company name and the building name (both are the id)
 address  (comprised of number, street, city, state, and zip code) and year built.

Buildings and Units may have amenities  The rental company will supply a fixed 
list of amenities, and the database should record which units have which 
amenities (such as dishwasher, air-conditioning, etc) and which buildings have 
which additional amenities available to all residents (such as shared laundry 
room, gym, roof-deck, etc). Extra comments about buildings’ amenities, such as 
fees, waiting lists, etc., should also be noted

Each apartment building may have a Pet Policy that indicates whether 
dogs and/or cats and/or rodents are allowed, the registration fee and the monthly 
fee for pets of different types and sizes.

Interest
- apartment unit
- numroomaters
- moveindate
- accepted (yes or no)