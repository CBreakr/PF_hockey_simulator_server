
def addCities
    puts "Cities"

    cities = [
        
    ]

    cities.each do |c|
        SampleCityName.create(name: c[0], is_east: c[1])
    end
end

=begin

================================

EAST
==========
["New York City", true],
Toronto
Montreal
Philadelphia
Boston
Ottawa
Detroit

Jacksonville
Columbus
Charlotte
Washington DC
Baltimore
Louisville
Hamilton
Quebec City
Atlanta
Raliegh
Miami
Tampa
New Orleans
Cleveland
Orlando
Newark
Jersey City
London
Toledo
Pittsburgh

Grand Rapids
Missisaugua
Brampton
Indianapolis
Cincinnati
Fort Wayne
St Petersburgh
Greensboro
Kitchener
Windsor
Laval
Gatineau
St John's
Lexington


WEST
==========
Los Angeles
Chicago
Dallas
Calgary
Winnipeg
Vancouver
Denver

Houston
Phoenix
San Antonio
San Diego
San Jose
Austin
Edmonton
San Francisco
Seattle
El Paso
Fort Worth
Nashville
Portland
Las Vegas
Milwaukee
Anaheim
Tuscon
St Louis
Minneapolis
Kansas City

Albuquerque
Fresno
Sacramento
Colorado Spring
Surrey
Oakland
Memphis
Oklahoma City
Omaha
Wichita
Saint Paul
Saskatoon
Madison
Regina

================================
================================
================================

Lincoln
Scottsdale
Reno
Burnaby

=end

