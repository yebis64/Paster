
//
//  StringHandler.swift
//
//  Created by Seong on 2020/02/26.
//  Copyright © 2020 Seong. All rights reserved.
//

import Foundation
import Cocoa

class clipboardAction {
    init() {
    }
    func setStr(str : String){
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        if pasteboard.setString(str, forType: NSPasteboard.PasteboardType.string) {

        } else {

        }
        
    }
    func getStr() -> String{
        let pastedBoard = NSPasteboard.general
        guard let str = pastedBoard.string(forType: NSPasteboard.PasteboardType.string) else {return ""}
        return str
    }
}
