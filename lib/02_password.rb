#02_password.rb
def signup
    puts "Veuillez définir un mot de passe"
    print ">"
    password = gets.chomp
    return password
end

def login(password)
    passwordbis = ""
    while passwordbis != password do
        puts "Veuillez entrer votre mot de passe"
        print ">"
        passwordbis = gets.chomp
        if passwordbis == password
            puts welcome_screen
        else
            puts "Mauvais mot de passe. Veuillez réessayer."
        end
    end
end

def welcome_screen
    puts "Bravo, vous êtes connecté ! Bienvenue dans votre zone secrète."
end

def perform
    login(signup)
end

perform