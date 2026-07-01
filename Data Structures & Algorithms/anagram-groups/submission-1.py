class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        map: dict[str, list[str]] = {}
        for s in strs:
            key = ''.join(sorted(s))
            map.setdefault(key, []).append(s)
        return list(map.values())
            