class Occurence_of_element

  def initialize(size)
    @array = Array.new(size)
  end

  def random_array
    n = @array.length
    random_array1 = Array.new(n)

    for i in 0...n
      random_array1[i]=rand(10)
      puts "#{random_array1[i]}"
    end

    return random_array1
  end

  def create_hash(rand_array)
    hash = Hash.new(0)
    rand_array.each { |num| hash[num] += 1 }
    return hash
  end
end





puts "Enter a size of array"
size = gets.chomp.to_i
puts size
array = Occurence_of_element.new(size)
var=array.random_array
ans=array.create_hash(var)
puts"#{ans}"
