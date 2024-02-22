import Foundation
// Define and implement basic protocols.

//defining the protocol for family
protocol Family{
    var name: String { get}
    var age: Int { get}
    
    func introduce()
}

//implementing the protocol for mother
struct Mother: Family {
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
struct Child: Family {
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


let memory = Mother(name: "mother", age: 41)
let courteny = Child(name: "firstBorn", age: 4)

memory.introduce()
courteny.introduce()
