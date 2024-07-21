# sorting/merge_sort.mojo

fn merge_sort(my_nums: List[Int]) -> List[Int]:
    var nums = my_nums

    if len(nums) > 1:
        var mid: Int = len(nums) // 2
        var left = List[Int](nums[:mid])
        var right = List[Int](nums[mid:])
    
        var sorted_left = List[Int](merge_sort(left))
        var sorted_right = List[Int](merge_sort(right))

        var i = 0
        var j = 0
        var k = 0

        while i < len(sorted_left) and j < len(sorted_right):
            if sorted_left[i] < sorted_right[j]:
                nums[k] = sorted_left[i]
                i += 1
            else:
                nums[k] = sorted_right[j]
                j += 1
            k += 1
        
        while i < len(sorted_left):
            nums[k] = sorted_left[i]
            i += 1
            k += 1
        
        while j < len(sorted_right):
            nums[k] = sorted_right[j]
            j += 1
            k += 1

    return nums
