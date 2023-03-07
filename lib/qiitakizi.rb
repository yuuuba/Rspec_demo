class User
  def initialize(name,age)
    @name = name
    @age = age
  end

  def greet
    if @age <= 12
      puts 'ぼくはたろうだよ。'
    else @age >= 13
      puts '僕はたろうです。'
    end
  end
end

a = User.new(name:"たろう", age: 14)
a.greet