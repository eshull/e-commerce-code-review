class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    User.create!(name: 'Eric', email: 'eric@eric.com', password: 'password1234', admin: true)
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

Seed.begin
