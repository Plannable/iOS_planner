//
//  LoadClient.swift
//  Plannable_white
//
//  Created by shane davis on 31/03/2017.
//  Copyright © 2017 shane davis. All rights reserved.
//

import Foundation
import RealmSwift

class   loadClient: NSObject{
    
    private func readJson() {
        do {
            if let file = Bundle.main.url(forResource: "loads", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                let loads = json as! [[String: NSObject]]
                
                let realm = try! Realm()
                try! realm.write {
                    for load in loads{
                        realm.create(Load.self,value:load)
                    }
                }
                //                let array_of_models  = Json4Swift_Base.modelsFromDictionaryArray(array: json as! NSArray)
                
                //                self.data  = array_of_models
                
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
