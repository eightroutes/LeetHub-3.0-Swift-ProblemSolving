class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
    
        var dict = [[Int]:Int]()
        var count = 0
        
        for row in grid {
            dict[row, default: 0] += 1
        }
        
        for i in 0..<grid.count {
            let col = grid.map { $0[i] }
            if let dict = dict[col] {
                count += dict
            }
        }
        return count
    }
}