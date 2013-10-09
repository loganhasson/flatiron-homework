require 'simplecov'
SimpleCov.start
require 'json'
require 'rspec'
 
require_relative 'jukebox'
require_relative 'song'
 
describe Song do

  let(:my_song) {Song.new('Tokyo Police Club - Wait Up')}

  it 'should have a name' do
    my_song.name.should eq("Tokyo Police Club - Wait Up")
  end
 
end
 
describe Jukebox do
  
  before(:each) do
    @songs = ["The Phoenix - 1901",
              "Tokyo Police Club - Wait Up",
              "Sufjan Stevens - Too Much",
              "The Naked and the Famous - Young Blood",
              "(Far From) Home - Tiga",
              "The Cults - Abducted",
              "The Phoenix - Consolation Prizes"]
    @songs = @songs.map do |song|
      Song.new(song)
    end
  end

  let(:my_jukebox) {Jukebox.new(@songs)}
  let(:test_song) {'Tokyo Police Club - Wait Up'}

  it 'should have songs' do
    my_jukebox.songs.should eq(@songs)
  end

  it 'should list all songs avalable to play' do
    my_jukebox.list.should include(test_song)
  end

  it 'should turn off when input is exit' do
    my_jukebox.command('exit')
    my_jukebox.on?.should eq(false)
  end

  it 'should respond to a help method' do
    my_jukebox.should respond_to(:help)
    my_jukebox.help.should be_a(String)
  end

  it 'should play a song' do
    my_jukebox.command('play the cults').should eq('now playing the cults')
  end

  it 'should react to unapproved commands' do
    my_jukebox.command('blah').should eq('invalid command')
  end
end