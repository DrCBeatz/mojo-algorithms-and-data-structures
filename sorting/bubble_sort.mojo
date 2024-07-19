# sorting/bubble_sort.mojo

from testing import assert_equal

fn bubble_sort(my_nums: List[Int]) -> List[Int]:
    # Create a mutable copy of the list to avoid modifying the original list
    var nums = my_nums
    for i in range(len(nums) - 1):
        for j in range(len(nums) - i - 1):
            if nums[j+1] < nums[j]:
                # Swap elements
                var temp = nums[j]
                nums[j] = nums[j+1]
                nums[j+1] = temp
    return nums

def main():
    # Test list
    var my_list = List[Int](5, 4, 3, 2, 1)
    var result = bubble_sort(my_list)
    
    # Check if the list is sorted in ascending order
    for i in range(len(my_list)):
        assert_equal(result[i], i + 1)
    
    print("Tests passed!")

main()
