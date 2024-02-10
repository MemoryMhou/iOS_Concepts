import Foundation

//extensions to add functionality to existing types.
protocol Houses {
    var numberOfRooms: Int { get }
    var location: String { get }
    var bedrooms: Int { get }
}

extension Houses {
    func getTotalBedrooms() -> Int {
          return self.bedrooms
      }
    }


class House: Houses {
    var numberOfRooms: Int
    var location: String
    var bedrooms: Int
    var bathrooms: Int
    init(numberOfRooms: Int, location: String, bedrooms: Int, bathrooms: Int) {
        self.location = location
        self.numberOfRooms = numberOfRooms
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms

    }
}

let myhouse = House(numberOfRooms: 3, location: "makoni", bedrooms: 14, bathrooms: 2)

print(myhouse.getTotalBedrooms())

