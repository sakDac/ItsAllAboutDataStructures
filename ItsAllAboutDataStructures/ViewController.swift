//
//  ViewController.swift
//  ItsAllAboutDataStructures
//
//  Created by saket bhushan on 01/11/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arr = [322, 90, 68, 65, 45, 43, 23, 11, 3, 1, 90, 45]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.bubbleSort()
        self.twoRepeatingElements3()
    }
    
    
    //MARK : SORTING
    
    func bubbleSort() {
        var count = 0
        for j in 0 ..< self.arr.count {
            for i in 0 ..< self.arr.count-j-1 {
                if self.arr[i] > self.arr[i+1]  {
                    let temp = self.arr[i]
                    self.arr[i] = self.arr[i+1]
                    self.arr[i+1] = temp
                    count += 1
                    print("count :: \(count)")
                }
            }
        }
        print(" arr : Sorted : \(self.arr)")
    }
    
    // MARK : Miscellaneous Ques;
    
    /* Find the two repeating elements in a given array */
    
    // using two loops
    func twoRepeatingElement2(){
        var arrRepeated = [Int]()
        
        for i in self.arr {
            var matching = 0
            for j in self.arr {
                if i == j {
                    matching += 1
                }
                if matching >= 2 {
                    arrRepeated.contains(i) ?  print("not adding ") : arrRepeated.append(i)
                }
            }
        }
        print(" arr : Sorted : \(arrRepeated)")
    }
    
    // using one loop and 1 temp array
    func twoRepeatingElements2(){
        var arrRepeated = [Int]()
        for j in self.arr {
            if arrRepeated.contains(j){
                print(" repeated :: \(j)")
            } else {
                arrRepeated.append(j)
            }
        }
    }
    
    // using one loop and 1 temp array
    
    func twoRepeatingElements3(){
        var arr = [1, 2, 3, 1, 3, 6, 6]
        for i in 0 ..< arr.count {
        
            if   arr[abs(arr[i])] >= 0  {
                arr[abs(arr[i])] = -arr[abs(arr[i])]
            } else {
                print("arr[abs(arr[i])] :: \(arr[abs(arr[i])])")
            }
        }
        
        
        
    }
    
}

