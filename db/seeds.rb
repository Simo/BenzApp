# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Distributor.delete_all
open("/Users/elena/Sites/BApp/db/data/lista_distributori.csv") do |distributors|  
  distributors.read.each_line do |distributor|  
    provincia, comune, indirizzo, fulladdress, img_url, tipo, prezzo, prezzo_min = distributor.chomp.split(";")  
    Distributor.create!( :provincia => provincia, :comune => comune, :indirizzo => indirizzo, :fulladdress => fulladdress, :img_url => img_url, :tipo => tipo, :prezzo => prezzo, :prezzo_min => prezzo_min )  
    puts "aggiunto distributore di #{fulladdress}"
  end  
end