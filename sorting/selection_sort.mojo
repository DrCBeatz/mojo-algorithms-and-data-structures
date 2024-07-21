# sorting/selection_sort.mojo

fn selection_sort(my_nums: List[Int]) -> List[Int]:
    var nums = my_nums
    for i in range(len(nums) - 1):
        var min_index = i
        for j in range(i + 1, len(nums)):
            if nums[j] < nums[min_index]:
                min_index = j
        if min_index != i:
            var temp = nums[i]
            nums[i] = nums[min_index]
            nums[min_index] = temp
    return nums
