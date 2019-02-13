//
//  FestivalModel.swift
//  jsonPractice
//
//  Created by MattHew Phraxayavong on 2/11/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

struct Artist: Codable {
    var name: String
    var id: Int
}

struct Festival: Codable {
    var name: String
    var date: String
    var lineup: [Artist]
}

func getFestival() -> [Festival] {
    let decoder = JSONDecoder()
//
    guard let jsonFilePath = Bundle.main.path(forResource: "festival", ofType:".json") else { return []}

    let url = URL(fileURLWithPath: jsonFilePath)

    guard let data = try? Data(contentsOf: url, options: .mappedIfSafe) else { return []}

    if let decoded = try? decoder.decode([Festival].self, from: data) {
        for item in decoded {
            print(item)
        }
        return decoded
    }

    print(decoder)
    print(data)
    return []
    
    
    
    
    
}
