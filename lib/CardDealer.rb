# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

#encoding: utf-8
require_relative "Monster.rb"
require_relative "Treasure.rb"

class CardDealer
  include Singleton
  
  def initTreasureCardDeck()
    @unusedTreasures = Array.new
    @usedTreasures   = Array.new
    
    # ¡SÍ MI AMO!
    unusedTreasures << Treasure.new("¡Sí mi amo!", 4, TreasureKind::HELMET)
    
    # BOTAS DE INVESTIGACIÓN
    unusedTreasures << Treasure.new("Botas de investigación", 3, TreasureKind::SHOES)
    
    # CAPUCHA DE CTHULHU
    unusedTreasures << Treasure.new("Capucha de Cthulhu", 3, TreasureKind::HELMET)
        
    # A PRUEBA DE BALAS
    unusedTreasures << Treasure.new("A prueba de balas", 2, TreasureKind::ARMOR)
        
    # BOTAS DE LLUVIA ÁCIDA
    unusedTreasures << Treasure.new("Botas de lluvia ácida", 1, TreasureKind::BOTHHANDS)
        
    # CASCO MINERO
    unusedTreasures << Treasure.new("Casco minero", 2, TreasureKind::HELMET)
        
    # AMETRALLADORA ACME
    unusedTreasures << Treasure.new("Ametralladora ACME", 4, TreasureKind::BOTHHANDS)
        
    # CAMISETA DE LA ETSIIT
    unusedTreasures << Treasure.new("Camiseta de la ETSIIT", 1, TreasureKind::ARMOR)
        
    # CLAVO DE RAIL FERROVIARIO
    unusedTreasures << Treasure.new("Clavo de rail ferroviario", 3, TreasureKind::ONEHAND)
        
    # CUCHILLO DE SUSHI ARCANO
    unusedTreasures << Treasure.new("Cuchillo de sushi arcano", 2, TreasureKind::ONEHAND)
        
    # FEZ ALÓPODO
    unusedTreasures << Treasure.new("Fez alópodo", 3, TreasureKind::HELMET)
        
    # HACHA PREHISTÓRICA
    unusedTreasures << Treasure.new("Hacha prehistórica", 2, TreasureKind::ONEHAND)
        
    # EL APARATO DE PR. TESLA
    unusedTreasures << Treasure.new("El aparato del Pr. Tesla", 4, TreasureKind::ARMOR)
        
    # GAITA
    unusedTreasures << Treasure.new("Gaita", 4, TreasureKind::BOTHHANDS)
        
    # INSECTICIDA
    unusedTreasures << Treasure.new("Insecticida", 2, TreasureKind::ONEHAND)
        
    # ESCOPETA DE 3 CAÑONES
    unusedTreasures << Treasure.new("Escopeta de 3 cañones", 4, TreasureKind::BOTHHANDS)
        
    # GARABATO MÍSTICO
    unusedTreasures << Treasure.new("Garabato místico", 2, TreasureKind::ONEHAND)
        
    # LA REBECA METÁLICA
    unusedTreasures << Treasure.new("La rebeca metálica", 2, TreasureKind::ARMOR)
        
    # LANZALLAMAS
    unusedTreasures << Treasure.new("Lanzallamas", 4, TreasureKind::BOTHHANDS)
        
    # NECRO-COMICÓN
    unusedTreasures << Treasure.new("Necro-comicón", 1, TreasureKind::ONEHAND)
        
    # NECRONOMICÓN
    unusedTreasures << Treasure.new("Necronomicón", 5, TreasureKind::BOTHHANDS)
        
    # LINTERNA A 2 MANOS
    unusedTreasures << Treasure.new("Linterna a 2 manos", 3, TreasureKind::BOTHHANDS)
      
    # NECRO-GNOMICÓN
    unusedTreasures << Treasure.new("Necro-gnomicón", 2, TreasureKind::ONEHAND)
        
    # NECROTELECOM
    unusedTreasures << Treasure.new("Necrotelecom", 2, TreasureKind::HELMET)
        
    # MAZO DE LOS ANTIGUOS
    unusedTreasures << Treasure.new("Mazo de los antiguos", 3, TreasureKind::ONEHAND)
        
    # NECRO-PLAYBOYCÓN
    unusedTreasures << Treasure.new("Necro-playboycón", 3, TreasureKind::ONEHAND)
        
    # PORRA PRETERNATURAL
    unusedTreasures << Treasure.new("Porra preternatural", 2, TreasureKind::ONEHAND)
        
    # SHOGULADOR
    unusedTreasures << Treasure.new("Shogulador", 1, TreasureKind::BOTHHANDS)
        
    # VARITA DE ATIZAMIENTO
    unusedTreasures << Treasure.new("Varita de atizamiento", 3, TreasureKind::ONEHAND)
        
    # TENTÁCULO DE PEGA
    unusedTreasures << Treasure.new("Tentáculo de pega", 2, TreasureKind::HELMET)
        
    # ZAPATO DEJA-AMIGOS
    unusedTreasures << Treasure.new("Zapato deja-amigos", 1, TreasureKind::SHOES)
  end
  
  def initMonsterCardDeck()
    @unusedMonsters = Array.new
    @usedMonsters   = Array.new
    
    #3 BYAKHEES DE BONANZA
    badcon = BadConsequence.newLevelSpecificTreasures("Pierdes tu armadura visible y otra oculta", 0,
                                                      [TreasureKind::ARMOR], [TreasureKind::ARMOR])
    prize = Prize.new(2, 1) 
    @unusedMonsters << Monster.new("3 Byakhees de bonanza", 8, badcon, prize)
        
    #TENOCHTILAN
    badcon = BadConsequence.newLevelSpecificTreasures("Embobados con el lindo primigenio te descartas de tu casco visible", 0,
                                                      [TreasureKind::HELMET], [])
    prize = Prize.new(1, 1)
    @unusedMonsters << Monster.new("Tenochtitlan", 2, badcon, prize)
        
    #EL SOPOR DE DUNWICH
    badcon = BadConsequence.newLevelSpecificTreasures("El primordial bostezo contagioso. Pierdes tu calzado visible", 0,
                                                      [TreasureKind::SHOES], [])
    prize = Prize.new(1, 1)
    @unusedMonsters << Monster.new("El sopor de Dunwich", 2, badcon, prize)

    #DEMONIOS DE MAGALUF
    badcon = BadConsequence.newLevelSpecificTreasures("Te atrapan para llevarte de fiesta y te dejan caer a mitad del vuelo. Descarta una mano visible y otra oculta",
                                                      0, [TreasureKind::ONEHAND], [TreasureKind::ONEHAND])
    prize = Prize.new(4, 1)
    @unusedMonsters << Monster.new("Demonios de Magaluf", 2, badcon, prize)
       
    #EL GORRÓN EN EL UMBRAL
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes todos tus tesoros visibles", 0, MAX_VALUE, 0);
    prize = Prize.new(3, 1)
    @unusedMonsters << Monster.new("El gorron en el umbral", 13, badcon, prize)
        
    #H.P. MUNCHCRAFT
    badcon = BadConsequence.newLevelSpecificTreasures("Pierdes la armadura visible", 0, 
                                                      [TreasureKind::ARMOR], [])
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("H.P. Munchcraft", 6, badcon, prize)
        
    #NECRÓFAGO
    badcon = BadConsequence.newLevelSpecificTreasures("Sientes bichos bajo la ropa. Descarta la armadura visible",
                                                      0, [TreasureKind::ARMOR], [])
    prize = Prize.new(1, 1);
    @unusedMonsters << Monster.new("Necrofago", 13, badcon, prize)
        
    #EL REY DE ROSADO
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes 5 niveles y 3 tesoros visibles", 5, 3, 0)
    prize = Prize.new(3, 2)
    @unusedMonsters << Monster.new("El rey de rosado", 11, badcon, prize)
        
    #FLECHER
    badcon = BadConsequence.newLevelNumberOfTreasures("Toses los pulmones y pierdes 2 niveles.", 2, 0, 0)
    prize = Prize.new(1, 1)
    @unusedMonsters << Monster.new("Flecher", 2, badcon, prize)

    #LOS HONDOS
    badcon = BadConsequence.newDeath("Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto")
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Los hondos", 8, badcon, prize)

    #SEMILLAS CTHULHU
    badcon = BadConsequence.newLevelNumberOfTreasures("Pierdes 2 niveles y 2 tesoros ocultos", 2, 0, 2)
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Semillas Cthulhu", 4, badcon, prize)

    #DAMEARGO
    badcon = BadConsequence.newLevelSpecificTreasures("Te intentas escaquear. Pierdes una mano visible.", 0, [TreasureKind::ONEHAND], [])
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Dameargo", 1, badcon, prize)
        
    #POLLIPÓLIPO VOLANTE
    badcon = BadConsequence.newLevelNumberOfTreasures("Da mucho asquito. Pierdes 3 niveles", 3, 0, 0)
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Pollipolipo volante", 3, badcon, prize)

    #YSKHTIHYSSG-GOTH
    badcon = BadConsequence.newDeath("No le hace gracia que pronuncien mal su nombre. Estas muerto")
    prize = Prize.new(3, 1)
    @unusedMonsters << Monster.new("Yskhtihyssg-Goth", 14, badcon, prize)

    #FAMILIA FELIZ
    badcon = BadConsequence.newDeath("La familia te atrapa. Estas muerto")
    prize = Prize.new(3, 1)
    @unusedMonsters << Monster.new("Familia Feliz", 1, badcon, prize)

    #ROBOGGOTH
    badcon = BadConsequence.newLevelSpecificTreasures("La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2manos visible", 
                                                      2, [TreasureKind::BOTHHANDS], [])
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Roboggoth", 8, badcon, prize)
        
    #EL ESPÍA SORDO
    badcon = BadConsequence.newLevelSpecificTreasures("Te asusta en la noche. Pierdes un casco visible", 0, [TreasureKind::HELMET], [])
    prize = Prize.new(1, 1)
    @unusedMonsters << Monster.new("El espia sordo", 5, badcon, prize)
        
    #TONGUE
    badcon = BadConsequence.newLevelNumberOfTreasures("Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles.", 2, 5, 0)
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Tongue", 19, badcon, prize)
        
    #BICÉFALO
    badcon = BadConsequence.newLevelSpecificTreasures("No hay manos para tantas cabezas. Pierdes 3 niveles y todos los tesoros visibles de tus manos", 3,
                                                      [TreasureKind::ONEHAND, TreasureKind::ONEHAND, TreasureKind::BOTHHANDS], [])
    prize = Prize.new(2, 1)
    @unusedMonsters << Monster.new("Bicefalo", 21, badcon, prize)
    
  end
  
  def shuffleTreasures()
    @unusedTreasures.shuffle!
  end
  
  def shuffleMonsters()
    @unusedMonsters.shuffle!
  end
  
  def giveTreasureBack(t)
    @usedTreasures << t
  end
  
  def giveMonsterBack(m)
    @usedMonsters << m
  end
  
end
