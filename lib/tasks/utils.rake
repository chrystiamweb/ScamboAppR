namespace :utils do
  desc "Cria Administradores aleatórios para teste"
  task generate_admins: :environment do
    puts "Cadastrando Administradores aleatórios para teste"
      10.times do
        Admin.create!(name: Faker::Name.name, email: Faker::Internet.email, password:"123456", password_confirmation:"123456", role: [0,1].sample)
      end      
    puts "Administradores aleatórios cadastrado com sucesso..."
  end
  #################################################################
  desc "Cria Membros"
  task gen_members: :environment do
    puts "Cadastrando mebros aleatórios para teste"
      10.times do
        Member.create!(email: Faker::Internet.email, password:"123456", password_confirmation:"123456")
      end      
    puts "Membros aleatórios cadastrado com sucesso..."
  end
  
  #################################################################

  desc "Cria Anúncios Fake"
  task generate_ads: :environment do
    puts "Cadastrando ANÚNCIOS..."

    100.times do
      Ad.create!(
        title: Faker::Lorem.sentence([2,3,4,5].sample),
        description: Faker::Lorem.sentence([2,3].sample),
        member: Member.all.sample,
        category: Category.all.sample,
      )
    end

    puts "ANÚNCIOS cadastrados com sucesso!"
  end
  #################################################################
end