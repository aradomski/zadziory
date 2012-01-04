# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Zadziory::Application.initialize!

REGIONS_PL = ["Dolno\u{015b}l\u{0105}skie","Kujawsko-pomorskie","Lubelskie","Lubuskie","\u{0141}\u{00f3}dzkie","Ma\u{0142}opolskie","Mazowieckie","Opolskie","Podkarpackie","Podlaskie","Pomorskie","\u{015a}l\u{0105}skie","\u{015a}wi\u{0119}tokrzyskie","Warmi\u{0144}sko-mazurskie","Wielkopolskie","Zachodniopomorskie"]
PLACE_TYPE = ["Mieszkanie","Dom","Dzia\u{0142}ka","Pok\u{00f3}j","Biuro","Gara\u{017c}","Magazyn"]
