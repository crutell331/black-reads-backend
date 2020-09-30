require 'ipsum'

Author.delete_all
Book.delete_all
SubGenre.delete_all
BookSubGenre.delete_all

User.create(username: 'tashawn', password: '1234')
User.create(username: 'cj', password: '1234')
User.create(username: 'steph', password: '1234')



a1=Author.create!(name:"Maya Angelou", img:"https://images.gr-assets.com/authors/1379017377p8/3503.jpg", bio:20.sentences) #non fiction
a2=Author.create!(name:"Michelle Alexander", img:"https://images.gr-assets.com/authors/1399475863p8/3051490.jpg", bio:20.sentences)#non fiction
a3=Author.create!(name:"Michelle Obama", img:"https://pagesix.com/wp-content/uploads/sites/3/2020/09/michelle-obama-4.jpg?quality=80&strip=all", bio:20.sentences)#non fiction
a4=Author.create!(name:"Ta-Nehisi Coates", img:"https://images.gr-assets.com/authors/1595285597p8/1214964.jpg", bio:20.sentences) #fiction
a5=Author.create!(name:"Toni Morrison", img:"https://images.gr-assets.com/authors/1494211316p8/3534.jpg", bio:20.sentences)#fiction
a6=Author.create!(name:"Angie Thomas", img:"https://images.gr-assets.com/authors/1471998209p8/15049422.jpg", bio:20.sentences)#fiction


b1=Book.create!(title: "The Water Dancer", year_published: 2019, img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1549993860l/43982054.jpg", summary:20.sentences , author: a4)
b2=Book.create!(title: "Beloved", year_published:2004 , img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1347984578l/6149.jpg", summary:20.sentences , author:a5 )
b3=Book.create!(title: "The Hate U Give", year_published:2017 , img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1476284759l/32075671._SY475_.jpg", summary:20.sentences , author: a6)
b4=Book.create!(title: "I Know Why the Caged Bird Sings", year_published:1993 , img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1327957927l/13214.jpg", summary:20.sentences , author:a1 )
b5=Book.create!(title: "The New Jim Crow: Mass Incarceration in the Age of Colorblindness", year_published:2010 , img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1328751532l/6792458.jpg", summary:20.sentences , author: a2)
b6=Book.create!(title: "Becoming", year_published:2018 , img:"https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1528206996l/38746485.jpg", summary:20.sentences, author:a3 )

sg1=SubGenre.create(name: "Biographies & Memoirs", img: "https://www.scholastic.com/content/dam/teachers/articles/migrated-promotional-images/130201_rt_black_history2.jpg")
sg2=SubGenre.create(name: "Race Studies", img: "https://photos.prnewswire.com/prn/20140911/145593")
sg3=SubGenre.create(name: "Fantasy", img: "https://i.pinimg.com/474x/3d/12/d2/3d12d222f1d2372cd7c915a8ca452968.jpg")
sg4=SubGenre.create(name: "Historical Fiction", img:"https://media.npr.org/assets/img/2019/11/27/childrenofvirtueandvengeance-e9a2ed7478bfd08732d132b06d3535324e2fdf65.jpg")

BookSubGenre.create(book:b1 , sub_genre: sg3)
BookSubGenre.create(book:b2 , sub_genre: sg4 )
BookSubGenre.create(book:b2 , sub_genre: sg2 )
BookSubGenre.create(book:b3 , sub_genre: sg4)
BookSubGenre.create(book:b3 , sub_genre: sg2)
BookSubGenre.create(book:b4 , sub_genre:sg1 )
BookSubGenre.create(book:b5 , sub_genre:sg2 )
BookSubGenre.create(book:b6 , sub_genre:sg1 )
