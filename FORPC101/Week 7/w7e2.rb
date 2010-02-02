=begin
Exercise2.
Write a Ruby program that analyzes an MP3 file. Many MP3
files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information
 about the song: its name, the artist, which album it's from, and so on. You can parse this data structure by opening an
 MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you
start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't,
there's no ID3 tag for this MP3 file, and nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG
 contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. A sample song.mp3
file is available to test your program. Use Symbols, wherever possible.
=end

class MusicReader
  def initialize(song="song.mp3")
    @song = song
  end


  def get_tag
    @f = File.new(@song) # first let's open the file
    @f.seek(-128,IO::SEEK_END)  # let's read the 3 required bytes
    @tag = @f.read(3)
    @tag
  end

  def has_tag?
    if @tag == "TAG"
      puts "We have a tag"
      puts "Song name: #{@f.read(30)}"
      puts "Song artist: #{@f.read(30)}"
      puts "Song other stuff: #{@f.read(30)}"
      @f.close
      true
    else
      puts "We DON'T have a tag"
      @f.close
      false
   end
  end
end



# TEST:
music_file = MusicReader.new("song.mp3")
music_file.get_tag
puts "yupie!!! :)" if (music_file.has_tag?)