//
//  mergeTwoSortedLists.swift
//  211226
//
//  Created by JUNGMIN KIM on 2021/12/26.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil { return l2 }
    if l2 == nil { return l1 }
    var result: ListNode?

    if l1!.val <= l2!.val {
        result = l1
        result!.next = mergeTwoLists(l1!.next, l2)
    }
    else {
        result = l2
        result!.next = mergeTwoLists(l1, l2!.next)
    }
    return result
}
