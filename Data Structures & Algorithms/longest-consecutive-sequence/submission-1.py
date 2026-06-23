class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        numSet = set(nums)
        longest =  0

        for num in numSet:
            if num - 1 in numSet:
                continue
            
            current = num
            count = 0
            while current in numSet:
                count += 1
                current += 1

            longest = count if count > longest else longest

        return longest