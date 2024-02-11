import Foundation

//Combine generics and protocols in a more complex implementation.

protocol Property {
    var numberOfRooms: Int { get }
    var location: String { get }
    var bedrooms: Int { get }
}

struct House<T: Property>: Property {
    var numberOfRooms: Int
    var location: String
    var bedrooms: Int
    var property: T
    
    init(numberOfRooms: Int, location: String, bedrooms: Int, property: T) {
        self.numberOfRooms = numberOfRooms
        self.location = location
        self.bedrooms = bedrooms
        self.property = property
    }
    
    func getPropertyDetails() -> String {
        return "Location: \(location), Number of rooms: \(numberOfRooms), Bedrooms: \(bedrooms), Property Type: \(type(of: property))"
      
    }
}

struct Flat: Property {
    var numberOfRooms: Int
    var location: String
    var bedrooms: Int
    var floorNumber: Int
}

struct Duplex: Property {
    var numberOfRooms: Int
    var location: String
    var bedrooms: Int
    var backyardSize: Double
}

let myApartment = Flat(numberOfRooms: 4, location: "City", bedrooms: 2, floorNumber: 5)
let myHouse = House(numberOfRooms: 6, location: "MediumDensity", bedrooms: 4, property: myApartment)

print(myHouse.getPropertyDetails())

