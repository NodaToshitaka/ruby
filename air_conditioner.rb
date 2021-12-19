p "室温が設定温度まで変化する時間を求めます"
p "一行目に室温、二行目に設定温度、三行目に風量を入力してください"
p "風量は１が弱、2が中、3が強とし、それ以外は記入しないでください"

input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i
air_power = input_lines[2].to_i

tempreature_diff = (room - air_conditioner).abs

require_time = 0

if tempreature_diff < 5
  require_time = 15
elsif tempreature_diff <10
  require_time = 30
elsif tempreature_diff >= 10
  require_time = 60
end

if air_power == 1
  require_time
elsif air_power == 2
  require_time = require_time - 5
elsif air_power == 3
  require_time = require_time - 10
else
  p "風量の値は1～3にしてください"
  exit
end

p "かかる時間は…"
p require_time
