# binary_search.mojo

from testing import assert_equal

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

def main():
    var test_list = List[Int](1, 2, 3, 4, 5)

    # test value found in test_list
    result = binary_search(test_list, 3)
    assert_equal(result, 2)

    # test value not found in test_list
    result = binary_search(test_list, 6)
    assert_equal(result, -1)

    print("Tests passed!")