//
//  RecipeModel.swift
//  Recipe Monkey
//
//  Created by Eric on 10/5/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

    struct Recipe: Identifiable {
        let id = UUID()
        let name: String
        let image: String
        let description: String
        let ingredients: String
        let directions: String
        let category: Category.RawValue
    }

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Yeast Donuts",
               
               image: "https://1.bp.blogspot.com/-XPMklaqQMoQ/VLww4804A1I/AAAAAAAAWrU/EBs_3XUda7I/s1600/P1080612.jpg",
               
               description: "Light and fluffy yeast donuts",
               
               //TODO: Make this an array or something so you can parse each item into the shopping list and add checkboxes into RecipeView or something
               ingredients: "1 cup whole milk\n1 tsp granulated sugar (for the yeast)\n1 packet active dry yeast\n350g all purpose flour\n75g white sugar\n1 tsp table salt\nlarge egg yolks\nAdditional flour for work surface\negetable oil\nAdditional sugar (optional for coating)",
               
               
               directions: "1. Start by heating some milk in a bowl to 110°F and then add 1 tsp of sugar along with 1 packet of active dry yeast. Stir to combine and set aside for 10 minutes.\n\n2. In a large bowl combine 350 grams of all purpose flour with 75 grams of white sugar, and 1 tsp of table salt. Whisk to combine.\n\n3. In the same bowl add 3 large egg yolks and the milk and yeast mixture. Using a wooden spoon or your hands, mix dough together until it forms a large shaggy mass. Turn out onto a lightly floured surface and knead for about 8 minutes. Once dough is smooth, add to an oiled bowl, cover, and let sit for about an hour or until it’s doubled in size.\n\n4. Turn dough out onto a floured work surface, pat with a little bit of flour, and then roll out to about ½ inch thickness. Then use a biscuit cutter dusted with flour to cut the dough into donut rounds and place them on a rimmed floured baking sheet. Cover and let rise for 45 minutes.\n\n5. Heat up vegetable oil in a cast iron skillet to 350°F.\n\n.6 Add donuts to the oil and cook for about 45 seconds per side. Remove from oil and place on a wire rack to let cool. Before half of the donuts cool completely, coat them in sugar.\n\n7. Once cooled, take the donuts that are not covered in sugar and using a paring knife make an entry point into the side of the donut and add your cream with a piping bag. Once the cream is added, dip half the donut into the chocolate and let sit for about 20 minutes to harden.\n\n8. On the sugar donuts, make an entry point with a paring knife and add some seedless raspberry jam with a piping bag.\n\n9. Serve and enjoy!",
               
               category: "Dessert"
        )
    ]
}
