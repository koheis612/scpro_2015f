#encoding: utf-8

# check stdin number is prime or not
def is_prime
  # get stdin number
  begin
    print 'input digit: '
    n = STDIN.gets.chomp('\n').to_i

    # prime decision
    raise Exception if n < 3
  rescue Exception
    'error: digit must be less than 3.'
    retry
  end

  2.upto(Math.sqrt(n)) do |i|
    return false if n % i == 0
  end

  return true
end

puts is_prime