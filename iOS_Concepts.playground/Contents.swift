import Foundation

protocol FamilyMember {
    var name: String { get }
    var gender: String { get }
    var age: Int { get }
}

extension FamilyMember {
    var details: String {
        return "Name: \(name), Gender: \(gender), Age: \(age)"
    }
}

struct Person<T: FamilyMember>: FamilyMember {
    var name: String
    var gender: String
    var age: Int
    var member: T
    
    init(name: String, gender: String, age: Int, member: T) {
        self.name = name
        self.gender = gender
        self.age = age
        self.member = member
    }
}

struct FamilyMemberDetails: FamilyMember {
    var name: String
    var gender: String
    var age: Int
}

let fatherDetails = FamilyMemberDetails(name: "Leeroy", gender: "Male", age:50 )
let motherDetails = FamilyMemberDetails(name: "Memory", gender: "Female", age: 35)
let sonDetails = FamilyMemberDetails(name: "Shaun", gender: "Male", age: 7)
let daughterDetails = FamilyMemberDetails(name: "Shaunelle", gender: "Female", age: 5)

let father = Person(name: fatherDetails.name, gender: fatherDetails.gender, age: fatherDetails.age, member: fatherDetails)
let mother = Person(name: motherDetails.name, gender: motherDetails.gender, age: motherDetails.age, member: motherDetails)
let son = Person(name: sonDetails.name, gender: sonDetails.gender, age: sonDetails.age, member: sonDetails)
let daughter = Person(name: daughterDetails.name, gender: daughterDetails.gender, age: daughterDetails.age, member: daughterDetails)

print("Father: \(father.member.details)")
print("Mother: \(mother.member.details)")
print("Son: \(son.member.details)")
print("Daughter: \(daughter.member.details)")
