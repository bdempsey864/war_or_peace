require 'rspec'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)
    cards = [card1, card2, card3, card4, card5, card6, card7, card8]
    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])
    player1 = Player.new('Megan', deck1)
    player2 = Player.new('Aurora', deck2)
    turn = Turn.new(player1, player2)

    expect(turn).to be_an_instance_of(Turn)
  end

  # it "basic turn" do
  #   card1 = Card.new(:heart, 'Jack', 11)
  #   card2 = Card.new(:heart, '10', 10)
  #   card3 = Card.new(:heart, '9', 9)
  #   card4 = Card.new(:diamond, 'Jack', 11)
  #   card5 = Card.new(:heart, '8', 8)
  #   card6 = Card.new(:diamond, 'Queen', 12)
  #   card7 = Card.new(:heart, '3', 3)
  #   card8 = Card.new(:diamond, '2', 2)
  #   cards = [card1, card2, card3, card4, card5, card6, card7, card8]
  #   deck1 = Deck.new([card1, card2, card5, card8])
  #   deck2 = Deck.new([card3, card4, card6, card7])
  #   player1 = Player.new('Megan', deck1)
  #   player2 = Player.new('Aurora', deck2)
  #   turn = Turn.new(player1, player2)
  #   type = Turn.new(basic)
  #
  #   expect(turn.player1).to eq('Megan', deck1)
  #   expect(turn.player2).to eq('Aurora', deck2)
  #   expect(turn.spoils_of_war).to eq([])
  #   expect(turn.type).to eq(basic)
  #
  # end
end