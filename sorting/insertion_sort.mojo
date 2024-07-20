# sorting/insertion_sort.mojo

from testing import assert_equal

fn insertion_sort(my_nums: List[Int]) -> List[Int]: 
    var nums: List[Int] = my_nums
    
    for i in range(1, len(nums)): 
        var key: Int = nums[i] 
        var j: Int  = i - 1 
      
        while j >= 0 and key < nums[j]: 
            nums[j+1] = nums[j] 
            j -= 1 
        nums[j+1] = key 
    return nums

def main():
    # Test list
    var my_list = List[Int](5, 4, 3, 2, 1)
    var result = insertion_sort(my_list)
    
    # Check if list is sorted in ascending order
    for i in range(len(result)): 
        assert_equal(result[i], i + 1)
    
    print("Tests passed!")
