class User
    def initialize(name, email, password)
        @name = name
        @email = email
        @password = password
        @pins = {}
    end
    
    def read_userinfo
        puts "#{@name} has #{@email} email."
    end
    
    def write_userinfo(name, email)
        @name = name
        @email = email
    end
    
    def new_password(password)
        @password = password
    end
    
    def pin_it(key, value)
        @pins[key.to_sym] = value
        puts @pins
    end
    
    def my_pins
        @pins.each do |key, value|
            puts "#{key}: #{value}"
        end
    end
    
    def delete_pins(key)
        if @pins[key.to_sym]
            @pins.delete(key.to_sym)
        else
            puts "You never pinned that pin"
        end
        puts @pins
    end
end

sabers_pinterest = User.new("saber", "skhan@browning.edu", "12345")
puts sabers_pinterest
puts sabers_pinterest.read_userinfo
sabers_pinterest.write_userinfo("Saber Khan", "mrkhanatndv@gmail.com")
puts sabers_pinterest.read_userinfo
sabers_pinterest.new_password("0998765")
sabers_pinterest.pin_it("cooking", "recipe")
sabers_pinterest.pin_it("vacation", "puerto rico")
sabers_pinterest.my_pins
sabers_pinterest.delete_pins("cooking")
sabers_pinterest.delete_pins("travel")