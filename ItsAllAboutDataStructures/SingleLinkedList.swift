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
