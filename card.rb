class Card
  def initialize(rank = nil, suit = nil)
    if suit.nil?
      @suit = ['♠', '♣', '♥', '♦'].sample
    else
      @suit = suit
    end
    if rank.nil?
      @rank = ['A','2','3','4','5','6','7','8','9','J','Q','K'].sample
    else
      @rank = rank
    end
    puts "Create a new card: #{@rank} of #{@suit}"
  end
end

Card.new


class Television
  def intitialize(channel, show)
    @channel = channel
    @show = show
  end
end
