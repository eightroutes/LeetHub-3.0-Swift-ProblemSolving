class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
            
        var count = 0
        var col = [Int]()
        
        for i in 0..<grid.count {
            let row = grid[i]
            if row == col { count += 1 }
            col = [Int]()
            for j in 0..<grid.count {
                col.append(grid[j][i])
            }
            print(col)
        }
        
        
        return count
    }
}