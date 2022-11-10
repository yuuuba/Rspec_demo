class TicketMachine
  attr_accessor :piece, :payment

  def initialize(piece, payment)
    @piece = 0
    @payment = 0
  end
  
  def menu
  #豚骨ラーメンの券 500円
    pig_bone_ramen = 500
  #豚骨ラーメン大盛りの券 680円
    big_pig_bone_ramen = 680
  #替え玉の券 100円
    substitute = 100
  #ビールの券　500円
    beer = 500
  #コーラの券　280円
    coke = 280
  end

  def up_count(piece) #注文数を増やす
    @piece + piece
  end
  
  def down_count(piece) #注文数を減らす
    @piece - piece
  end
  
  def keep_order #注文の保存

  end

  def check #会計
  end

  def pay
  end
end

