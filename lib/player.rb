require 'pry'

class Player
    attr_accessor :user_name, :life_points

    def initialize(name) # is executed for each new instance in "Player class"
        @user_name = name
        @life_points = 10                 
    end

    def show_state # gives the life_points status of a given user.
        puts "#{@user_name} a #{@life_points} points de vie restants\n\n"
    end

    def get_damages(damages, defender) # when player recieves damage from attacks
        @life_points -= damages
        puts "#{defender.user_name} a perdu #{damages} points de vie et n'a plus que #{@life_points} points de vie"
        if @life_points <= 0
            puts "#{defender.user_name} est mort"
            #puts "#{attacker.user_name} a gagné!"
        end
        return damages
    end

    def attack(defender)
        puts "\n\e[33mLe joueur #{@user_name} attaque le joueur #{defender.user_name}\e[0m"
        dice = get_damages(compute_damage, defender)
        puts "\e[31mIl lui inflige #{dice} points de dégâts\e[0m \n\n"
    end

    def compute_damage
    return rand(1..6)        
    end

end
  
