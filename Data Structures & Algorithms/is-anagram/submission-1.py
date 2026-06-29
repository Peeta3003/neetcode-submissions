class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        
        char_map = {}

        for a, b in zip(s, t):
            char_map[a] = char_map.get(a, 0) + 1
            char_map[b] = char_map.get(b, 0) - 1
        
        return all(v == 0 for v in char_map.values())