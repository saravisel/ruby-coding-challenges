require "rspec"
array = [2, 3, 4, 5, 6, 7, 9 , 10]
target = 7

def binary_search(array, target)
    low = 0
    high = array.size - 1
    

    while( low <= high )
        mid = low + ((high - low) / 2).floor

        if (target == array[mid])
            return mid
        elsif (target < array[mid])
            high = mid - 1
        elsif (target > array[mid] )
            low = mid + 1
        end
    end

    return -1


end

describe "binary_search" do
    it "can take a string array and outputs the correct values" do
      expect(binary_search(array, target)).to eq (5)
    end
end
