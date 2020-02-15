require 'benchmark'
# Add  code here!
def prime?(num)
  return false if num < 2
  (2...num).each { |num1| return false if num % num1 == 0 }
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
  x.report('Prime: ') { prime?(97) }
  x.report('Another prime:') { another_prime?(97) }
end
