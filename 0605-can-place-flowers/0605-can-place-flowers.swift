class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 0
        var flowerbed = flowerbed
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                let isEmptyLeft = (i == 0) || (flowerbed[i-1] == 0)
                let isEmptyRight = (i == flowerbed.count-1) || (flowerbed[i+1] == 0)
                
                if isEmptyLeft && isEmptyRight {
                    flowerbed[i] = 1
                    count += 1
                    if count >= n {
                        return true
                    }
                }
            }
        }
        return count >= n
    }
}