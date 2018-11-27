require_relative 'deck'
require_relative 'hand'
require_relative 'card'

class Blackjack

  deck = Deck.new

  player_hand = Hand.new(deck.deal(2))
  dealer_hand = Hand.new(deck.deal(2))

  puts "\nYour cards: " + player_hand.cards[0].rank.to_s + player_hand.cards[0].suit.to_s + ", " + player_hand.cards[1].rank.to_s + player_hand.cards[1].suit.to_s
  puts "Dealer's showing: " +
        dealer_hand.cards[0].rank.to_s +
        dealer_hand.cards[0].suit.to_s

  bust = false
  blackjack = false
  hit_or_stay = ""

  while hit_or_stay != "stay" &&
        bust == false &&
        blackjack == false do

    if player_hand.calculate_hand == 21
      puts "\nBlackjack!"
      blackjack = true

    else
      puts "\nSCORE: #{player_hand.calculate_hand}"
      puts "\nHit or stay?"
      hit_or_stay = gets.chomp.downcase

      if hit_or_stay == "hit"
        player_hand.cards << deck.deal(1)[0]

        puts "\nYou drew: #{player_hand.cards[-1].rank.to_s}#{player_hand.cards[-1].suit.to_s}"
        puts "SCORE: #{player_hand.calculate_hand}\n"

          if player_hand.calculate_hand > 21
            bust = true
            puts "\nBust!"

          elsif player_hand.calculate_hand == 21 &&
                player_hand.cards.length == 2
            puts "\nBlackjack!"
            blackjack = true
          end

      elsif hit_or_stay != "stay"
        puts "\nPardon me?\n"
      end

    end
  end

  if blackjack == false && hit_or_stay == "stay"
    puts "\nFINAL SCORE: #{player_hand.calculate_hand}"
  end

  while dealer_hand.calculate_hand < 17
    dealer_hand.cards << deck.deal(1)[0]
  end

  print "\nDealer Cards: "
  dealer_hand_display = []

  dealer_hand.cards.each do |card|
    dealer_hand_display << card.rank.to_s + card.suit.to_s
  end

  print dealer_hand_display.join(", ")
  puts "\nDEALER SCORE: #{dealer_hand.calculate_hand}"

  if player_hand.calculate_hand > 21 &&
     dealer_hand.calculate_hand > 21
    puts "\nYou both bust!\n\nNO CONTEST"
  elsif dealer_hand.calculate_hand > 21
    puts "\nDealer busts!\n\nYOU WIN"
  elsif player_hand.calculate_hand > 21
    puts "\nYOU LOSE"
  elsif dealer_hand.calculate_hand < player_hand.calculate_hand
    puts "\nYOU WIN"
  elsif dealer_hand.calculate_hand == player_hand.calculate_hand
    puts "\nTie goes to the dealer.\n\nYOU LOSE"
  elsif blackjack
    puts "\nBlackjack!\n\nYOU WIN"
  else
    puts "\nYOU LOSE"
  end

end
