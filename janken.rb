class Janken
 def initialize(player,computer)
  @playerjanken = player
  @computerjanken = computer
 end

 def play
  puts "じゃんけん…"
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  @playerjanken = gets.to_i
  @computerjanken = rand(3)

  if @playerjanken == 3
    puts "じゃんけんをやめました"
    exit
  end

  if @playerjanken == 0 
   player_hand = "グー"
  elsif @playerjanken == 1
   player_hand = "チョキ"
  elsif @playerjanken == 2
   player_hand = "パー"
  end

  if @computerjanken == 0 
   computer_hand = "グー"
  elsif @computerjanken == 1
   computer_hand = "チョキ"
  elsif @computerjanken == 2
   computer_hand = "パー"
  end
  
  puts "ホイ"
  puts "----------"
  puts "あなた：#{player_hand}を出しました"
  puts "相手：#{computer_hand}を出しました"
  puts "----------"
 end
 
 def kekka
  if @playerjanken == @computerjanken
   return 0
  elsif ((@playerjanken == 0 && @computerjanken == 1) || (@playerjanken == 1 && @computerjanken == 2) || (@playerjanken == 2 && @computerjanken == 0))
   return 1 #playerの勝ち
  elsif ((@playerjanken == 0 && @computerjanken == 2) || (@playerjanken == 1 && @computerjanken == 0) || (@playerjanken == 2 && @computerjanken == 1))
   return 2 #computerの勝ち
  end
 end

end


class Acchimuite
 def initialize(player,computer)
  @playeracchi = player
  @computeracchi = computer
 end

 def play
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"

  @playeracchi = gets.to_i
  @computeracchi = rand(4)

  if @playeracchi == 0 
   player_yubi = "上"
  elsif @playeracchi == 1
   player_yubi = "下"
  elsif @playeracchi == 2
   player_yubi = "左"
  elsif @playeracchi == 3
   player_yubi = "右"
  end

  if @computeracchi == 0 
   computer_yubi = "上"
  elsif @computeracchi == 1
   computer_yubi = "下"
  elsif @computeracchi == 2
   computer_yubi = "左"
  elsif @computeracchi == 3
   computer_yubi = "右" 
  end
  
  puts "ホイ"
  puts "----------"
  puts "あなた：#{player_yubi}を出しました"
  puts "相手：#{computer_yubi}を出しました"
  puts "----------"
 end

 def kekka
  if @playeracchi == @computeracchi
   return 1 #決着がついた
  else
   return 0 #ジャンケンからやり直し
  end
 end

end



janken = Janken.new(0,0)
acchimuite = Acchimuite.new(0,0)


janken.play()
while janken.kekka == 0
 janken.play()
end

acchimuite.play()
while acchimuite.kekka == 0
 janken.play()
  while janken.kekka == 0
   janken.play()
  end
 acchimuite.play()
end

if (janken.kekka == 1 && acchimuite.kekka == 1)
  puts "あなたの勝ち"
  exit
elsif (janken.kekka == 2 && acchimuite.kekka == 1)
  puts "相手の勝ち"
  exit
end