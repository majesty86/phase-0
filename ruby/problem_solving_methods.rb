# arr = [42, 89, 23, 1]

def search_array(array, int)
  int_found = false
  count = 0
  array.each do |arr_index|
    if arr_index == int
      int_found = true
      return count
    end  
    count += 1  
  end
  if int_found == false
    nil
  end
end 

p search_array(arr, 89)

p search_array(arr, 1)

p search_array(arr, 24)

# 

def fib(int) 
    if int == 0
        array = []
    elsif int == 1
        array [0]
    elsif int == 2
        array [0,1]
    end
    int = int -2
    array = [0,1]
          while int >  0
              array << array[-1] + array[-2]
              int -= 1
          end
          puts array
          return array
end

p fib(100)[-1] == 218922995834555169026


Bubblesort method


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


INSERTION-SORT ALGORITHM

Create empty result array called new_array

Using all integers from first_array (one at a time) loop for each integer in new_array

If new_array is empty, put integer from first_array inside new_array.
  After first loop, array will have '4' inside it.
  After second loop, '12'
  After third loop, '1'
  After fourth loop, '9'
  After fifth loop, '30'
  After final loop, '2'
    For each of these loops, check integer against other integers to see if they less than or greater than.
      If less than integer, put before.
      If greater than integer, put after.


def insertsort(array)
    new_array= []
    while array.length > 0
        if new_array.length == 0
            new_array << array.shift
        else
            new_array.each_with_index.map do |element, index|
              puts index
              p new_array
              p array
              if array == []
                return new_array
                elsif array[0] >= element && index==new_array.length - 1
                  p "pop"
                    new_array << array.shift
                elsif array[0] < element && array[0] >= new_array[index-1]
                 
                        new_array.insert(index, array.shift)
                
                end
            end
        end
    end
    return new_array
end
p insertsort([0, 30, 50, 88, 3, 100, 20, 1 , 3,2])
