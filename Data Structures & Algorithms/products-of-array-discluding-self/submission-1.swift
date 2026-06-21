class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var output: [Int] = Array(repeating: 1, count: n)

        var prefix = 1
        for i in 0..<n {
            output[i] = prefix
            prefix *= nums[i]
        }

        var suffix = 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            output[i] *= suffix
            suffix *= nums[i]
        }

        return output
    }
}
