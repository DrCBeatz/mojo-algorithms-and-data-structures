# tests/test_selection_sort.mojo

from sorting.selection_sort import selection_sort
from testing import assert_equal

def main():
    var test_list = List[Int](5, 4, 3, 2, 1)
    var result = selection_sort(test_list)
    
    # check if test_list is sorted in ascending order
    for i in range(len(test_list)):
        assert_equal(result[i], i + 1)
    
    print("Tests passed!")