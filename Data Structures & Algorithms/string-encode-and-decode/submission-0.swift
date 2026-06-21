class Solution {

    func encode(_ strs: [String]) -> String {
        var result: String = ""
        for str in strs {
            result += "\(str.count)#\(str)"
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        var result: [String] = []
        let chars = Array(str)
        var i = 0

        while i < chars.count {
            var j = i
            while chars[j] != "#" {
                j += 1
            }
            let length = Int(String(chars[i..<j]))!

            let start = j + 1
            let end = start + length
            let str = String(chars[start..<end])
            result.append(str)

            i = end
        }

        return result
    }
}
