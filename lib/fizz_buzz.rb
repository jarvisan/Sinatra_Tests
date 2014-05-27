require 'json'

class FizzBuzz
  def initialize max
    @max = max.to_i
  end

  def fizzbuzz
    (1..@max).map{ |n| transform(n) }
  end

  def transform(n)
    if (n % 3 == 0 && n % 5 == 0)
      "FizzBuzz"
    elsif (n % 3 == 0)
      "Fizz"
    elsif (n % 5 == 0)
      "Buzz"
    else
      n  
    end
  end
end
