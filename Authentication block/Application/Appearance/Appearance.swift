//
//  Appearance.swift
//  Authentication block
//
//  Created by Алексей Коваленко on 13.10.2022.
//

import Foundation
import UIKit

class Appearance {
    static var titlesFont = UIFont()
    static var buttomsFont = UIFont()
    static var smallCursiveFont = UIFont()
    
    static func configure() {
        guard let titlesFont = UIFont(name: "LD Grotesk Condensed Bold", size: 40) else { fatalError("failed") }
        Appearance.titlesFont = titlesFont
        guard let buttomsFont = UIFont(name: "Helvetica Bold", size: 12) else { fatalError("failed") }
        Appearance.buttomsFont = buttomsFont
        guard let smallCursiveFont = UIFont(name: "LD Grotesk Condensed Ultra Light Oblique", size: 12) else { fatalError("failed") }
        Appearance.smallCursiveFont = smallCursiveFont
    }
}
