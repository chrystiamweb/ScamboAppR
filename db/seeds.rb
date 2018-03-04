# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando Categorias ... "
categories = [ "Animais e acessórios",
                "Esportes",
                "Para sua casa",
                "Eletrônicos e celulares",
                "Música e hobbies",
                "Veículos e barcos",
                "Imóveis",
                "Empregos e negócios"]

categories.each do |c|
    Category.find_or_create_by(description: c)
end

puts "Categorias cadastradas com sucesso ... "


############################## CADASTRO DE ADMINISTRADOR PADRÃO ######

puts "Cadstrando Administrador padrão do sistema"
    Admin.create!(name:"Admin Padrão", email: "admin@admin.com", password:"123456", password_confirmation:"123456", role:0)
puts "Administrador padrão do sistema cadastrado com sucesso..."
puts "Login: admin@admin.com"
puts "Senha: 123456"

############################## CADASTRO DE MEMBRO PADRÃO ######

puts "Cadstrando membro padrão do sistema"
    Member.create!(email: "memb@memb.com", password:"123456", password_confirmation:"123456")
puts "Membro padrão do sistema cadastrado com sucesso..."
puts "Login: memb@memb.com"
puts "Senha: 123456"