class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var rIndicies = [Int]()
        var dIndicies = [Int]()

        for (i, s) in senate.enumerated() {
            if s == "R" {
                rIndicies.append(i)
            } else {
                dIndicies.append(i)
            }
        }

        while !rIndicies.isEmpty && !dIndicies.isEmpty {
            let rIndex = rIndicies.removeFirst()
            let dIndex = dIndicies.removeFirst()
            if rIndex < dIndex {
                rIndicies.append(rIndex + senate.count)
            } else {
                dIndicies.append(dIndex + senate.count)
            }
        }

        return rIndicies.isEmpty ? "Dire" : "Radiant"
    }
}