require 'benchmark'
# Add  code here!
def prime?(int)
  return false if int < 2
  (2...int).each { |num| return false if int % num == 0 }
  true
end


Benchmark.bm(10) do |x|
  x.report('Each: ') {prime?(41)}
end
