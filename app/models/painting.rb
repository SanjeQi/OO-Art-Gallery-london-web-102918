class Painting

  attr_reader :title, :style, :artist, :gallery
   @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all painting styles (a style should not appear more than once in the list)

  def self.style
    @@all.map {|p| p.style}.uniq
  end

end
