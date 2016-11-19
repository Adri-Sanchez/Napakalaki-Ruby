# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8 
require_relative "Prize.rb"
require_relative "BadConsequence.rb"
require_relative "TreasureKind.rb"
require_relative "Monster.rb"
  
class PruebaNapakalaki
  @@monstruos = Array.new
  MAX_VALUE = 19
  
  def self.CrearMonstruos
    
    #3 BYAKHEES DE BONANZA
    badcon = BadConsequence.newLevelSpecificTreasures("Pierdes tu armadura visible y otra oculta", 0,
                                                      [TreasureKind::ARMOR], [TreasureKind::ARMOR])
    prize = Prize.new(2, 1) 
    @@monstruos << Monster.new("3 Byakhees de bonanza", 8, badcon, prize)
        
    #TENOCHTILAN
    badcon = BadConsequence.newLevelSpecificTreasures("Embobados con el lindo primigenio te descartas de tu casco visible", 0,
                                                      [TreasureKind::HELMET], [])
    prize = Prize.new(1, 1)
    @@monstruos << Monster.new("Tenochtitlan", 2, badcon, prize)
        
    #EL SOPOR DE DUNWICH
    badcon = BadConsequence.newLevelSpecificTreasures("El primordial bostezo contagioso. Pierdes tu calzado visible", 0,
                                                      [TreasureKind::SHOES], [])
    prize = Prize.new(1, 1)
    @@monstruos << Monster.new("El sopor de Dunwich", 2, badcon, prize)

    #DEMONIOS DE MAGALUF
    badcon = BadConsequence.newLevelSpecificTreasures("Te atrapan para llevarte de fiesta y te dejan caer a mitad del vuelo. Descarta una mano visible y otra oculta",
                                                      0, [TreasureKind::ONEHAND], [TreasureKind::ONEHAND])
    prize = Prize.new(4, 1)
    @@monstruos << Monster.new("Demonios de Magaluf", 2, badcon, prize)
       
    #EL GORRÓN EN EL UMBRAL
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes todos tus tesoros visibles", 0, MAX_VALUE, 0);
    prize = Prize.new(3, 1)
    @@monstruos << Monster.new("El gorron en el umbral", 13, badcon, prize)
        
    #H.P. MUNCHCRAFT
    badcon = BadConsequence.newLevelSpecificTreasures("Pierdes la armadura visible", 0, 
                                                      [TreasureKind::ARMOR], [])
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("H.P. Munchcraft", 6, badcon, prize)
        
    #NECRÓFAGO
    badcon = BadConsequence.newLevelSpecificTreasures("Sientes bichos bajo la ropa. Descarta la armadura visible",
                                                      0, [TreasureKind::ARMOR], [])
    prize = Prize.new(1, 1);
    @@monstruos << Monster.new("Necrofago", 13, badcon, prize)
        
    #EL REY DE ROSADO
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes 5 niveles y 3 tesoros visibles", 5, 3, 0)
    prize = Prize.new(3, 2)
    @@monstruos << Monster.new("El rey de rosado", 11, badcon, prize)
        
    #FLECHER
    badcon = BadConsequence.newLevelNumberOfTreasures("Toses los pulmones y pierdes 2 niveles.", 2, 0, 0)
    prize = Prize.new(1, 1)
    @@monstruos << Monster.new("Flecher", 2, badcon, prize)

    #LOS HONDOS
    badcon = BadConsequence.newDeath("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto")
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Los hondos", 8, badcon, prize)

    #SEMILLAS CTHULHU
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes 2 niveles y 2 tesoros ocultos", 2, 0, 2)
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Semillas Cthulhu", 4, badcon, prize)

    #DAMEARGO
    badcon = BadConsequence.newLevelSpecificTreasures("Te intentas escaquear. Pierdes una mano visible.", 0, [TreasureKind::ONEHAND], [])
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Dameargo", 1, badcon, prize)
        
    #POLLIPÓLIPO VOLANTE
    badcon = BadConsequence.newLevelNumberOfTreasures("Da mucho asquito. Pierdes 3 niveles", 3, 0, 0)
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Pollipolipo volante", 3, badcon, prize)

    #YSKHTIHYSSG-GOTH
    badcon = BadConsequence.newDeath("No le hace gracia que pronuncien mal su nombre. Estas muerto")
    prize = Prize.new(3, 1)
    @@monstruos << Monster.new("Yskhtihyssg-Goth", 14, badcon, prize)

    #FAMILIA FELIZ
    badcon = BadConsequence.newDeath("La familia te atrapa. Estas muerto")
    prize = Prize.new(3, 1)
    @@monstruos << Monster.new("Familia Feliz", 1, badcon, prize)

    #ROBOGGOTH
    badcon = BadConsequence.newLevelSpecificTreasures("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2manos visible", 
                                                      2, [TreasureKind::BOTHHANDS], [])
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Roboggoth", 8, badcon, prize)
        
    #EL ESPÍA SORDO
    badcon = BadConsequence.newLevelSpecificTreasures("Te asusta en la noche. Pierdes un casco visible", 0, [TreasureKind::HELMET], [])
    prize = Prize.new(1, 1)
    @@monstruos << Monster.new("El espia sordo", 5, badcon, prize)
        
    #TONGUE
    badcon = BadConsequence.newLevelNumberOfTreasures("Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles.", 2, 5, 0)
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Tongue", 19, badcon, prize)
        
    #BICÉFALO
    badcon = BadConsequence.newLevelSpecificTreasures("No hay manos para tantas cabezas. Pierdes 3 niveles y todos los tesoros visibles de tus manos", 3,
                                                      [TreasureKind::ONEHAND, TreasureKind::ONEHAND, TreasureKind::BOTHHANDS], [])
    prize = Prize.new(2, 1)
    @@monstruos << Monster.new("Bicefalo", 21, badcon, prize)
    
  end
  
  def self.Upper10
    validos = Array.new 
    (@@monstruos).each { 
      |monstruo|   
      
      if monstruo.combatLevel > 10
        validos << monstruo
      end
    }
    
    return validos
  end
  
  def self.LoseLevels
    validos = Array.new
    (@@monstruos).each{
      |monstruo|
      
      bc = monstruo.badConsequence
      if bc.levels > 0 && bc.nVisibleTreasures == 0 && bc.nHiddenTreasures == 0 && bc.death == false
        validos << monstruo
      end
    }
    
    return validos
  end
  
  def self.GainLevels
    validos = Array.new 
    (@@monstruos).each { 
      |monstruo|   
      
      prize = monstruo.prize
      
      if prize.level > 1
        validos << monstruo
      end
    }
    
    return validos
  end
  
  def self.LoseItem( item )
    validos = Array.new
    
    (@@monstruos).each {
      |monstruo|
      
      bc = monstruo.badConsequence
      encontrado = false
      contador = 0
      
      while(contador < bc.specificVisibleTreasures.size && encontrado == false)
        if( bc.specificVisibleTreasures[contador] == item )
          encontrado = true
          validos << monstruo
        end
        
        contador = contador + 1
      end
      
      contador = 0
      
      while(contador < bc.specificHiddenTreasures.size && encontrado == false)
        if( bc.specificHiddenTreasures[contador] == item )
          encontrado = true
          validos << monstruo
        end
        
        contador = contador + 1
      end
    }
    
    return validos
  end
  
  end
  
PruebaNapakalaki.CrearMonstruos
puts PruebaNapakalaki.LoseItem(TreasureKind::ARMOR)
  
