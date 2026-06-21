class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output: [Int] = Array(repeating: 1, count: nums.count)

        for i in 0..<output.count {
            for j in 0..<nums.count {
                if j != i {
                    output[i] *= nums[j]
                }
            }
        }

        return output
    }
}
