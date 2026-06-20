class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var charMap: [Character: Int] = [:]

        for (a, b) in zip(s, t) {
            charMap[a, default: 0] += 1
            charMap[b, default: 0] -= 1
        }

        return charMap.values.allSatisfy { $0 == 0 }
    }
}
