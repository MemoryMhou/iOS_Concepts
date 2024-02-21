import Foundation

//Create a reusable library or toolkit using advanced Swift features.
protocol GrocerySection {
    var sectionName: String { get }
    var items: [String] { get set }
    
    mutating func addItems(_ item: String)
    mutating func removeItems(_ item: String)
}

protocol GroceryShop {
    var sections: [GrocerySection] { get set }
    
    mutating func addSection(_ section: GrocerySection) throws
    mutating func removeSection(_ section: GrocerySection) throws
}

class GroceryShopImpl: GroceryShop {
    var sections: [GrocerySection] = []
    
    func addSection(_ section: GrocerySection) throws {
        guard !sections.contains(where: { $0.sectionName == section.sectionName }) else {
            throw GroceryError.sectionAlreadyExists
        }
        sections.append(section)
    }
    
    func removeSection(_ section: GrocerySection) throws {
        guard let index = sections.firstIndex(where: { $0.sectionName == section.sectionName }) else {
            throw GroceryError.sectionNotFound
        }
        sections.remove(at: index)
    }
}

class GrocerySectionImpl: GrocerySection {
    var sectionName: String
    var items: [String] = []
    
    init(sectionName: String) {
        self.sectionName = sectionName
    }
    
    func addItems(_ item: String) {
        items.append(item)
    }
    
    func removeItems(_ item: String) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}

extension GrocerySection {
    mutating func addItems(_ items: [String]) {
        self.items += items
    }
    
    mutating func removeItems(_ items: [String]) {
        for item in items {
            if let index = self.items.firstIndex(of: item) {
                self.items.remove(at: index)
            }
        }
    }
}

extension GroceryShop {
    mutating func addSections(_ sections: [GrocerySection]) throws {
        for section in sections {
            try addSection(section)
        }
    }
    
    mutating func removeSections(_ sections: [GrocerySection]) throws {
        for section in sections {
            try removeSection(section)
        }
    }
}

do {
    let groceryStore = GroceryShopImpl()

    let produceSection = GrocerySectionImpl(sectionName: "Produce Products Section")
    produceSection.addItems("Beetroot")
    produceSection.addItems("Butternut")
    produceSection.addItems("grapes")
    produceSection.addItems("tomatoes")
    try groceryStore.addSection(produceSection)

    let dairySection = GrocerySectionImpl(sectionName: "Dairy Products Section")
    dairySection.addItems("yoghut")
    dairySection.addItems("Milk")
    dairySection.addItems("Cheese")
    dairySection.addItems("cream")
    try groceryStore.addSection(dairySection)

    for section in groceryStore.sections {
        print("Section: \(section.sectionName)")
        print("Items: \(section.items)")
    }
    
} catch {
    print("Error occurred: \(error)")
}


enum GroceryError: Error {
    case sectionAlreadyExists
    case sectionNotFound
}
