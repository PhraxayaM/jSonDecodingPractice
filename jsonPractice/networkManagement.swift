//
//  networkManagement.swift
//  jsonPractice
//
//  Created by MattHew Phraxayavong on 2/11/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

func getJson(){
    guard let path = Bundle.main.path(forResource: "festival", ofType: ".json") else { return}
    let url = URL(fileURLWithPath: path)
    guard let data = try? Data(contentsOf: url, options: .alwaysMapped) else { return}
    print(data)
//    let jsonData = try? JSONSerialization.jsonObject(with: data, options: [])
//    print(jsonData)
    
    
    let decoder = JSONDecoder()
    
    let jsonDecode = try? decoder.decode([Festival].self, from: data)
    print(jsonDecode)
    
}
