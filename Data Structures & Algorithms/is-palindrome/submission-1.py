class Solution:
    def isPalindrome(self, s: str) -> bool:
        chars = list(s.lower())
        left = 0
        right = len(chars) - 1

        while left < right:
            while left < right and not chars[left].isalnum():
                left += 1
            while left < right and not chars[right].isalnum():
                right -= 1

            if chars[left] != chars[right]:
                return False

            left += 1
            right -= 1

        return True