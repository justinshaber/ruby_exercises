class Verse
  attr_reader :bottles

  def initialize(bottles)
    @bottles = bottles
  end

  def build_verse
    "#{quantity(bottles).capitalize} of beer on the wall, #{quantity(bottles)} of beer.\n" +
    "#{take_down}, #{quantity(bottles - 1)} of beer on the wall.\n"
  end

  def take_down
    case bottles
    when 0  then "Go to the store and buy some more"
    when 1  then "Take it down and pass it around"
    else         "Take one down and pass it around"
    end
  end

  def quantity(num)
    case num
    when -1 then "99 bottles"
    when 0  then "no more bottles"
    when 1  then "1 bottle"
    else        "#{num} bottles"
    end
  end
end

class BeerSong
  def self.verse(num)
    Verse.new(num).build_verse
  end

  def self.verses(start_verse, end_verse)
    results = []
    start_verse.downto(end_verse) { |bottles| results << verse(bottles) }
    results.join("\n")
  end

  def self.lyrics
    verses(99,0)
  end
end