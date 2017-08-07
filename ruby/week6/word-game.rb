class Game
	attr_reader :guesses, :guessedRight
	def initialize(players, word)
		@players = players
		@word = word
		@guesses = []
		@guessedRight = 0
	end

	def printCurrState
		wordLen = @word.length
		temp = ""
		wordLen.times do |i|
			if @guesses[i] == nil
				temp += "_ "
			else
				temp += "#{@guesses[i]} "
			end
		end
		puts temp
	end

	def check_guess(guess)
		wordLen = @word.length
		wordLen.times do |i|
			if @word[i] == guess
				@guesses[i] = guess
				@guessedRight += 1
			end
		end
	end

end


def intro
	flag = true
	currPlayer = 1
	puts "************ Word Guessing Game ***************"
	puts "2 Players Required -------------------------"
end

intro
flag = true
currPlayer = 1
while true 
	puts "Player #{currPlayer}: Enter a Word"
	word = gets.chomp
	game = Game.new(currPlayer, word) 
	game.printCurrState
	currPlayer = 2
	guessCount = word.length + 1
	won = false
	while guessCount > 0
		puts "Player #{currPlayer}: Guess a Letter"
		puts "You have #{guessCount} guesses left"
		guess = gets.chomp
		game.check_guess(guess)
		game.printCurrState
		if game.guessedRight == word.length
			guessCount = 0
			won = true
		end
		guessCount -= 1
	end
	if won == true
		puts "------------Congradulations Player #{currPlayer}, you won!------------"
	else 
		puts "You lose D:"
	end
	if currPlayer == 1
		currPlayer = 2
	else
		currPlayer = 1
	end
end




