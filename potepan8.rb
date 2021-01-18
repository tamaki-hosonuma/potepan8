
puts "じゃんけん・・・・"

def janken
    puts "[0]グー\n[1]チョキ\n[2]パー"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    
    jankens = ["グー", "チョキ","パー"]
    
    puts "
    ☆---------------
    あなたの手:#{jankens[player_hand]}, 
    相手の手:#{jankens[program_hand]}
    ---------------☆
    "
    
    if player_hand == program_hand
      puts "
   あいこで
   "
      return true
      
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      puts "
   あっち向いて・・・
   "
      puts "[0]上\n[1]下\n[2]左\n[3]右\n"
      
      player_look = gets.to_i
      program_look = rand(3)
      
      look = ["上","下","左","右"]
      
      puts "ホイ！"
      
      
      puts "
      ☆---------------
      あなた : #{look[player_look]}"
      puts "
      相手 : #{look[program_look]}
      ---------------☆"
      
      if player_look == program_look
        puts "
      おめでとう！あなたの勝ち！
        "
      else
        puts "
      おしい！！
        "
      end
    
    else
      puts "
    あっち向いて・・・
    "
      puts "[0]上\n[1]下\n[2]左\n[3]右\n"
      
      player_look = gets.to_i
      program_look = rand(3)
      
      look = ["上","下","左","右"]
      
      puts "ホイ！"
      
      
      puts "
      ☆---------------
      あなた : #{look[player_look]}"
      puts "
      相手 : #{look[program_look]}
      ---------------☆"
      
      if player_look == program_look
        puts "
      ざんねん、負けだよ
        "
      else
        puts "
      セーフ！！
         "
      end
      
    end
end

new_game = true

while new_game
  new_game = janken
end