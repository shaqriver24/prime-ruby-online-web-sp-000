# Add  code here!
def prime?(int)
  return false if int < 2
  (2...int).each { |factor| return false if int % factor == 0 }
  true
end
