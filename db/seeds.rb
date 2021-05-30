# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## users
User.create([
    {email: "admin@admin.com", password: "desafiolatam", password_confirmation: "desafiolatam", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, level: 0, admin: true, username: "gilivega"},
    {email: "testuser@test.com", password: "desafiolatam2", password_confirmation: "desafiolatam2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, level: 0, admin:true, username: "testuser"},
    {email: "testuser2@test.com", password: "desafiolatam3", password_confirmation: "desafiolatam3", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, level: 0, admin:true, username: "testuser2"}
])

##

#Visa_type

['Nacional', 'Con permanencia definitiva', 'Con visa temporaria', 'Con permanencia definitiva en trámite ', 'Otro'].each do |type|
    VisaType.create(name: type)
end

#worker_type

['Dependiente con contrato indefinido', 'Dependiente con contrato a plazo', 'Independiente', 'Otro'].each do |type|
    WorkerType.create(name: type)
end

#product_type

['Tarjetas de Crédito', 'Tarjetas Digitales', 'Cuentas vista', 'Cuentas corriente', 'Inversión', 'Remesas'].each do |type|
    ProductType.create(name: type)
end

#institution_type

['Banco Santander', 'MACH', 'Migrate S.A', 'Fintual', 'Buda', 'Global66'].each do |type|
    InstitutionType.create(name: type)
end


#post

10.times do
    Post.create(
        author: Faker::Name.name_with_middle,
        title: Faker::Lorem.sentence(word_count: 3),
        description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true),
        image: Faker::LoremFlickr.image(size: "50x60"),
        url: Faker::Internet.domain_name,
        product_type_id: Faker::Number.between(from: 1, to: 4)
    )
end

#financialproduct

10.times do
    FinantialProduct.create(
        name: Faker::Lorem.sentence(word_count: 2),
        description: Faker::Lorem.paragraph(sentence_count: 10, supplemental: true),
        image: Faker::LoremFlickr.image(size: "100x120"),
        url: Faker::Internet.domain_name,
        visibility: true;
        product_type_id: Faker::Number.between(from: 1, to: 4),
        institution_type_id: Faker::Number.between(from: 1, to: 4)
    )
end


#finantialInfo

3.times do
    FinantialInfo.create(
        salary: rand(300000..1549000),
        salary_extra: rand(100000..154900),
        working_time: Faker::Number.between(from: 1, to: 24),
        user_id: Faker::Number.unique.between(from: 1, to: 3),
        worker_type_id: Faker::Number.between(from: 1, to: 4),
        visa_type_id: Faker::Number.between(from: 1, to: 4) 
    )
end