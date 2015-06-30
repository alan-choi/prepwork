def MeanMode(arr)
  mode = 0
  mean = (arr.inject(0){|sum, a| sum += a})/(arr.length)
  max_count = 0
  counter = 0
  
  i = 0
  while i < arr.length
    k = i+1
    while k < arr.length
      k += 1
      if arr[i] == arr[k]
        counter += 1
      end
    end
    if counter > max_count
      max_count = counter
      mode = arr[i]
    end
    i+= 1
  end
  puts mean
  puts mode
  if mode == mean
    return 1
  else
    return 0
  end
         
end

MeanMode([4,4,4,2,6])