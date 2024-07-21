# sorting/insertion_sort.mojo

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
