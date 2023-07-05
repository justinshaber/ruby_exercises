class BeerSong
  def self.verse(verse_num)
    verses(verse_num)
  end

  def self.lyrics
    verses(99,0)
  end

  def self.verses(start_num, end_num=nil)
    low_limit = end_num.nil? ? start_num : end_num
    results = []
    start_num.downto(low_limit) do |current|
      results << <<-VERSE
#{bottles(current).capitalize} of beer on the wall, #{bottles(current)} of beer.
#{take_down(current)}, #{bottles(current-1)} of beer on the wall.
        VERSE
    end
    results.join("\n")
  end

  def self.bottles(amount)
    case amount
    when -1 then "99 bottles"
    when 0 then "no more bottles"
    when 1 then "1 bottle"
    else "#{amount} bottles"
    end
  end

  def self.take_down(amount)
    case amount
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else        "Take one down and pass it around"
    end
  end
end