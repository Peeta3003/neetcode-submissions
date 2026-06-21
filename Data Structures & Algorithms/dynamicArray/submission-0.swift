class DynamicArray {
    private var storage: UnsafeMutablePointer<Int>
    private var capacity: Int
    private(set) var count: Int

    init(_ capacity: Int) {
        self.capacity = capacity
        count = 0
        storage = UnsafeMutablePointer<Int>.allocate(capacity: capacity)
    }

    func get(_ i: Int) -> Int {
        return storage[i]
    }

    func set(_ i: Int, _ n: Int) {
        storage[i] = n
    }

    func pushback(_ n: Int) {
        if count == capacity {
            resize()
        }
        storage[count] = n
        count += 1
    }

    func popback() -> Int {
        count -= 1
        return storage[count]        
    }

    private func resize() {
        let newCapacity = capacity * 2
        let newStorage = UnsafeMutablePointer<Int>.allocate(capacity: newCapacity)
        newStorage.moveInitialize(from: storage, count: count)
        storage.deallocate()
        storage = newStorage
        capacity = newCapacity
    }

    func getSize() -> Int {
        return count
    }

    func getCapacity() -> Int {
        return capacity
    }
}
