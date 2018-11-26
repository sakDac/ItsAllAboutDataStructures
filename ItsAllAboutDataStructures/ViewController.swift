//
//  ViewController.swift
//  ItsAllAboutDataStructures
//
//  Created by saket bhushan on 01/11/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import UIKit

class saket {
    
}

class ViewController: UIViewController {
    
    var arr = [23, 11, 3, 1, 90, 45]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//       print(self.arr.emMergeSort())
        
    }
    
    //MARK : SORTING
    //Ref :: https://medium.com/@EnnioMa/back-to-the-fundamentals-sorting-algorithms-in-swift-from-scratch-fccf8a3daea3
    //Ref :: https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/
    
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

