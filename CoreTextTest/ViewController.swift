//
//  ViewController.swift
//  CoreTextTest
//
//  Created by answer.zou on 16/3/31.
//  Copyright © 2016年 answer.zou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var dataArray: NSMutableArray!
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = NSMutableArray(array: ["阅读器", "朋友圈"])
        tableView = UITableView(frame: CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height - 40), style: .Plain)
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewID = "tableViewID"
        var tableViewCell = tableView.dequeueReusableCellWithIdentifier(tableViewID)
        if tableViewCell == nil {
            tableViewCell = UITableViewCell(style: .Default, reuseIdentifier: tableViewID)
        }
        tableViewCell?.textLabel?.text = dataArray[indexPath.row] as? String
        return tableViewCell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }


}

