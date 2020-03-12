#inlezen van de data

# Er wordt een json file opgehaald van almere parking
db <- mongo(collection = "almereparkingjson",
            url = sprintf(
              "mongodb://%s:%s@%s/%s",
              .conf$database$user,
              .conf$datavase$password,
              "almereparking"))

parking <- db$find()

# Of lees de CSV van ooit
#het lijkt erop dat als extra ook nog een csv wordt opgehaald. 
parking <- read.csv("data/almere_parking.csv")

# Kaart

k <- read_excel("data/park.xlsx")
