# arr = [42, 89, 23, 1]

# def search_array(array, int)
#   int_found = false
#   count = 0
#   array.each do |arr_index|
#     if arr_index == int
#       int_found = true
#       return count
#     end  
#     count += 1  
#   end
#   if int_found == false
#     nil
#   end
# end 

# p search_array(arr, 89)

# p search_array(arr, 1)

# p search_array(arr, 24)

# def fib(int) 
#     if int == 0
#         return nil
#     elsif int == 1
#         return [0]
#     elsif int == 2
#         return [0,1]
#     end
#     int = int - 2
#     array = [0,1]
#           while int > 0
#               array << array[-1] + array[-2]
#               int -= 1
#           end
#           return array
# end

# p fib(100)[-1] == 218922995834555169026

def bubblesort ary, new_array
    i = 0
    if ary.length == 0
        return new_array
    else
        ary.each do |number|
            
            
            puts i
            next_number = ary[i+1]
            if next_number == nil
                p new_array
                p ary
                return bubblesort ary, new_array << ary.pop
            

            elsif number > ary[i+1]
                ary[i+1] = number
                ary[i] = next_number
            end
            i+=1


        end
    end
end

p bubblesort([0, 30, 50, 88, 3, 100, 20, 1 , 3,2], []) 
