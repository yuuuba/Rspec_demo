class Menu
  class Price
    PIG_BOBNE_RAMEN = 500
    BIG_PIG_BOBNE_RAMEN = 680
  end

  def initialize(menu_list = [])
  end

  # 他のクラスからの問い合わせに応じて、対応するメニューが有るか、あれば返す
  def find_menu_by(name)
    public_send(name) # String のname で自身のメソッドが動的に呼び出せる
  rescue NoMethodError
    [:nothing, 0]
  end

  def pig_bone_ramen
    [:pig_bone_ramen, Price::PIG_BOBNE_RAMEN]
  end
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

class TicketMachine
  attr_accessor :piece, :payment

  def initialize(piece, payment)
    @piece = 0
    @payment = 0
  end
  
  # 1. 券売機は注文 (メニュー名, 価格) を保持できる
  # 2. (Menu クラスとのやり取りをしつつ) 最終的に 支払額を提示できる
  # 3. ついでに 支払額と必要額が釣り合ってるか確認して、釣り銭があれば返す

  # def recieve_order(name, paying_price)
  #   @orders ||= []
  #   @orders << menu # Menu のインスタンス
  #   @paying_price << paying_price # 一時 預り金 (?)
  # end

  # (別メソッドで) 合計額を算出
  # orders.map { |menu| menu.price }.sum # 支払いに必要な額を計算

  #menuクラス単体で作るべき　チケットマシンに余計
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

