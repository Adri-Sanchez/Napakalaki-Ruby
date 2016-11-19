# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8 
require_relative "Prize.rb"
require_relative "BadConsequence.rb"

class Monster
  def initialize(name, level, bc, prize)
    @name = name
    @combatLevel = level
    @badConsequence = bc
    @prize = prize
    
  end
  
  attr_reader :name
  attr_reader :combatLevel
  attr_reader :prize
  attr_reader :badConsequence
  
  def getLevelsGained()
    @prize.level
  end
  
  def getTreasuresGained()
    @prize.treasures
  end
  
  def to_s
    "\n\nMonster:" +
    "\nName = #{@name} " +
    "\nCombat level = #{@combatLevel}" + 
    "\n#{(@prize).to_s}" + 
    "\n#{(@badConsequence).to_s}"
  end
end
