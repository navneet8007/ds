class QuickSort
  def partition(arr, low ,high) 
    pivot = arr[high]  
    i = low 
    for j in low...high 
      if arr[j] < pivot
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
        i = i+1
      end
    end
    temp = arr[i]
    arr[i] = arr[high]
    arr[high] = temp 
    return i
  end

  def sort(arr, low, high) 
    if (low < high) 
      pi = partition(arr, low, high)
      sort(arr, low, pi-1)
      sort(arr, pi+1, high)
    end
    arr
  end
end

arr = [10, 5, 80, 30, 100, 140, 90, 40, 50, 70, 72, 150, 63] 
n = arr.length
qs = QuickSort.new
arr = qs.sort(arr, 0, n-1)
puts "Quick Sorted Array ==>#{arr}"
