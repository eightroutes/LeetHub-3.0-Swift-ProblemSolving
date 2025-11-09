class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
            
        var count = 0
        var rows = [[Int]]()
        var cols = Array(repeating: [Int](), count: grid.count)
        
        for i in 0..<grid.count {
            let row = grid[i]
    //        print(row)
            for j in 0..<grid.count {
                cols[i].append(grid[j][i])
            }
            rows.append(row)
        }
        
    //    print(rows, cols)
        
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                if rows[i] == cols[j] {
                    count += 1
                }
            }
        }
        
        
        return count
    }
}