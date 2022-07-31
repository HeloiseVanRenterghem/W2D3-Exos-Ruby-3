#03_stairway.rb

def dice_roll
    result_dice = rand(1..6)
    print "Vous avec obtenu #{result_dice} avec le dé. "
    return result_dice
end

def analyze_result(result_dice)
    if result_dice >= 5
        puts "Vous avancez !"
        return 1
    elsif result_dice == 1
        puts "Vous reculez !"
        return -1
    else
        puts "Vous restez sur la même marche !"
        return 0
    end
end

def show_state(num)
    puts "Vous êtes sur la marche n° #{num}"
end

def is_over?(num)
    if num == 10
        return true
    else
        return false
    end
end

def perform
    puts "Bienvenue dans le jeu ! Votre but est d'atteindre la 10e marche."

    step = 1
    show_state(step)

    while(!is_over?(step)) do
        puts "\n"
        puts "Tapez 'entrée' pour jouer"
        gets.chomp
        step += analyze_result(dice_roll)
        show_state(step)
    end

    puts ">>> Vous avez gagné ! <<<"

end

perform