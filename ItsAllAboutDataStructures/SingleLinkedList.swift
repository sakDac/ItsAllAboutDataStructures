//
//  SingleLinkedList.swift
//  ItsAllAboutDataStructures
//
//  Created by saket bhushan on 26/11/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

//https://www.journaldev.com/20995/swift-linked-list

class Node<T> {
    
    var data: T?
    var next: Node<T>?
    
    init(data: T? , next: Node<T>? = nil) {
    self.data = data
//    self.next = next
    }
    
}

class SingleLinkedList<T> {
    
    var head: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    
    // Mark appending element in the LL
    func append(value: T) {
        let element = Node(data: value)
        if self.isEmpty {
            self.head = element
        } else {
            var temp = self.head
            while temp?.next != nil {
                temp = temp?.next
            }
            temp?.next = element
        }
    }
    
    
}
/*
 //: Playground - noun: a place where people can play
 
 import UIKit
 
 class Node<T> {
 
 var data: T?
 var next: Node<T>?
 
 init(data: T) {
 self.data = data
 }
 }
 
 class SingleLinkedList<T> {
 
 var head: Node<T>?
 
 var isEmpty: Bool {
 return head == nil
 }
 
 var first: Node<T>? {
 return head
 }
 
 // MARK : Appending
 func append(value: T) {
 let element = Node<T>(data: value)
 if self.isEmpty {
 self.head = element
 } else {
 if var temp = head {
 while temp.next != nil {
 temp = temp.next!
 }
 temp.next = element
 }
 }
 }
 
 func insertAt(value: T, index: Int) {
 let element = Node<T>(data: value)
 var temp = self.head
 for i in 0 ..< index where temp?.next != nil {
 temp = temp?.next
 }
 element.next = temp?.next
 temp?.next = element
 }
 
 func printList() {
 var output = "["
 var temp = self.head
 while (temp != nil) {
 output += "\(temp?.data as? String ?? ""  )" + ","
 temp = temp?.next
 }
 print(output + "]")
 }
 
 }
 
 
 var sll = SingleLinkedList<String>()
 sll.append(value: "saket1")
 sll.append(value: "saket2")
 sll.append(value: "saket3")
 sll.append(value: "saket4")
 sll.insertAt(value: "insertSaket", index: 8)
 sll.printList()
 
 
 
 
 

 
 */
