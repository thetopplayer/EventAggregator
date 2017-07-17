//
//  DecodeHTML.swift
//  EventAggregator
//
//  Created by Egor Bryzgalov on 12.07.17.
//  Copyright © 2017 Egor Bryzgalov. All rights reserved.
//

import Foundation
import WebKit

class DecodeHTML {
    func decodehtmltotxt(htmltxt: String) -> String {
        let encodedString = htmltxt
        guard let data = encodedString.data(using: .utf8) else {
            return "nil"
        }
        
        let options: [String: Any] = [
            NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
            NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue
        ]
        
        guard let attributedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil) else {
            return "nil"
        }
        
        let decodedString = attributedString.string
        return decodedString
    }
}