# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8

require_relative "CombatResult.rb"
require_relative "Player.rb"
require_relative "CardDealer.rb"
require_relative "Monster.rb"

class Napakalaki
  include Singleton
  
  def initialize
    
  end
  
  attr_reader :currentMonster
  attr_reader :currentPlayer
  
end
