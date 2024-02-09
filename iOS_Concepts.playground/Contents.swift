import Foundation
// Define and implement basic protocols.

//defining the protocol for family
protocol family{
    var name: String { get}
    var age: Int { get}
    
    func introduce()
}

//implementing the protocol for mother
struct mother: family {
    let name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    func introduce() {
        print ("Hie, i am the \(name), of the family, i am \(age) years old" )
               }
            }
 
//implementing the protocol for  child
struct child: family {
    let name: String
    let age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    func introduce() {
        print ("Hie, i am the \(name), of the family, i am \(age) years old" )
    }
}


let Memory = mother(name: "mother", age: 41)
let Courteny = child(name: "firstBorn", age: 4)

Memory.introduce()
Courteny.introduce()
