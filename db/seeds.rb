# encoding: UTF-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name: 'Chicago' }, { :name: 'Copenhagen' }])
#   Mayor.create(:name: 'Daley', :city: cities.first)

puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)


puts 'SETTING UP USERS'
User.create(name: "Daren Warburton", email: 'daren.sdw@gmail.com', password: 'secret', password_confirmation: 'secret')
User.create(name: "Beef & Frog", email: 'beefandfrog@yahoo.com', password: 'Ro1and', password_confirmation: 'Ro1and')
puts 'All Users created'


puts 'SETTING UP ABOUT'
About.create(
   { about: "## About us

We chose our company name to reflect the mix that we are; English and French living in Portugal. We  love  Lisbon and  Portugal for the quality of life, culture,  history, delicious food,  friendly people and great weather, and hope that after visiting you'll feel the same.  \r\n\r\nThe Beef & Frog  building is located at  Calçada Nova do Colégio 37-41 which is in a quiet historical safe central residential “bairro”, 5 minutes walk from downtown Lisbon      ( Rossio/Restauradores)  where everyone knows everyone and where local commerce still exists.

Our 4  holiday apartments are comfortable,  modern and practical , yet well integrated into this typical 19th century historical construction giving you the chance to mix with the locals in an area without many tourists.

We count ourselves lucky that through our business we have the chance to meet and get to know so many nice people coming from all corners of the world. For reviews: Use google and search for  \"Beef and Frog \" and see the reviews on tripadvisor.

At Beef & Frog everyone is welcome, so hope to see you soon; and of course we take pride in what we do!\r\n \r\nRoland(English) & Carlos(French)\r\n\r\n## Prices\r\n\r\nWe charge the same nightly rates all year round, €50 for the studios and €65 for our ground floor 1 bed apartment . Minimum rental is for 4 nights, with at least 50% being paid as a deposit.\r\n\r\n\r\n## Philosophy\r\n\r\nOur philosophy is that everyone has the capacity to make a difference and we hope that our activities and your spending in the local restaurants and shops  will help preserve a way of life which is part of Lisbon´s charm and of which we are now a part of. In line with our philosophy we’ve decided that €5 of every booking will be put aside to be used to benefit the area or particular residents;We are also the main sponsor of the  annual “open studio event” in Lisbon for contemporary artists, organised by the Association Castelo D’If, of which \"Frog\" is the president.<br/><br/>",
    pt: "## Sobre nós\r\n\r\nContent_about text for portuguese part\r\n\r\n## Preços\r\n\r\nContent_prices text for portuguese part",
    fr: "## Sur nous,\r\n\r\nNous avons choisi le nom de notre compagnie afin de souligner nos nationalités; anglaise et française au Portugal.\r\nNous aimons vivre à Lisbonne pour sa qualité de vie, sa culture, son patrimoine, ses excellents plats, l’accueil chaleureux de sa population, son très beau climat... et nous espérons que vous partagerez les mêmes sentiments lors de votre visite.\r\nBeef & Frog immeuble est à l’adresse ; Calçada Nova do Colegio 37 -41, qui est une ruelle tranquille dans un quartier historique, traditionnel et central « Bairro ». A 5 minutes à pied du centre ville (Rossio/Restauradores) où tout le monde se connait et où il existe encore des petits commerces de proximités. Nos 4 appartements pour vacances sont confortables, modernes et pratiques ; très bien intégrés dans cette construction du 19 ème siècle qui vous plongera au cœur d’une vie locale dans un quartier pas très touristique. \r\nNous nous considérons chanceux également de pouvoir rencontrer autant de personnes vraiment sympathiques venant des quatre coins du monde avec cette activité professionnelle! Utilisez Google recherche et regardez a « beefandfrog » les commentaires des autres visiteurs sur www.tripadvisor.com\r\nChez Beef & Frog tous le monde est très bien venue, aussi nous espérons vous voir très bientôt.\r\nRoland (Anglais) & Carlos (Français)\r\n\r\n\r\n##Prix\r\nNous appliquons un  tarif unique par nuit tout au long de l’année, 50€ pour les studios et 65€ pour le T1 appartement au RDC. Un minimum de 4 nuits réservation est nécessaire avec au moins 50% de la location payée comme garantie de réservation. \r\n\r\n##Philosophie\r\nNotre philosophie est que nous avons tous la capacité de faire une action différente et nous espérons que notre activité et votre présence sera bénéfique dans le quartier avec ces petits commerces et restaurants, tout en préservant cette vie typique et traditionnelle qui fait partie du charme de Lisbonne et dont nous sommes maintenant acteurs. Dans la continuité de notre philosophie, nous avons décidé que 5€ seront mis à part pour être utilisé dans l’amélioration de la vie locale du quartier ou d’une personne résidente le nécessitant, et cela pour chaque réservation. Tout comme nous sommes le sponsor principal de l’ouverture d’ateliers d’artistes plasticiens contemporains,  organisées annuellement à Lisbonne par l’association « Castelo D’If ».\r\n" },
  apartments: { "## Apartments\r\n      \r\nOur 1 apartment and 3 studios are in our  building set over 3 floors, which is located at  Calçada nova do Colégio 37-41 and have been designed with the active traveller in mind. \r\n\r\nThe 1 bed apartment on the ground floor sleeps 1-4 people, and each of the studio apartments sleep 1-2 people, so we have combinations which offer plenty of flexibility for different group sizes.\r\n\r\nSmoking is not permitted in the apartments\r\n\r\nAt request, a cleaning service during your stay can be provided for an additional charge of €6 per hour  to be paid directly to the cleaner.\r\n",
    pt: "## Apartamentos\r\n      \r\nContent_apartments text for portuguese part",
    fr: "## fr title_apartments\r\n      \r\nfr content_apartments" },
  apartments_bottom: { en: "",
    pt: "",
    fr: "" },
  apartments_top: { en: "The 1 bed apartment on the ground floor sleeps 1-4 people, and each of the studio apartments sleep 1-2 people. All studio apartments have a double bed and not twin beds. Washing machine, TV and free wifi in all apartments.\r\nPrices per night are €65 for the ground floor apartment and €50 for each of the studios.\r\n\r\n\r\n\r\nOur apartments are non smoking which means that smoking is not permitted inside the apartments, so we ask guests who are smokers and want to stay with us to respect this condition which is not flexible.\r\nSorry but pets are not allowed.\r\n",
    fr: "Le T1 au rez-de-chaussée a une capacité d’accueil pour 1 à 4 personnes et  chacun des studios de 1 à 2 personnes. Tous les appartements ont un lit double (pas de lit à une place) - machine a laver le linge, TV câble et connexion wifi gratuite dans tous les appartements.  Le prix par nuit est de 65€ pour le T1 au RDC et de 50€ pour chacun des studios.\r\nNos appartements sont non fumeur ce qui signifie qu’il n’est pas autorisée de fumer dans les appartements  et nous demandons aux fumeurs qui désirent rester avec nous de respecter cette condition. Nous sommes désolés mais les animaux domestiques ne sont pas autorisés.\r\n" },
  contact: "Our preferred method of contact is via  Email because we are not always available to take phone calls and it's good to have a written record of what is requested to avoid misunderstandings-please use the contact form or email link that is below.\r\n\r\nAlternatively, Text to +351 965829945 ( Roland) or +351 927066671 ( Carlos)\r\n\r\n House phone +351 210197894\r\n\r\nThanks\r\n\r\nRoland & Carlos\r\n\r\n",
  name: "general")
