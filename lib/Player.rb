# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8

require_relative "BadConsequence.rb"
require_relative "Treasure.rb"

class Player
  @@MAXLEVEL = 10
  
  def initialize(name)
    @name  = name
    @level = 0
    @dead  = true
    @canISteal = true
    @hiddenTreasures  = Array.new
    @visibleTreasures = Array.new
    @pendingBadConsequence
    @enemy
  end
  
  attr_reader :name
  attr_reader :level
  attr_reader :dead
  attr_reader :canISteal
  attr_reader :hiddenTreasures
  attr_reader :visibleTreasures
  attr_writer :pendingBadConsequence
  attr_writer :enemy
  
  def getCombatLevel()
    level = @level
    
    @visibleTreasures.each {
      |treasure|
      
      level = level + treasure.bonus
    }
  end
  
  def bringToLife()
    @dead = false
  end
  
  def incrementLevels(i)
    if( i > 0 )
      @level = @level + i
    end
  end
  
  def decrementLevels(i)
    if( i > 0 )
      @level = @level - i
    end
    
    if( @level < 0 )
      @level = 0
    end
  end
  
  def setPendingBadConsequence(b)
    @pendingBadConsequence = b
  end
  
  def dieIfNoTreasures()
    if( @hiddenTreasures.empty? && @visibleTreasures.empty? )
      @dead = true
    end
  end
  
  def validState()
    return ( @pendingBadConsequence.isEmpty && (@hiddenTreasures.size <= 4)  )
  end
  
  def howManyVisibleTreasures(tKind)
    num_visible = 0
    
    (@visibleTreasures).each {
      |treasure|
      
      if( treasure.type == tKind )
        num_visible = num_visible + 1
      end
    }
    
    num_visible
  end
  
  def haveStolen()
    @canISteal = false
  end
  
  def canYouGiveMeATreasure()
    !@hiddenTreasures.empty?
  end
  
  
end
