require './Player'
require './Question'
require './Interaction'

class Game
  
  # attr_reader id:, :score
  # attr_writer id:, :score

  def initialize(p1, p2)
    @interaction = Interaction.new
    @questionaire = Question.new
    @player1 = Player.new(p1)
    @player2 = Player.new(p2)
    @current_player = @player1
  end

  def show_scores
    @interaction.print_message("#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3")
  end

  def switch_player
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

  def start_new_game
    
    while @player1.is_alive? && @player2.is_alive?

      @interaction.print_message("--------- NEW TURN ----------")
      question = @questionaire.new_question
      @interaction.print_message("#{@current_player.name} : #{question}: ")
      r = @interaction.get_message().to_i

      if !@questionaire.check_answer(r)
        @current_player.lose_life
      end

      show_scores()
      @current_player == switch_player()

    end

    if @player1.is_alive?
      @interaction.print_message("#{@player1.name} is the winner")
    else 
      @interaction.print_message("#{@player2.name} is the winner")
    end
    @interaction.print_message("------------ GAME OVER -------------")
  end


end