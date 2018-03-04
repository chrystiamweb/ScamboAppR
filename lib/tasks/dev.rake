namespace :dev do
  desc "Setup Development"
  task setup: :environment do
    images_path = Rails.root.join('public','system')

    puts "Executando o setup para desenvolvimento..."

    puts "APAGANDO BD... #{%x(rails db:drop)}"

    if Rails.env.development?
      puts "Apagando imagens de public/system #{%x(rm -rf #{images_path})}"
    end

    puts "CRIANDO BD... #{%x(rails db:create)}"
    puts %x(rails db:migrate)
    puts %x(rails db:seed)
    puts %x(rails dev:generate_admins)
    puts %x(rails dev:gen_members)
    puts %x(rails dev:generate_ads)

    puts "Setup completado com sucesso!"
  end

  #################################################################
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
    puts "Cadastrando membros aleatórios para teste"
      50.times do
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
        finish_date: Date.today + Random.rand(90),
        price: "#{Random.rand(500)},#{Random.rand(500)}",
        picture: File.new(Rails.root.join('public', 'templates', 'images-for-ads', "#{Random.rand(9)}.jpg"), 'r')
      )
    end

    puts "ANÚNCIOS cadastrados com sucesso!"
  end
  #################################################################
end