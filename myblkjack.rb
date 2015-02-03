require 'pry'
# entire deck
class Deck
  attr_reader :cards, :ace_values

  def initialize
    @cards = []
    @suits = ['♣', '♥', '♦', '♠']
    @values = [2, 3, 4, 5, 6, 7, 8, 9, 10]
    @ace = :A
    @ace_values =[1, 11]
    @face_hash = {
      J: 10,
      Q: 10,
      K: 10
    }
  end

  def deck_shuffle
    @suits.each do|suit|
      @values.each do|value|
        @cards.push(Card.new(suit, value))
      end
      @face_hash.each do|face, num|
        @cards.push(Card.new(suit, face))
      end
      @cards.push(Card.new(suit, @ace))
    end
    @cards.shuffle!
  end

  def self.face
    face_hash
  end

  def self.ace
    ace
  end

end

class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def face?
    hash = Deck.face
    hash.has_key?(self.value)
  end

  def ace?
    ace = Deck.ace
    ace == self.value
  end
end


class Hand
end


class Game
  deck = Deck.new
  deck = deck.deck_shuffle

end

class Player < Hand

end

class Dealer < Hand

end


#puts deck
