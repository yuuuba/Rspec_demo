# TODO: FizzBuzz の実装

class FizzBuzz
  def fizz?(n)
    # n % 3 == 0
    n.modulo(3).zero?
  end  
  #5で割り切れる場合”Buzz”
  def buzz?(n)
    n.modulo(5).zero?
  end
  #15 で割り切れる場合”Fizz Buzz”

  # TODO: fizz?(n) などのメソッドを活用して、今度は String として値を返すメソッドを定義する
end