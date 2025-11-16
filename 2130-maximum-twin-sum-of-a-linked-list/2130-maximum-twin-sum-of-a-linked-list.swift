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
class Solution {
    func pairSum(_ head: ListNode?) -> Int {
        var values = [Int]()
        var current = head
        
        while current != nil {
            values.append(current!.val)
            current = current?.next
        }
        
        var start = 0, end = values.count-1
        var maxValue = 0
        while start < end {
            let twin = values[start] + values[end]
            maxValue = max(maxValue, twin)
            start += 1
            end -= 1
        }
        
        return maxValue
    }
}