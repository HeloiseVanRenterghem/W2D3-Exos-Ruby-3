#01_pyramids.rb
def get_number
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    number = gets.chomp
    if number.to_i.even?
        puts "Pas de nombre pair s'il te plaît"
    else
        return number
    end
end

def full_pyramid(number)
    1.upto(number.to_i) do |i|
    puts "#{" " * (number.to_i - i)}#{"#" * (2 * i - 1)}#{" " * (number.to_i - i)}"
    end
end

def reverse_pyramid(number)
    1.upto(number.to_i - 1) do |i|
    puts "#{" " * i}#{"#" * (2 * number.to_i - 1 - 2 * i)}#{" " * i}"
    end
end

def perform
    number = get_number
    full_pyramid(number)
    reverse_pyramid(number)
end

perform