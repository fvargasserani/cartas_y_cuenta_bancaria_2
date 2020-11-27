class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end

    def combinaciones
        numero.product(pinta)
    end
end

class Baraja
    attr_accessor :todas_cartas
    def initialize(todas_cartas)
        @todas_cartas = todas_cartas
    end

    def barajar
        todas_cartas.shuffle
    end
    
    def sacar
        print todas_cartas.shift #El metodo shift funciona para sacar la primera carta de un arreglo. El metodo pop para sacar la ultima carta.
    end
    
    def repartir_mano
        todas_cartas[0..4]
    end
end

cartas = Carta.new([*1..13],['C', 'D', 'E', 'T'])
todas_cartas = cartas.combinaciones
mazo = Baraja.new(todas_cartas)

cartas.combinaciones
print mazo.barajar
print mazo.sacar
print mazo.repartir_mano