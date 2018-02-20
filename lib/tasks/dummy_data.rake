namespace :customers do
  desc 'Creates customers who are people'
  task create: :environment do
    10.times do |i|
      products = [{ name: 'productA', preferences: { contact_by: 'email' } },
                  { name: 'productB', preferences: { contact_by: 'email' } },
                  { name: 'productC', preferences: { contact_by: 'email' } },
                  { name: 'productC', preferences: { contact_by: 'email' } }]

      Customer.create(cid: i,
                      email: "user#{i}@email.com",
                      first_name: "Name#{i}",
                      last_name: "Surname#{i}",
                      products: products)
    end
  end

  desc 'Creates customers who are legal entities'
  task legal_entities: :environment do
  end

  desc 'Delete all customers'
  task destroy_all: :environment do
    Customer.all.each(&:delete)
  end
end
