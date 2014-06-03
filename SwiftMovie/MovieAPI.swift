//
//  MovieAPI.swift
//  SwiftMovie
//
//  Created by liaojinxing on 14-6-3.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

import UIKit
import Foundation

class MovieAPI {
  
  class func getMovieByID (subjectID : String) -> Movie {
    
    var urlString = "http://api.douban.com/v2/movie/subject/" + subjectID
    var url = NSURL.URLWithString(urlString)
    var request = NSURLRequest(URL: url)
    // Use sync request just for demo
    var received = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error:nil)
    var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(received, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
    var movie = Movie(dict: jsonResult)
    return movie
  }
  
}
