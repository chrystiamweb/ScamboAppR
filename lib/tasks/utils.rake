namespace :utils do
  desc "Cria Administradores aleatórios para teste"
  task generate_admins: :environment do
    puts "Cadstrando Administradores aleatórios para teste"
      10.times do
        Admin.create!(name: Faker::Name.name, email: Faker::Internet.email, password:"123456", password_confirmation:"123456", role: [0,1].sample)
      end      
    puts "Administradores aleatórios cadastrado com sucesso..."
  end

end
