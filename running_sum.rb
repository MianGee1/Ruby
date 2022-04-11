def running_sum(nums)
  n=nums.length
  array = Array.new(n)
  for i in 1...n
      nums[i]=nums[i-1]+nums[i]
  end
  return nums
end

nums = Array[1, 2, 3, 4,5]
ans = running_sum(nums)
puts "#{ans}"
