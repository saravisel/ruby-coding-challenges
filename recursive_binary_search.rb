require "rspec"

array = [2, 3, 4, 5, 6, 7, 9 , 10]
target = 7

describe "binary_search" do
    it "can take a string array and outputs the correct values" do
      expect(binary_search(array, target)).to eq (5)
    end
end

def binary_search_rec(array, target, low, high)

    return -1 if (low > high)


    mid = low + ((high - low) / 2).floor

    if (target == array[mid])
        return mid
    elsif (target < array[mid])
        return binary_search_rec(array, target, low, mid - 1)
    elsif (target > array[mid] )
        return binary_search_rec(array, target, mid + 1, high)
    end


end

def binary_search(array, target)
    return binary_search_rec(array, target, 0, array.size - 1)
end




