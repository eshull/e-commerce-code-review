class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_users
    User.destroy_all
    User.create!(name: "admin", email: "admin@admin.com", password: "New1234!!!!", admin: true)
    User.create!(name: "user", email: "user@user.com", password: "New1234!!!!")
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end
end

Seed.begin
