class Interaction

  def print_message(msg)
    puts msg
  end

  def get_message
    print "> "
    r = gets.chomp
    return r
  end

end
