# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8
class Dice
  include Singleton
  
  def nextNumber()
    Random.rand(1..6)
  end
end
