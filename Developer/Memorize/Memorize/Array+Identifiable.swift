//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Rafael Steffens on 25/09/21.
//

import Foundation

extension Array where Element: Identifiable{
    func firstIndex(matching: Element) -> Int? { // Int? is optional type
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        
        return 0 // todo: bogus
    }
}
