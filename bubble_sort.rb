arr = [4, 3, 78, 2, 0, 2]
ans = [0, 2, 2, 3, 4, 78]

def bubble(arr)
  for i in 0...arr.length
    for j in 0...arr.length - i - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

p bubble(arr) == ans
