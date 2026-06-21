class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var count = 0
        for num in nums {
            count = num == 1 ? count + 1 : 0
            result = max(result, count)
        }
        return result
    }
}
