# sorting/quick_sort.mojo
# dijkstra 3-way partitioning implementation

fn quick_sort(my_nums: List[Int]) -> List[Int]:
    var nums = my_nums
    var list_length = len(nums)
    
    if list_length <= 1:
        return nums
    
    var pivot: Int = nums[list_length - 1]
    var larger = List[Int]()
    var equal = List[Int]()
    var smaller = List[Int]()

    for i in range(list_length):
        if nums[i] > pivot:
            larger.append(nums[i])
        elif nums[i] < pivot:
            smaller.append(nums[i])
        else:
            equal.append(nums[i])
    
    return quick_sort(smaller) + equal + quick_sort(larger)
