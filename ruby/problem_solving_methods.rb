
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false									# we continue looping until we haven't made anymore swaps aka swapped = true 

    (n-1).times do |i| 
      if array[i] > array[i+1]  					# if number at index i is larger than the number preceding it, 
        array[i], array[i+1] = array[i+1], array[i] # then swap the numbers 
        swapped = true								# swapped = true is the termination condition so exit loop 
      end
    end

    break if not swapped							
  end

  puts array
end

def intSearch(target, array)
	arrayLen = array.length
	ctr = 0
	while ctr < arrayLen
		array.each do |nums|
			if nums == target
				puts "Found it!"
				puts ctr
			end
			ctr += 1
		end
	end
end
array = [12,4,2,99,3,76,0,1,22,74]
puts "Bubble Sorted Array"
bubble_sort(array)

puts "Enter an integer you would like to search for"
i = gets.chomp
i = i.to_i
intSearch(i,array)

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end
puts "Enter number of fib numbers to print:"
i = gets.chomp
i = i.to_i
ctr = 0
while ctr < i 
	puts fibonacci( ctr )
	ctr += 1
end 
	
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end
