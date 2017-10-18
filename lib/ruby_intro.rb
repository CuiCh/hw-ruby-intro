# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # 空集合则返回默认值0
  sum = 0
  arr.each do |i|
    sum+=i
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # 数组为空则返回0
  if arr.size == 0
    return 0
  end
  
  if arr.size == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # 空列表或单元素列表直接返回false
  return false if arr.size==0 or arr.size==1
  # 双层循环来检查某两元素之和为n
  for i in 0..(arr.length-1)
    for j in (i+1)..(arr.length-1)
      if arr[i]+arr[j]==n
        return true
      end
    end
  end
  return false
  
  # for i in 0..(arr.lenght-1)
  #   for j in (i+1)..(arr.lenght-1)
  #     if arr[i]+arr[j] == n
  #       return true
  #     end
  #   end
  # end
  # return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # 如果不是字符串，返回false
  if /^[a-zA-Z]/ !~s
    return false
  end
  
  # 以元音字母开头则返回false
  if /^[aeiou]/i =~ s
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s == '0'
    return true
  end
  
  # 检测是否为二进制字符串，即为01组成的字符串
  if /^[10]*$/ !~ s
    return false
  end
  # 最后两位为00则可以被4整除
  return /^[01]*00$/ =~ s
end

# Part 3
class BookInStock
  # 检查参数的输入
  def initialize(isbn, price)
    raise ArgumentError if isbn==""
    raise ArgumentError if price<=0
    @isbn = isbn
    @price = price
  end
  
  # 作为属性来读写
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$" + format('%.2f',@price)
  end
  
  
    
end

