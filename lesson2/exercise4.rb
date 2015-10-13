# encoding: utf-8

# check stdin number is prime or not
def prime?
  begin
    print 'input digit: '
    n = gets.to_i
    fail StandardError if n < 3
  rescue StandardError
    puts 'error: digit must be less than 3.'
    retry
  end

  2.upto(Math.sqrt(n)) { |i| return false if n % i == 0 }

  true
end

puts prime?
