class Deck
    def initialize
        @deck = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52].shuffle
    end

    # def shuffle_deck
    #     @deck.shuffle
    # end

    def draw_card
        @deck.first
        @deck.shift
    end
end

class Game
    def initialize
        @cards = Deck.new
        @hands = []
        @score = 0
    end

    # def start
    #     puts "Game has started"
    #     puts "Score is #{@score.to_s}"
    # end

    def play
        your_hand = @cards.draw_card
        my_hand = @cards.draw_card
        @hands = [your_hand, my_hand]
        puts "#{your_hand} VS #{my_hand}"
        if my_hand > your_hand
            @score = @score - 1
            puts "You Lose"
        else
            @score = @score + 1
            puts "You Win"
        end
        
    end

    def score_check
        @score
        puts "Score is #{@score.to_s}"
        
    end
end

playing = true

game = Game.new

while playing
    # game.start
    game.play
    game.score_check
    if game.score_check < -2
        playing = false
        puts "Score is below -2. Game has ended"
    end
end