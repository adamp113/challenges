# class BeerSong
#   END_VERSES = {
#     0 =>  "No more bottles of beer on the wall, no more bottles of beer.\n" \
#     "Go to the store and buy some more, 99 bottles of beer on the wall.\n",
#     1 =>  "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n",
#     2 =>  "2 bottles of beer on the wall, 2 bottles of beer.\n" \
#       "Take one down and pass it around, 1 bottle of beer on the wall.\n"
#   }

#   def verse(line)
#     END_VERSES[line] || default_verse(line)
#   end

#   def verses(start, ending)
#     start.downto(ending).reduce('') do |song, line_num|
#       song + verse(line_num) + "\n"
#     end.chomp
#   end

#   def lyrics
#     verses(99, 0)
#   end

#   private

#   def default_verse(line)
#     "#{line} bottles of beer on the wall, #{line} bottles of beer.\n" \
#       "Take one down and pass it around, #{line - 1} bottles of beer on the wall.\n"
#   end
# end


#OR

class BeerSong
  attr_reader :song

  def initialize
    @song = File.open('beer_song_lyrics.txt')
  end

  def verse(number)
    verses(number, number)
  end

  def verses(first, last)
    lines = song.read.split("\n\n").reverse

    first.downto(last).with_object('') do |number, string|
      string << lines[number] + "\n\n"
    end.chomp
  end

  def lyrics
    song.read + "\n"
  end
end