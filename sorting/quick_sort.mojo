# sorting/quick_sort.mojo
# dijkstra 3-way partitioning implementation

from testing import assert_equal

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

def main():
    # Test list
    var my_list = List[Int](5, 4, 3, 2, 1)
    var result = quick_sort(my_list)
    
    # Check if list is sorted in ascending order
    for i in range(len(result)): 
        assert_equal(result[i], i + 1)
    
    print("Tests passed!")
