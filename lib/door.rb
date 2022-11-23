module Door
  # 電源ON
  def door( openclose )
    puts "ドアを開けました" if openclose.to_sym == :open
    puts "ドアを閉めました" if openclose.to_sym == :close
  end
end