class Deck
  attr_reader :full_deck

  def initialize
    @rank = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
    @suit = %w{Spades Hearts Diamonds Clubs}

    @full_deck = @rank.product(@suit)
     
  end

  def deal(player)
    player.receive_cards(@full_deck.pop(2))
  end

  def hit(player)
    player.receive_cards(@full_deck.pop)
  end

  def to_s
    @full_deck
    
  end

end


