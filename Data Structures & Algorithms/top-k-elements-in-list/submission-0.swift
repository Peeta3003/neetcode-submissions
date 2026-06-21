class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var numMap: [Int: Int] = [:]

        for num in nums {
            numMap[num, default: 0] += 1
        }

        return numMap.sorted { $0.value > $1.value }.prefix(k).map { $0.key }

        return []
    }
}
