//
//  ViewController.swift
//  Demo
//
//  Created by Jerry Lee on 2017/9/22.
//  Copyright © 2017年 Jerry Lee. All rights reserved.
//

import UIKit
import CheckboxList

class ViewController: UIViewController {
    @IBOutlet weak var checkboxListViewA: KCheckboxListView!
    @IBOutlet weak var checkboxListViewB: KCheckboxListView!
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.checkboxListViewA.checkboxSetup(["待签约","待完善","审核中","初审驳回","修改驳回","已签约"], font: UIFont.systemFont(ofSize: 11.0), color: UIColor.gray , isExclusive: false)
        self.checkboxListViewA.setColor(UIColor.purple)
        self.checkboxListViewA.setShape("CheckedBox")
        
        self.checkboxListViewB.checkboxSetup(["张三","李四","王五","赵六","钱琦","周八"], font: UIFont.systemFont(ofSize: 11.0), color: UIColor.black, isExclusive: false)
        self.checkboxListViewB.setColor(UIColor.orange)
        self.checkboxListViewB.setShape("circle")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectResult() {
        self.textView.text = "左选框结果：\n" + self.checkboxListViewA.getOutput().description + "\n\n右选框结果：\n" + self.checkboxListViewB.getOutput().description
    }
}

