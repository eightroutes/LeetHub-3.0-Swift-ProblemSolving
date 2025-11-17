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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        return getLeaves(root1) == getLeaves(root2)
    }

    func getLeaves(_ root: TreeNode?) -> [Int] {
        guard let root else { return [] }

        var stack: [TreeNode] = [root]
        var result: [Int] = []

        while !stack.isEmpty {
            let node = stack.removeLast()

            if node.left == nil && node.right == nil {
                result.append(node.val)
            }

            if let right = node.right { stack.append(right) }
            if let left = node.left { stack.append(left) }
        }
        return result
    }
}