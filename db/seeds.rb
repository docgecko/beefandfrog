# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts 'EMPTY THE MONGODB DATABASE'
Mongoid.master.collections.reject { |c| c.name =~ /^system/}.each(&:drop)
puts 'SETTING UP ABOUT'
[
  {
    :title_about => {
      :en => 'About us',
      :pt => 'Sobre n&oacute;s',
      :fr => 'fr title_about',
    },
    :content_about => {
      :en => 'Beef (Roland), and Frog (Carlos), love Lisbon and Portugal and have chosen to live here. We hope that by having renovated a traditional building, located at Cal&cedil;ada Nova do Col&egrave;gio 37-41, in an historic central "bairro" that you\'ll be able to get the best out of Lisbon, at your own pace and maybe love it like we do. We also hope that with our activities we will be able to have a positive effect on our local community.

Our philosophy is that everyone has the capacity to make a difference and hope that our actions will be a step towards this.

We\'ve travelled a lot and enjoy experiencing the local life combined with the freedom, privacy and independence that self catering apartments offer as an alternative to hotels and hostels, and think that our apartments are great whether you are travelling for pleasure or business!',
      :pt => 'content_about text for portuguese part',
      :fr => 'fr content_about',
    },
    :title_prices => {
      :en => 'Prices',
      :pt => 'Pre&cedil;os',
      :fr => 'fr title_prices',
    },
    :content_prices => {
      :en => 'We charge a flat fee all year round, ranging from &euro;45-&euro;70 per night depending upon which of the 4 apartments is booked, with the condition that minimum rental is for 4 nights, with at least 50% being paid at the time of booking by bank transfer, and the balance on arrival.

We think that our prices already offer outstanding value for money but in keeping with our philosophy, we will offer a 1 day discount for stays of 2 weeks, 3 day discount for stays of 3 weeks and up to a 6 day discount for a stay of a month. BUT we request that half of the discount is donated to a good cause, your choice or ours. If you leave the choice to us, the money will go into a separate account until we\'ve decided on what community project to support or initiate and inform you how it was used.',
      :pt => 'content_prices text for portuguese part',
      :fr => 'fr content_prices',
    },
    :title_apartments => {
      :en => 'Apartments',
      :pt => 'Apartamentos',
      :fr => 'fr title_apartments',
    },
    :content_apartments => {
      :en => 'Our 1 apartment and 3 studios, (suitable for individuals, friends and groups)  are in our  building set over 3 floors, that also has local tenants. It is a typical Portuguese building about 150 years old,  located at Cal&cedil;ada Nova do Col&egrave;gio 37-41, which is in a quiet central traditional historic residential area, 5 minutes walk from downtown Lisbon. 

Each of the apartments is modern and well equipped, includes WiFi, Cable Tv, washing machine, sheets and towels.

Note: If you have difficulties climbing stairs we recommend the apartment on the ground floor as in keeping with the construction period the stairs within the building are steep.

A cleaning service during your stay can be provided for an additional charge at request.',
      :pt => 'content_apartments text for portuguese part',
      :fr => 'fr content_apartments',
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
      :en => "",
      :pt => "",
      :fr => "",
    },
    :price => "",
    :sleeps => "",
    :bedrooms => "",
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
    :deacription_long => {
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