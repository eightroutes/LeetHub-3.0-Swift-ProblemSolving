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
    func goodNodes(_ root: TreeNode?) -> Int {
        var goodCount = 1

        if root?.left == nil && root?.right == nil {
            return goodCount
        }

        return findGoodNodes(root!, root!.val)
    }

    func findGoodNodes(_ node: TreeNode?, _ maxSoFar: Int) -> Int {
        guard let node else { return 0 }

        var count = 0
        if node.val >= maxSoFar {
            count = 1
        }

        let newMax = max(maxSoFar, node.val)

        count += findGoodNodes(node.left, newMax)
        count += findGoodNodes(node.right, newMax)

        return count
    }
}