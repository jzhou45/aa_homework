arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'] #=> "fiiiissshhhhhh"

def sluggish_octopus(arr) #time = O(n^2) space = O(1)
    (0...arr.length - 1).each do |idx1|
        (1...arr.length - 1).each do |idx2|
            if idx2 > idx1
                if arr[idx1] > arr [idx2]
                    arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
                end
            end
        end
    end
    arr.last
end

# p sluggish_octopus(arr)

def dominant_octopus(arr) # time = O(n log(n)) space = O(n)
    merge_sort(arr).last
end

def merge_sort(arr)
    return arr if arr.length < 2
    middle_idx = arr.length / 2
    left = merge_sort(arr.take(middle_idx))
    right = merge_sort(arr.drop(middle_idx))
    merge(left, right)
end

def merge(left, right)
    sorted_arr = []
    until left.empty? || right.empty?
        if left.first.length < right.first.length
            sorted_arr << left.shift
        else
            sorted_arr << right.shift
        end
    end
    sorted_arr + left + right
end

# p dominant_octopus(arr)

def clever_octopus(arr) # time = O(n) space = O(1)
    longest_fish = arr.first
    (1...arr.length).each do |idx| 
        longest_fish = arr[idx] if arr[idx].length > arr.first.length
    end
    longest_fish
end

# p clever_octopus(arr)
