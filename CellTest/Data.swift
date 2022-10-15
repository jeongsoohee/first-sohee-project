//
//  Data.swift
//  CellTest
//
//  Created by 정소희 on 2022/10/15.
//

import Foundation

class Data{
var main:String
var detail:detailtype


init(main: String, detail: detailtype) {
self.main = main
self.detail = detail
    }
}

enum detailtype:String {
case A = "A"
case B = "B"
}
