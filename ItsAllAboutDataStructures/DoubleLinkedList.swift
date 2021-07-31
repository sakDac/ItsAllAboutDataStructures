//
//  DoubleLinkedList.swift
//  ItsAllAboutDataStructures
//
//  Created by saket bhushan on 02/12/18.
//  Copyright © 2018 saket bhushan. All rights reserved.
//

import Foundation

class Node<T> {
    var next: Node<T>?
    var data: T?
    var previous: Node<T>?
    
    init(data: T) {
        self.data = data
    }
}


class DoubleLinkedList<T>: CustomStringConvertible {
    var head: Node<T>?
    var isEmpty: Bool {
        return self.head == nil
    }
    
    //MARK: Appending
    func append(value: T) {
        let data = Node<T>(data: value)
        if self.isEmpty {
            self.head = data
        } else {
            var current = self.head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = data
        }
    }
    
    func insertAt(value: T, index: Int) {
        let data = Node<T>(data: value)
        if self.isEmpty {
            self.head = data
        } else {
            var current = self.head
            for _ in stride(from: 0, to: index, by: 1) where current?.next != nil {
                current = current?.next
            }
            current?.next = data
        }
    }
    
    var description: String {
        var text = "[ "
        var current = self.head
        while current?.next != nil {
            text += "\(current?.data), "
            current = current?.next
            print(" looping ")
        }
        text += " ]"
        return text
    }
}

