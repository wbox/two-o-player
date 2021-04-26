require './Game'

interaction = Interaction.new

interaction.print_message("What is the player1 name: ")
player1 = interaction.get_message

interaction.print_message("What is the player2 name: ")
player2 = interaction.get_message

game = Game.new(player1,player2)
game.start_new_game