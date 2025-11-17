/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func maxLevelSum(_ root: TreeNode?) -> Int {
        guard let root else { return 0 }
    
        var queue: [TreeNode] = [root]
        var maxSum = root.val
        var result = 1
        var level = 1
        
        while !queue.isEmpty {
            let levelSize = queue.count
            var currentSum = 0

            for _ in 0..<levelSize {
                let node = queue.removeFirst()
                
                currentSum += node.val
                
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right) }
            }
            if currentSum > maxSum {
                result = level
                maxSum = currentSum
            }
            level += 1
        }
        return result
    }
}