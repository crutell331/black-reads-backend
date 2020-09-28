a1=Author.create!(firstname:"Maya", lastname:"Angelou", img:"https://images.gr-assets.com/authors/1379017377p8/3503.jpg", bio:"") #non fiction
a2=Author.create!(firstname:"Michelle", lastname:"Alexander", img:"https://images.gr-assets.com/authors/1399475863p8/3051490.jpg", bio:"")#non fiction
a3=Author.create!(firstname:"Michelle", lastname:"Obama", img:"", bio:"")#non fiction
a4=Author.create!(firstname:"Ta-Nehisi", lastname:"Coates", img:"https://images.gr-assets.com/authors/1595285597p8/1214964.jpg", bio:"") #fiction
a5=Author.create!(firstname:"Toni", lastname:"Morrison", img:"https://images.gr-assets.com/authors/1494211316p8/3534.jpg", bio:"")#fiction
a6=Author.create!(firstname:"Angie", lastname:"Thomas", img:"https://images.gr-assets.com/authors/1471998209p8/15049422.jpg", bio:"")#fiction

g1=Genre.create!(name: "non fiction")
g2=Genre.create!(name: "fiction")


Book.create!(title: "The Water Dancer", year_published: 2019, cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1549993860l/43982054.jpg", author: a4)
Book.create!(title: "Beloved", year_published:2004 , cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1347984578l/6149.jpg", author:a5 )
Book.create!(title: "The Hate U Give", year_published:2017 , cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1476284759l/32075671._SY475_.jpg", author: a6)
Book.create!(title: "I Know Why the Caged Bird Sings", year_published:1993 , cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1327957927l/13214.jpg", author:a1 )
Book.create!(title: "The New Jim Crow: Mass Incarceration in the Age of Colorblindness", year_published:2010 , cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328751532l/6792458.jpg", author: a2)
Book.create!(title: "Becoming", year_published:2018 , cover_img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1528206996l/38746485.jpg", author:a3 )
