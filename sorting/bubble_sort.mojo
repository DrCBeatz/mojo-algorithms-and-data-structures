# sorting/bubble_sort.mojo

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
