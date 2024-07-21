# tests/test_binary_search.mojo

from searching.binary_search import binary_search
from testing import assert_equal

def main():
    var test_list = List[Int](1, 2, 3, 4, 5)

    # Test value found in test_list
    var result = binary_search(test_list, 3)
    assert_equal(result, 2)

    # Test value not found in test_list
    result = binary_search(test_list, 6)
    assert_equal(result, -1)

    print("Tests passed!")
