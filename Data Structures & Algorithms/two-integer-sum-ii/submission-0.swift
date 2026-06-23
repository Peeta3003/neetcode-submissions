class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1

        while left < right {
            let currentSum = numbers[left] + numbers[right]
            if currentSum == target {
                return [left + 1, right + 1]
            } else if currentSum < target {
                left += 1
            } else {
                right -= 1
            }
        }

        return []
    }
}
