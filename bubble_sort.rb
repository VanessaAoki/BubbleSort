#bubble_sort

def bubble_sort(a)
  puts a if a.length <= 1
  n = a.length - 1

    loop do
      swap = false
      n.times do |i|
        if a[i] > a[i+1]
          a[i], a[i+1] = a[i+1], a[i]
          swap = true
        end
      end
      break if swap == false
    end
  a
end

a = [4, 3, 78, 2, 0, 2]
p bubble_sort(a)