#take a string of intergers and E's, take the strArr parameter being 
#passed which will be an array of integers ranging from 1...n and the 
#letter "E" and return the correct subset based on the following rules. 
#The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] 
#where the I's stand for integers and the E means take out the smallest 
#integer currently in the whole set. When finished, your program should return 
#that new set with integers separated by commas.


def OffLineMinimum(strArr)
	#input = array
  	#output = array
  temp_array = []
  final_array = []
  count = 0
  i = 0
  #loop through the array and push each index to a new array
  while i < strArr.length
    if strArr[i] != "E"
      temp_array << strArr[i].to_i
    elsif strArr[i] == "E"
      print "temp = #{temp_array}\n"
      temp_array = temp_array.sort()
      final_array << temp_array.shift.to_s
      #temp_array.slice!(0)
      print "temp_array = #{temp_array}\n"
      count += 1
      
    end
  #if index = "E' push the MIN index to the final array
  i += 1
  end
  puts final_array
  return final_array
      
end

OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"])