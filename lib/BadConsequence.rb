# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8 
require_relative "TreasureKind.rb"

class BadConsequence
  
  private_class_method :new
  def initialize(aText, someLevels, someVisibleTreasures, someHiddenTreasures, 
      someSpecificVisibleTreasures, someSpecificHiddenTreasures, death)
    
    @text = aText
    @levels = someLevels
    @nVisibleTreasures = someVisibleTreasures
    @nHiddenTreasures = someHiddenTreasures
    @specificVisibleTreasures = someSpecificVisibleTreasures
    @specificHiddenTreasures = someSpecificHiddenTreasures
    @death = death
  end
  
  def self.newLevelNumberOfTreasures(aText, someLevels,
      someVisibleTreasures, someHiddenTreasures)
    
    new(aText, someLevels, someHiddenTreasures, someVisibleTreasures, Array.new,
    Array.new, false)
  
  end

  def self.newLevelSpecificTreasures(aText, someLevels,
    someSpecificVisibleTreasures, someSpecificHiddenTreasures)
  
    new(aText, someLevels, someSpecificVisibleTreasures.length, 
        someSpecificHiddenTreasures.length, someSpecificVisibleTreasures, 
        someSpecificHiddenTreasures, false)
    
  end
  
  def self.newDeath(aText)
    new(aText, 0, 0, 0, Array.new, Array.new, true)
  end
  
  attr_reader :text
  attr_reader :levels
  attr_reader :nVisibleTreasures
  attr_reader :nHiddenTreasures
  attr_reader :death
  attr_reader :specificVisibleTreasures
  attr_reader :specificHiddenTreasures
  
  def to_s
    if @death
      muerte = "Yes"
    else
      muerte = "No"
    end
    
    "--Bad Consequence--" + 
    "\nText = #{@text}" + 
    "\nLevels = #{@levels}" +
    "\nNumber of Visible Treasures = #{@nVisibleTreasures}" +
    "\nNumber of Hidden Treasures = #{@nHiddenTreasures}" + 
    "\nDeath = #{muerte}"
  end
  
end
