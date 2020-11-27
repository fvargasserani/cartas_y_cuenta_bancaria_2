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
    attr_accessor :cartas
    def initialize(cartas)
        @cartas = cartas
    end

    def barajar(cartas)
        cartas.shuffle
    end
    
    def sacar(cartas)
        cartas.pop(0)
        print cartas
    end
    
    def repartir_mano(cartas)
        cartas[0..4]
    end
end

cartas = Carta.new([*1..13],['C', 'D', 'E', 'T'])
todas_cartas = cartas.combinaciones
mazo = Baraja.new(cartas)

print cartas.combinaciones
print mazo.barajar(todas_cartas)
print mazo.sacar(todas_cartas)
print mazo.repartir_mano(todas_cartas)