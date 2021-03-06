# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)

puts 'SETTING UP USERS'
[
  {
    :name => "Daren Warburton", :email => 'daren.sdw@gmail.com', :password => 'secret', :password_confirmation => 'secret'
  },
  {
    :name => "Beef & Frog", :email => 'beefandfrog@yahoo.com', :password => 'Ro1and', :password_confirmation => 'Ro1and'
  }
].each do |e|
  User.create(e)
end
puts 'All Users created'

puts 'SETTING UP ABOUT'
[
  {
    :name => 'general',
    :about => {
      :en => '## About us

Beef (Roland), and Frog (Carlos), love Lisbon and Portugal and have chosen to live here. We hope that by having renovated a traditional building, located at Cal&cedil;ada Nova do Col&egrave;gio 37-41, in an historic central "bairro" that you\'ll be able to get the best out of Lisbon, at your own pace and maybe love it like we do. We also hope that with our activities we will be able to have a positive effect on our local community.

Our philosophy is that everyone has the capacity to make a difference and hope that our actions will be a step towards this.

We\'ve travelled a lot and enjoy experiencing the local life combined with the freedom, privacy and independence that self catering apartments offer as an alternative to hotels and hostels, and think that our apartments are great whether you are travelling for pleasure or business!   

## Prices

We charge a flat fee all year round, ranging from &euro;45-&euro;70 per night depending upon which of the 4 apartments is booked, with the condition that minimum rental is for 4 nights, with at least 50% being paid at the time of booking by bank transfer, and the balance on arrival.

For stays in excess of 2 weeks, ask about our discounts.',
      :pt => '## Sobre n&oacute;s

Content_about text for portuguese part

## Pre&cedil;os

Content_prices text for portuguese part',
      :fr => 'fr title_about

Fr content_about

fr title_prices

fr content_prices',
    },
    :apartments => {
      :en => '## Apartments
      
Our 1 apartment and 3 studios, (suitable for individuals, friends and groups)  are in our  building set over 3 floors, that also has local tenants. It is a typical Portuguese building about 150 years old,  located at Cal&cedil;ada Nova do Col&egrave;gio 37-41, which is in a quiet central traditional historic residential area, 5 minutes walk from downtown Lisbon. 

Each of the apartments is modern and well equipped, includes WiFi, Cable Tv, washing machine, sheets and towels.

Note: If you have difficulties climbing stairs we recommend the apartment on the ground floor as in keeping with the construction period the stairs within the building are steep.

A cleaning service during your stay can be provided for an additional charge at request.',
      :pt => '## Apartamentos
      
Content_apartments text for portuguese part',
      :fr => '## fr title_apartments
      
fr content_apartments',
    }
  }
].each do |e|
  About.create(e)
end
puts 'All About created'

puts 'SETTING UP APARTMENTS'
[
  {
    :name => {
      :en => "1 bed apartment ground floor",
      :pt => "",
      :fr => "",
    },
    :key_name => "1 bed apartment ground floor",
    :price => "45.00",
    :sleeps => "2",
    :bedrooms => "1",
    :studio => false,
    :bathrooms => "1",
    :size => "50",
    :kitchen => true,
    :sitting_room => true,
    :floor => {
      :en => "1st",
      :pt => "",
      :fr => "",
    },
    :description_short => {
      :en => "Beautiful 1st floor apartment",
      :pt => "",
      :fr => "",
    },
    :description_long => {
      :en => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
      
Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.",
      :pt => "",
      :fr => "",
    },
    :address => "Calcada Nova do Colegio 37, Lisboa, Portugal",
    :longitude => "-9.1383139",
    :latitude => "38.7169993",
  },
  {
    :name => {
      :en => "Studio Apartment 2 dto",
      :pt => "",
      :fr => "",
    },
    :key_name => "studio apartment 2 dto",
    :price => "45",
    :sleeps => "2",
    :bedrooms => "",
    :studio => true,
    :bathrooms => "1",
    :size => "45",
    :kitchen => true,
    :sitting_room => true,
    :floor => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :description_short => {
      :en => "Beautiful studio flat",
      :pt => "",
      :fr => "",
    },
    :description_long => {
      :en => "Beautiful studio flat...",
      :pt => "",
      :fr => "",
    },
    :address => "Rua Almeida e Sousa 33, Lisboa, Portugal",
    :longitude => "-9.1659974",
    :latitude => "38.7173664",
  },
  {
    :name => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :key_name => "studio apartment 2 esq",
    :price => "",
    :sleeps => "",
    :bedrooms => "",
    :studio => true,
    :bathrooms => "",
    :size => "",
    :kitchen => true,
    :sitting_room => true,
    :floor => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :description_short => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :description_long => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :logo => ""
  },
  {
    :name => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :key_name => "other",
    :price => "",
    :sleeps => "",
    :bedrooms => "",
    :studio => true,
    :bathrooms => "",
    :size => "",
    :kitchen => true,
    :sitting_room => false,
    :floor => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :description_short => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :description_long => {
      :en => "",
      :pt => "",
      :fr => "",
    },
    :logo => ""
  }
].each do |e|
  Apartment.create(e)
end
puts 'All Apartments created'