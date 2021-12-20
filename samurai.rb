puts "いざ、尋常に…"
puts "勝負!!\n"
def syoubu
  puts "あなたが繰り出す手は\n先手必勝!、[0]先の先\n動きを見極め打つ![1]先\n打ってこい返してやる![2]後の先\n"

  player_do = gets.to_i
  program_do = rand(3)

  ki = ["先の先","先","後の先"]
  puts "あなた「#{ki[player_do]}!」,相手「#{ki[program_do]}!」\n"
  
  if player_do == program_do
    puts "相打ち!\n仕切り直して…"
    puts "----------------------------------"
    return true
  elsif (player_do == 0 && program_do == 1)||(player_do == 1 && program_do == 2)||(player_do == 2 && program_do == 0)
    puts "勝利!\n武の道は無常である"
    return false
  else
    puts "敗北!\nただ土へと帰るのみ"
    return false
  end
end

next_game = true

while next_game
  next_game = syoubu
end