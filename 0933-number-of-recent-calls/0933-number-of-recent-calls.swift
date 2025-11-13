
class RecentCounter {

    var counters = [Int]()

    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        let range = [t - 3000, t]
        counters.append(t)
        
        while !counters.isEmpty && counters.first! < t - 3000 {
            counters.removeFirst()
        }
        
//        print(counters.count)
        return counters.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */