require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("jacky")
player2 = Player.new("mischel")

binding.pry