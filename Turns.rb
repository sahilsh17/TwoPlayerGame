class Turns
  attr_accessor :player
  def initialize
    @player1= Game.new("Player1", 3)
    @player2 = Game.new("Player2", 3)
    @current_player = @player1
  end
  
  def turn_loop
    
    while @current_player.lives > 0
      n1 = rand(1..20)
      n2 = rand(1..20)
      puts "----NEW TURN----"
      puts "#{@current_player.player}: what does #{n1} and #{n2} equals"
      number = gets.chomp

      if number.to_i == n1+n2
        puts "YES! You are correct"
        self.changePlayers
      else
        puts "SERIOUSLY! NO!"
        @current_player.lives -= 1
        self.changePlayers
        
      end
     
      if @player1.lives == 0
        puts "---GAME OVER---"
        puts "Player2 wins with a score of #{@player2.lives}/3" 
        break
      elsif @player2.lives == 0
        puts "---GAME OVER---"
        puts "Player1 wins with a score of #{@player1.lives}/3"
        break
      end   
      
    end 

  end
  def changePlayers
    if @current_player.player == "Player1"
      puts "P1: #{@player1.lives}/3 P2: #{@player2.lives}/3"  
      @current_player = @player2
      
    else
      puts "P1: #{@player1.lives}/3 P2: #{@player2.lives}/3"  
      @current_player = @player1
    end
  end
end