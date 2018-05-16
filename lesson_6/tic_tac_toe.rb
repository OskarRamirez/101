require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
CPU_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonal

def prompt(message)
  puts "==>#{message}"
end

def joinor(array, comma = ",", word = "or")
  final_element = array.last
  if array.size == 2
    array.join(" #{word} ")
  else
    shorter_array = array[0..-2]
    shorter_array.join(", ") + "#{comma} #{word} #{final_element}"
  end
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'cls'
  puts "You're an #{PLAYER_MARKER}, the computer is an #{CPU_MARKER}.  Go."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

# Instead of creating board = {1 => " ", 2 = " ", 3 => " "... }
# we can simply run a block that creates the hash that is our display_board
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd) # Doesn't modify the board
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def players_move!(brd) # Modifies the board
  square = ''
  loop do
    prompt("Choose a square #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i # Need to convert bc user input is initally string
    break if empty_squares(brd).include?(square)
    prompt 'That was not a valid choice. smh'
  end
  brd[square] = PLAYER_MARKER
end

def cpu_defense(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER
      brd.select {|key, val| square = key if val == " "
      return square}
    elsif brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      brd.select {|key, val| square = key if val == " "
      #square = brd[line[0]]
      return square}
    elsif
      brd[line[0]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      #square = brd[line[1]]
      brd.select {|key, val| square = key if val == " "
      return square}
    else
      nil
    end
  end
end

def cpu_move!(brd)
  if cpu_defense(brd) != nil
    square = cpu_defense(brd)
    brd[square] = CPU_MARKER
  else
  square = empty_squares(brd).sample # Don't need to convert, already integer
  brd[square] = CPU_MARKER
  end
end


def board_full(brd)
  empty_squares(brd) == []
end

def winner?(brd)
  !!detect_winner(brd) # bangbang turns return value into boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(CPU_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = []
cpu_wins = []
index = 1

loop do
  board = initialize_board

  loop do
    display_board(board)

    players_move!(board)
    break if winner?(board) || board_full(board) == true

    cpu_move!(board)
    break if winner?(board) || board_full(board) == true
  end

  display_board(board)

  if winner?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  if detect_winner(board) == "Player"
    puts "#{detect_winner(board)} wins game #{index}."
    player_wins << 1

  elsif detect_winner(board) == "Computer"
    puts "#{detect_winner(board)} wins game #{index}."
    cpu_wins << 1
  end

  prompt "ok this time you actually won. Let's go!" if player_wins.size == 5
  prompt "CPU won lololol" if cpu_wins.size == 5
  break if player_wins.size == 5 || cpu_wins.size == 5

  prompt 'Play again? (y/n)'
  response = gets.chomp.downcase
  break unless response.start_with?('y')
  puts "CPU wins: #{cpu_wins}"
  puts "Player wins: #{player_wins}"
  index+=1
end
