# searching/binary_search.mojo

fn binary_search(nums: List[Int], target: Int) -> Int:  
    var l = 0  
    var r = len(nums) - 1  
    while l <= r:  
      var mid = (l + r) // 2  
      if target > nums[mid]:  
        l = mid + 1  
      elif target < nums[mid]:  
        r = mid - 1  
      else:  
        return mid  
    return -1
