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
        // 1. slow/fast로 중간 찾기
        var slow = head, fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        // slow가 뒤쪽 절반의 시작점을 가리킴
        
        // 2. 뒤쪽 절반 뒤집기
        var prev: ListNode? = nil
        var current = slow
        
        while current != nil {
            let nextNode = current?.next
            current?.next = prev
            prev = current
            current = nextNode
        }
        // 이제 prev가 뒤집힌 뒤쪽 절반의 head
        
        // 3. 앞쪽과 뒤쪽 동시 순회화며 최댓값 찾기
        var front = head, back = prev
        var maxSum = 0
        
        while back != nil {
            let twinSum = front!.val + back!.val
            maxSum = max(maxSum, twinSum)
            front = front?.next
            back = back?.next
        }
        return maxSum
    }
}