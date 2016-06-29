//
//  ViewController.swift
//  12
//
//  Created by 20141105039 on 16/6/22.
//  Copyright © 2016年 20141105039. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

          @IBOutlet weak var x: UITextField!
          var flag=0
          var temp=0.0
          var pointval:Bool=false
          @IBAction func add(sender: AnyObject) {
                    if flag==0{
                              temp=(Double)(x.text!)!
                              x.text=""
                              pointval = false
                    }
                    flag=1
          }
          @IBAction func sub(sender: AnyObject) {
                    if flag==0{
                              temp=(Double)(x.text!)!
                              x.text=""
                              pointval = false
                    }
                    flag=2
          }
          @IBAction func mul(sender: AnyObject) {
                    if flag==0{
                              temp=(Double)(x.text!)!
                              x.text=""
                              pointval = false
                    }
                    flag=3
          }
          @IBAction func div(sender: AnyObject) {
                    if flag==0{
                              temp=(Double)(x.text!)!
                              x.text=""
                              pointval = false
                    }
                    flag=4
          }
          @IBAction func calculator(sender: AnyObject) {
                    switch flag {
                    case 1:
                              temp=temp+(Double)(x.text!)!
                              x.text="\(temp)"
                    case 2:
                              temp=temp-(Double)(x.text!)!
                              x.text="\(temp)"
                    case 3:
                              temp=temp*(Double)(x.text!)!
                              x.text="\(temp)"
                    case 4:
                              if(Double)(x.text!)==0
                              {
                                 x.text="大兄弟，零不能这么玩啊"
                              }
                              else{
                               temp=temp/(Double)(x.text!)!
                               x.text="\(temp)"
                              }
                              
                    default:
                              break
                    }
          }
          @IBAction func opposite(sender: AnyObject) {
                    temp=(Double)(x.text!)!
                    temp=(-temp)
                    x.text="\(temp)"
          }
          @IBAction func Del(sender: AnyObject) {
                    var str=x.text!
                    if str != ""{
                         str.removeAtIndex(str.endIndex.predecessor())
                         x.text=str
                    }
                    else{
                              x.text="0"
                    }
                    
          }
          @IBAction func ac(sender: AnyObject) {
                    temp=0
                    x.text=""
                    flag=0
                    pointval = false
          }
          @IBAction func fzy(sender: AnyObject) {
                    if(x.text != "0"){
                     temp=(Double)(x.text!)!
                     temp=1/temp
                     x.text="\(temp)"
                    }
                    else{
                     x.text="大兄弟，零不能这么玩啊"
                    }
                    pointval = false
          }
          @IBAction func xx(sender: AnyObject) {
                    temp=(Double)(x.text!)!
                    temp=temp*temp
                    x.text="\(temp)"
                    pointval = false
          }
          @IBAction func one(sender: AnyObject) {
                    x.text=x.text!+"1"
          }
          @IBAction func two(sender: AnyObject) {
                    x.text=x.text!+"2"
          }
          @IBAction func three(sender: AnyObject) {
                    x.text=x.text!+"3"
          }
          @IBAction func four(sender: AnyObject) {
                    x.text=x.text!+"4"
          }
          @IBAction func five(sender: AnyObject) {
                    x.text=x.text!+"5"
          }
          @IBAction func six(sender: AnyObject) {
                    x.text=x.text!+"6"
          }
          @IBAction func seven(sender: AnyObject) {
                    x.text=x.text!+"7"
          }
          @IBAction func eight(sender: AnyObject) {
                    x.text=x.text!+"8"
          }
          @IBAction func nine(sender: AnyObject) {
                    x.text=x.text!+"9"
          }
          @IBAction func zero(sender: AnyObject) {
                    x.text=x.text!+"0"
          }
          @IBAction func point(sender: AnyObject) {
                    if(pointval == false){
                      x.text=x.text!+"."
                      pointval = true
                    }
                    else{
                      x.text=x.text!+""
                    }
                    
          }
          override func viewDidLoad() {
                    super.viewDidLoad()
                    // Do any additional setup after loading the view, typically from a nib.
          }

          override func didReceiveMemoryWarning() {
                    super.didReceiveMemoryWarning()
                    // Dispose of any resources that can be recreated.
          }


}

