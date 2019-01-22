# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# t.string :name
# t.string :description
# t.float :price
Item.destroy_all
Item.create(name: "Crayola® Crayons, 8/Box", description:
  "Crayola® Crayon comes in various colors and sizes helps to draw magnificent,
  durable pictures at home/school. Crayon is covered with paper to protect against
  accidental coloration, sold as 8 per box.", picture_url: "https://cdnimg.webstaurantstore.com
  /images/products/large/446608/1654967.jpg", price: 1.69)
Item.create(name: "Expo Block Eraser ", description: "Wipe drawings, instructions,
  and other writing away easily with this eraser. Ideal for use on porcelain, whiteboards,
  and other nonporous surfaces, this eraser wipes dry-erase marks away quickly and cleanly,
   while the reusable design allows for it to be cleaned with soap and water, keeping it
      fresh and new. This Expo dry-erase eraser has a soft bottom construction, protecting
      surfaces from scratches and other damage when erasing.", picture_url: "https://encrypted-
      tbn0.gstatic.com/images?q=tbn:ANd9GcT7LVYaVhr1-jySBNQJKPFlaW6Haqr7241pH07eECV8XBc2bHNY", price: 4.29)
