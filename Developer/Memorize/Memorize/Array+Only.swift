//
//  Array+Only.swift
//  Memorize
//
//  Created by Rafael Steffens on 25/09/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
