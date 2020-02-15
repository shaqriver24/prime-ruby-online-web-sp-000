require 'benchmark'
# Add  code here!
def prime?(int)
  return false if int < 2
  (2...int).each { |num| return false if int % num == 0 }
  true
end

def another_prime?(num)
  if num < 2
    return false
  end

  (2...num).each do |num1|
    if num % num1 == 0
      return false
    end
  end
  return true
end

Benchmark.bm(10) do |x|
  x.report('Each: ') {prime?(41)}
end
