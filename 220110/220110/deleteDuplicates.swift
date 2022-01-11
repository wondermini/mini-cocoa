//
//  deleteDuplicates.swift
//  220110
//
//  Created by JUNGMIN KIM on 2022/01/10.
//

import Foundation


/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

func deleteDuplicates(head: ListNode?) -> ListNode? {
        var currentNode = head
        while currentNode?.next != nil {
            if currentNode!.val == currentNode!.next!.val {
                currentNode!.next = currentNode!.next!.next
            } else {
                currentNode = currentNode!.next
            }
        }

        return head
    }
