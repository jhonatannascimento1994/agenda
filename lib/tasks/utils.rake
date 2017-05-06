namespace :utils do
  desc "Popular banco de dados."
  task seed: :environment do
    puts "Gerando os contatos(Contacts)..."
    10.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample,
        rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
      )
    end
    puts "Gerando os contatos(Contacts)... [OK]"
  end
end
