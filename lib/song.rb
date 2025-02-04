require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  # extend Memorable
  include  Paramable

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods


  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
