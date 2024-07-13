//
//  FruitesWorldModel.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//


import SwiftUI

struct FruitModel: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var nutrition: [String]
}
