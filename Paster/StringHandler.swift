
//
//  StringHandler.swift
//
//  Created by Seong on 2020/02/26.
//  Copyright © 2020 Seong. All rights reserved.
//

import Foundation
import Cocoa

class stringHandler {
    
    init() {
        
    }
    func writeToClipBoard(str : String){
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        if pasteboard.setString(str, forType: NSPasteboard.PasteboardType.string) {
            print("paste")
        } else {
            print("fix me")
        }
        
    }
    func getStr() -> String{
        let pastedBoard = NSPasteboard.general
        guard let str = pastedBoard.string(forType: NSPasteboard.PasteboardType.string) else {return ""}
        return str
    }
    func removeCRLF() -> String? {
        guard let str = NSPasteboard.general.string(forType: NSPasteboard.PasteboardType.string)
            else { return nil}
        return str.map{(elem : String.Element) -> String in
            return (elem == "\n" || elem == "\r" ? " " : String(elem))
        }.reduce(""){ $0 + $1 }
        
    }
    func justString() -> String {
        return "yebityon"
    }
}
