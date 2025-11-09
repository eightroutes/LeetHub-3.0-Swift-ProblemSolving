class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var result = [Int]()
        for ast in asteroids {
            if ast > 0 {
                result.append(ast)
            } else {
                while !result.isEmpty
                        && result.last! > 0
                        && result.last! < abs(ast) {
                    result.removeLast()
                }
                
                if result.isEmpty {
                    result.append(ast)
                } else if result.last! < 0 {
                    result.append(ast)
                } else if result.last! == abs(ast) {
                    result.removeLast()
                }
            }
        }
        
        return result
    }
}