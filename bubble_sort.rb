# bubble_sort

def bubble_sort(arr)
  puts arr if arr.length <= 1
  n = arr.length - 1

  loop do
    swap = false
    n.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    break if swap == false
  end
  arr
end

arr = [4, 3, 78, 2, 0, 2]
p bubble_sort(arr)

def bubble_sort_by(arr)
  puts arr if arr.length <= 1
  n = arr.length - 1

  loop do
    swap = false
    n.times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = true
      end
    end
    break if swap == false
  end
  p arr
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
