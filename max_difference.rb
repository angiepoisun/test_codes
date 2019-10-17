class maxDifference
  def maxDifference(arr)
    return -1 if(arr.nil? || arr.length < 2 )
    # arr.reject! { |x| x.nil? }
    min_value = arr[0]
    max_diff = -1
    i = 1
    until arr[i].nil? || !arr[i].is_a?(Integer) do
      max_diff = arr[i] - min_value if max_diff < (arr[i] - min_value) && arr[i] > min_value
      min_value = arr[i] if arr[i] < min_value
      i += 1
    end
    return max_diff
  end
end
