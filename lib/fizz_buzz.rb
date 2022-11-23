# TODO: FizzBuzz の実装

class FizzBuzz
  def fizz?(n)
    n % 3 == 0
    n.modulo(3).zero?
  end

  #5で割り切れる場合”Buzz”
  def buzz?(n)
    n.modulo(5).zero?
  end

  #15 で割り切れる場合”Fizz Buzz”
  def fizzbuzz?(n)
    n.modulo(15).zero?
  end

  # TODO: fizz?(n) などのメソッドを活用して、今度は String として値を返すメソッドを定義する
  def judgment?(n) #質問: ?はメソッドが何をするかわかりやすくするため？
    (1..n).map do |num|
      if fizzbuzz?(num) == true
        "fizzbuzz"
      elsif buzz?(num) == true
        "buzz"
      elsif fizz?(num) == true
        "fizz"
      else
        num
      end
    end
  end
end

number = FizzBuzz.new
puts number.judgment?(3)