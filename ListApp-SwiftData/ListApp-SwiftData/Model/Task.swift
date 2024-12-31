//
//  Task.swift
//  ListApp-SwiftData
//
//  Created by Giray Şengönül on 31.12.2024.
//

import Foundation
import SwiftData

@Model
public class Task{
    public var title: String
    
    public init(title: String) {
        self.title = title
    }
}
