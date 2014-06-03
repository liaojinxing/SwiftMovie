//
//  MovieViewController.swift
//  SwiftMovie
//
//  Created by liaojinxing on 14-6-3.
//  Copyright (c) 2014年 jinxing. All rights reserved.
//

import UIKit

extension MovieViewController {

    var dataSource : Array<String> {
        return ["10726941", "10485647", "21352814", "25804446", "25884865", "6082518", "2132473"]
    }
}


class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        var tableView = UITableView(frame:self.view.frame, style:UITableViewStyle.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyCell")
        var movieID = self.dataSource[indexPath.row]
        var movie = MovieAPI.getMovieByID(movieID);
        cell.textLabel.text = movie.title;
        return cell
    }
    
}
