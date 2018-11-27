require_relative 'deck'
require_relative 'hand'
require_relative 'card'

class Blackjack

  deck = Deck.new

  player_hand = Hand.new(deck.deal(2))
  dealer_hand = Hand.new(deck.deal(2))

  puts "\nYour cards: " + player_hand.cards[0].display + ", " +
                          player_hand.cards[1].display
  puts "Dealer's showing: " + dealer_hand.cards[0].display

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
        puts "\nYou drew: #{player_hand.cards[-1].display}"

        player_hand.ace_offset = 0
        player_hand.cards.each do |card|
          if card.ace_card? && player_hand.calculate_hand > 21
            player_hand.ace_offset += 10
          end
        end

        if player_hand.calculate_hand > 21
          bust = true
          puts "\nBust!"

        elsif player_hand.calculate_hand == 21
          blackjack = true
          puts "\nFINAL SCORE: #{player_hand.calculate_hand}"
        end

      elsif hit_or_stay != "stay"
        puts "\nPardon me?\n"
      end

    end
  end

  if blackjack == false && hit_or_stay == "stay"
    puts "\nFINAL SCORE: #{player_hand.calculate_hand}"
  end

  while dealer_hand.calculate_hand < 18
    dealer_hand.cards << deck.deal(1)[0]

    player_hand.ace_offset = 0
    dealer_hand.cards.each do |card|
      if card.ace_card? && dealer_hand.calculate_hand > 21
        dealer_hand.ace_offset += 10
      end
    end

  end

  print "\nDealer Cards: "
  dealer_hand_display = []
  dealer_hand.cards.each do |card|
    dealer_hand_display << card.display
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
