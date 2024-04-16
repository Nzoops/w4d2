require 'pry'

class Player
    attr_accessor :user_name, :life_points

    def initialize(name) # is executed for each new instance in "Player class"
        @user_name = name
        @life_points = 10
    end

    def show_state # gives the life_points status of a given user.
        puts "#{@user_name} a #{@life_points} points de vie restants\n"
    end

    def get_damages(damages) # when player recieves damage from attacks
        @life_points -= damages
        puts "\e[31mIl lui inflige #{damages} points de dégâts\e[0m."
        if @life_points <= 0
            @life_points = 0
        end
        return damages
    end

    def attack(defender) 
        puts "\n\e[33mLe joueur #{@user_name} attaque le joueur #{defender.user_name}\e[0m"
        defender.get_damages(compute_damage)
    end

    def compute_damage
        return rand(1..6)        
    end

end