puts 'All About created'

puts 'SETTING UP APARTMENTS'
Apartment.create(name: [
    en: "1 bed apartment ground floor",
    pt: "",
    fr: ""],
  key_name: "1 bed apartment ground floor",
  price: "45.00",
  sleeps: "2",
  bedrooms: "1",
  studio: false,
  bathrooms: "1",
  size: "50",
  kitchen: true,
  sitting_room: true,
  floor: [
    en: "1st",
    pt: "",
    fr: ""],
  description_short: [
    en: "Beautiful 1st floor apartment",
    pt: "",
    fr: ""],
  description_long: [
    en: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
    
Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.",
    pt: "",
    fr: ""],
  address: "Calcada Nova do Colegio 37, Lisboa, Portugal",
  longitude: "-9.1383139",
  latitude: "38.7169993")
  
Apartment.create(name: [
    en: "Studio Apartment 2 dto",
    pt: "",
    fr: ""],
  key_name: "studio apartment 2 dto",
  price: "45",
  sleeps: "2",
  bedrooms: "",
  studio: true,
  bathrooms: "1",
  size: "45",
  kitchen: true,
  sitting_room: true,
  floor: [
    en: "",
    pt: "",
    fr: ""],
  description_short: [
    en: "Beautiful studio flat",
    pt: "",
    fr: ""],
  description_long: [
    en: "Beautiful studio flat...",
    pt: "",
    fr: ""],
  address: "Rua Almeida e Sousa 33, Lisboa, Portugal",
  longitude: "-9.1659974",
  latitude: "38.7173664")
  
Apartment.create(name: [
    en: "",
    pt: "",
    fr: ""],
  key_name: "studio apartment 2 esq",
  price: "",
  sleeps: "",
  bedrooms: "",
  studio: true,
  bathrooms: "",
  size: "",
  kitchen: true,
  sitting_room: true,
  floor: [
    en: "",
    pt: "",
    fr: ""],
  description_short: [
    en: "",
    pt: "",
    fr: ""],
  description_long: [
    en: "",
    pt: "",
    fr: ""],
  address: "Rua Almeida e Sousa 33, Lisboa, Portugal",
  longitude: "-9.1659974",
  latitude: "38.7173664")

Apartment.create(name: [
    en: "",
    pt: "",
    fr: ""],
  key_name: "other",
  price: "",
  sleeps: "",
  bedrooms: "",
  studio: true,
  bathrooms: "",
  size: "",
  kitchen: true,
  sitting_room: false,
  floor: [
    en: "",
    pt: "",
    fr: ""],
  description_short: [
    en: "",
    pt: "",
    fr: ""],
  description_long: [
    en: "",
    pt: "",
    fr: ""],
  address: "Rua Almeida e Sousa 33, Lisboa, Portugal",
  longitude: "-9.1659974",
  latitude: "38.7173664")
puts 'All Apartments created'