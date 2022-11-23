module Button
  # 電源ON
  def button( push )
    puts "ボタンを押しました" if push.to_sym == :push
  end
end