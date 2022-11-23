#卵自動販売機の実装

# 代金は全て500円。500円玉しか使えない。
# 500円入れる、500円以上の代金が投入されればボタンが押せる
# ドアが開く、中身がなくなる、ドアが閉まる
# 既に売れている番号を押してしまっても購入できないようにする

class EggSaleMachine  
  #お金を受け取ってインスタンス変数に保持する
  def initialize(n)
    door(:close)
    @set_money = n.to_i
    @money = 0
  end

  def money_check(n)
    n == 500
  end

  include Button

  def buy_check
    if @set_money == 500
      include Door(open)
    else
      false
    end
  end

end

guest = EggSaleMachine.new(500)
guest.money_check
guest.buy_check
guest.open_door
guest.door(:close)