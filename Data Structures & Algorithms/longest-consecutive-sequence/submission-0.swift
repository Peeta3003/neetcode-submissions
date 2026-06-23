class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var numSet = Set(nums)
        var longest = 0

        for num in numSet {
            if numSet.contains(num - 1) {
                continue
            }

            var current = num
            var count = 0
            while numSet.contains(current) {
                count += 1
                current += 1
            }
            if count > longest { longest = count }

        }

        return longest
    }
}
