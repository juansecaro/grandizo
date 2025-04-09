# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

csv_file_path = Rails.root.join('db', 'seed_data', 'elements.csv')

# Productos

element = Element.create!(name: "Papel químico 60gr 1ª")


element.price_ranges.create!(min_quantity: 0, max_quantity: 10, price: 20)
element.price_ranges.create!(min_quantity: 11, max_quantity: 100, price: 18)
element.price_ranges.create!(min_quantity: 101, max_quantity: nil, price: 15)


# Element.create!(name: "Papel químico 60gr 1ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 60gr 1ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 60gr 1ª (+1000)", price: 1 )

# Element.create!(name: "Papel químico 60gr 2ª (0-10)", price: 1 )
# Element.create!(name: "Papel químico 60gr 2ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 60gr 2ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 60gr 2ª (+1000)", price: 1 )

# Element.create!(name: "Papel químico 60gr 3ª (0-10)", price: 1 )
# Element.create!(name: "Papel químico 60gr 3ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 60gr 3ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 60gr 3ª (+1000)", price: 1 )

# Element.create!(name: "Papel químico 75gr 1ª (0-10)", price: 1 )
# Element.create!(name: "Papel químico 75gr 1ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 75gr 1ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 75gr 1ª (+1000)", price: 1 )

# Element.create!(name: "Papel químico 75gr 2ª (0-10)", price: 1 )
# Element.create!(name: "Papel químico 75gr 2ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 75gr 2ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 75gr 2ª (+1000)", price: 1 )

# Element.create!(name: "Papel químico 75gr 3ª (0-10)", price: 1 )
# Element.create!(name: "Papel químico 75gr 3ª (10-100)", price: 1 )
# Element.create!(name: "Papel químico 75gr 3ª (100-1000)", price: 1 )
# Element.create!(name: "Papel químico 75gr 3ª (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 45x64 80gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 80gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 80gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 80gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 45x64 90gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 90gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 90gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 90gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 45x64 100gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 100gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 100gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 100gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 45x64 120gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 120gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 120gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 45x64 120gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 65x90 80gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 80gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 80gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 80gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 65x90 90gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 90gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 90gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 90gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 65x90 100gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 100gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 100gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 100gr (+1000)", price: 1 )

# Element.create!(name: "Offset blanco 65x90 120gr (0-10)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 120gr (10-100)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 120gr (100-1000)", price: 1 )
# Element.create!(name: "Offset blanco 65x90 120gr (+1000)", price: 1 )





# Crear presupuesto de prueba
# budget = Budget.create(client_name: "Cliente Ejemplo")
# budget.add_element(1, 3) # 3 unidades de pintura
# budget.add_element(2, 10.5) # 10.5 metros de madera
