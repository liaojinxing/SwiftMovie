//
//  MovieModel.swift
//  SwiftMovie
//
//  Created by liaojinxing on 14-6-3.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

import Foundation

class Movie {
    
    init(dict:NSDictionary?) {
        if let tempDict = dict {
            self.dictionary = tempDict
        } else {
            self.dictionary = NSDictionary()
        }
    }
    
    var dictionary:NSDictionary
    
    var title : String {
        get {
            return self.dictionary["title"] as String
        }
    }
    
}

