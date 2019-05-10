Product.create!([
  {name: "Godzilla", price: "135.0", image_url: "https://cdn10.bigcommerce.com/s-rpnfvj/products/4899/images/82025/item_0000012804_2gfwTzU1_01__57170.1547017671.1280.1280.jpg?c=2", description: "The newly designed King of the Monsters figure for the upcoming 'Godzilla King of the Monsters'", instock: true, supplier_id: 3},
  {name: "King Ghidorah", price: "195.0", image_url: "https://aa1a5178aef33568e9c4-a77ea51e8d8892c1eb8348eb6b3663f6.ssl.cf5.rackcdn.com/p/full/fc97efbe-5f61-446b-88e7-628ac68f25e5.jpg", description: "The 2019 model for Godzilla's legendary three headed dragon arch enemy.", instock: true, supplier_id: 3},
  {name: "Rodan", price: "115.0", image_url: "https://cdn.shopify.com/s/files/1/1126/8976/products/unnamed_35_2048x@2x.jpg?v=1550459593", description: "The fire bird who can create hurricanes with his wings brought ot life with his new design for 'Godzilla King of the Monsters'", instock: true, supplier_id: 3},
  {name: "Mothra", price: "125.0", image_url: "http://shma-articulationseries.com/assets/dttajwmu4aacthn---copy.jpg", description: "Mothra the protector of Earth in her new design for the upcoming 'Godzilla King of the Monsters'", instock: true, supplier_id: 3},
  {name: "MechaGodzilla", price: "95.0", image_url: "https://www.gamestop.com/gs/images/content-pdp/Loot_images/188444b1.jpg", description: "The original alien created mech design to defeat Godzilla from 'Terror of MechaGodzilla'", instock: true, supplier_id: 1},
  {name: "Biollante", price: "145.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/81-U6hvEPVL._SX425_.jpg", description: "Recreation of the terrifying plant monster Biollante from 'Godzilla vs Biollante'", instock: true, supplier_id: 1},
  {name: "Destroyah", price: "135.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/61vEl-2s1IL._SL1102_.jpg", description: "One of the only monsters to defeat and kill Godzilla comes to life with this figure from 'Godzilla vs Destroyah'", instock: true, supplier_id: 2},
  {name: "SpaceGodzilla", price: "95.0", image_url: "https://i.pinimg.com/originals/3a/a6/2e/3aa62e0db3d1c63572c4947c6268f285.jpg", description: "The space version of the King of the Monsters from 'Godzilla vs SpaceGodzilla'", instock: true, supplier_id: 2},
  {name: "King Caesar", price: "100.0", image_url: "https://www.flossiesgifts.com/v/vspfiles/photos/DIA-XPLUS-25-KINGCAESAR-2.jpg", description: "Model for King Caesar the monster who is the master of martial arts.", instock: true, supplier_id: 1}
])
Supplier.create!([
  {name: "Toho", email: "tohocompany@toho.com", phone_number: "(857)-555-3847"},
  {name: "Monster Arts", email: "monsterarts@gmail.com", phone_number: "(458)-555-2190"},
  {name: "Legendary", email: "legendary@legendarypictures.com", phone_number: "(367)-555-9672"}
])
