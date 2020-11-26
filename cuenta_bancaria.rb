class CuentaBancaria
    attr_accessor :banco, :numero_cuenta, :saldo, :monto
    def initialize(banco, numero_cuenta, saldo = 0)
        @banco = banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
        @monto = monto
    end

    def transferir(numero_cuenta, monto)
        @saldo -= monto
        numero_cuenta.saldo += monto
        "La cuenta numero #{@numero_cuenta} tiene un saldo de $#{saldo}"
    end
end

class Usuario
    attr_accessor :nombre, :cuentas_bancarias
    def initialize(nombre, cuentas_bancarias)
        raise ArgumentError, 'Debe ingresar al menos un numero de cuenta bancaria' if cuentas_bancarias == []
        @nombre = nombre
        @cuentas_bancarias = cuentas_bancarias
    end

    def saldo_total
        n = cuentas_bancarias.count
        saldo_final = 0
        n.times do |i|
            saldo_final += cuentas_bancarias[i].saldo
        end
        print "El saldo de todas las cuentas bancarias es de $#{saldo_final}"
    end
end

cuenta1 = CuentaBancaria.new('Santander', '12345678', 5000)
cuenta2 = CuentaBancaria.new('Santander', '87654321', 0)
puts cuenta1.transferir(cuenta2,5000)

usuario1 = Usuario.new('Francisca', [cuenta1,cuenta2])
puts usuario1.saldo_total