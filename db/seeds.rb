# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

puts "🗑️ Destroying all routes..."
Route.destroy_all


puts "🗑️ Destroying all chatrooms..."
Chatroom.destroy_all

puts "🗑️ Destroying all users..."
User.destroy_all

routes = [
  { address: "Bondi to Coogee Walk, Sydney, NSW", distance: 6.0 },
  { address: "Albert Park Lake, Melbourne, VIC", distance: 4.8 },
  { address: "Kangaroo Point Cliffs, Brisbane, QLD", distance: 5.0 },
  { address: "Kings Park and Botanic Garden, Perth, WA", distance: 7.0 },
  { address: "Torrens River, Adelaide, SA", distance: 8.4 }
]

puts "Creating routes..."
routes.each do |route|
  Route.create!(route)
end

puts 'Finding routes in Australia...'
Route.create!(
  [
    {
      address: "Bondi Beach, Sydney, NSW",
      name: "Bondi to Coogee Coastal Walk",
      distance: 6.0,
      description: "A stunning coastal walk from Bondi Beach to Coogee Beach, featuring breathtaking ocean views, cliffs, and beaches along the way.",
      image: "routes/bondi.jpg"
    },
    {
      address: "Albert Park, Melbourne, VIC",
      name: "Albert Park Lake",
      distance: 5.0,
      description: "A flat and scenic loop around Albert Park Lake, offering views of the Melbourne skyline and the tranquil waters of the lake.",
      image: "route/albert_park_melbourne.jpg"
    },
    {
      address: "Kangaroo Point, Brisbane, QLD",
      name: "Kangaroo Point Cliffs",
      distance: 7.0,
      description: "Run along the Brisbane River with stunning views of the city, passing by the iconic Kangaroo Point Cliffs and Story Bridge.",
      image: "routes/brisbane city.jpg"
    },
    {
      address: "King's Park, Perth, WA",
      name: "Kings Park and Botanic Garden",
      distance: 6.0,
      description: "A scenic route through one of the largest inner-city parks in the world, offering panoramic views of Perth and the Swan River.",
      image: "routes/kingspark.jpg"
    },
    {
      address: "The Esplanade, Cairns, QLD",
      name: "Cairns Esplanade",
      distance: 3.5,
      description: "A leisurely run along the Cairns Esplanade, with views of the Coral Sea, public art installations, and lush tropical greenery.",
      image: "routes/woman running.jpg"
    },
    {
      address: "Mt. Ainslie Drive, Canberra, ACT",
      name: "Mount Ainslie",
      distance: 4.5,
      description: "A challenging run with a rewarding view from the top of Mount Ainslie, overlooking Canberra's city layout and surrounding nature.",
      image: "routes/canberra.jpg"
    },
   {
      address: "Manly Beach, Sydney, NSW",
      name: "Manly to Spit Bridge Walk",
      distance: 10.0,
      description: "A beautiful coastal trail from Manly Beach to Spit Bridge, featuring bushland, hidden coves, and stunning harbour views.",
      image: "routes/manly beach.jpg"
    },
    {
      address: "The Tan Track, Melbourne, VIC",
      name: "Royal Botanic Gardens",
      distance: 3.8,
      description: "A popular track around the Royal Botanic Gardens, offering a mix of flat and undulating terrain with picturesque garden views.",
      image: "routes/melbourne.jpg"
    },
    {
      address: "South Bank, Brisbane, QLD",
      name: "South Bank and Kangaroo Point",
      distance: 5.5,
      description: "A scenic riverside route along South Bank and the Brisbane River, passing by parklands, cultural sites, and city views.",
      image: "routes/southbank.jpg"
    },
    {
      address: "Cottesloe Beach, Perth, WA",
      name: "Cottesloe to Swanbourne Beach",
      distance: 5.0,
      description: "A coastal run along the Indian Ocean from Cottesloe Beach to Swanbourne Beach, known for its clear waters and sandy shores.",
      image: "routes/perth.jpg"
    },
    {
      address: "Yarra River, Melbourne, VIC",
      name: "Yarra River Trail",
      distance: 8.0,
      description: "A scenic trail along the Yarra River, providing a peaceful escape from the city with views of the river and surrounding parklands.",
      image: "routes/river.jpg"
    },
    {
      address: "Stamford Hill Road, Port Lincoln, SA",
      name: "Lincoln National Park",
      distance: 6.0,
      description: "A rugged trail in Lincoln National Park, offering coastal views, native bushland, and the chance to see local wildlife.",
      image: "routes/port.jpg"
    },
    {
      address: "Glenelg Beach, Adelaide, SA",
      name: "Glenelg to Brighton Coastal Trail",
      distance: 8.0,
      description: "A scenic coastal trail from Glenelg to Brighton, featuring sandy beaches, coastal parks, and ocean views.",
      image: "routes/manly beach.jpg"
    },
    {
      address: "Hobart, TAS",
      name: "Battery Point to Salamanca Place",
      distance: 4.0,
      description: "A historical route starting from Battery Point, winding through Salamanca Place with its vibrant market and waterfront views.",
      image: "routes/hobart.jpg"
    },
    {
      address: "Lake Burley Griffin, Canberra, ACT",
      name: "Lake Burley Griffin Loop",
      distance: 5.0,
      description: "A loop around Lake Burley Griffin, offering serene water views, landscaped parks, and iconic Canberra landmarks.",
      image: "routes/canberra.jpg"
    },
    {
      address: "Seacliff Esplanade, Adelaide, SA",
      name: "Seacliff to Marino",
      distance: 5.5,
      description: "A coastal route along Seacliff Esplanade, with stunning views of the ocean, rocky cliffs, and sandy beaches.",
      image: "routes/adelaidebeach.jpg"
    },
    {
      address: "New Farm Park, Brisbane, QLD",
      name: "New Farm Park to Teneriffe",
      distance: 4.5,
      description: "A scenic run along the Brisbane River, starting from New Farm Park, through the trendy suburb of Teneriffe, with riverside views and historic landmarks.",
      image: "routes/brisbane city.jpg"
    },
    {
      address: "West End, Brisbane, QLD",
      name: "West End to South Brisbane Loop",
      distance: 6.0,
      description: "A cultural route that takes you through the eclectic West End neighborhood, along the river, and into South Brisbane, offering a mix of urban and riverside scenery.",
      image: "routes/brisbanestory.jpg"
    },
    {
      address: "Mount Coot-tha, Brisbane, QLD",
      name: "Mount Coot-tha Summit Track",
      distance: 1.9,
      description: "A challenging uphill run to the top of Mount Coot-tha, rewarding runners with panoramic views of Brisbane and the surrounding area.",
      image: "routes/brisbane city.jpg"
    },
    {
      address: "Brisbane Botanic Gardens, Mount Coot-tha, Brisbane, QLD",
      name: "Brisbane Botanic Gardens Loop",
      distance: 2.5,
      description: "A relaxing run through the beautiful Brisbane Botanic Gardens at Mount Coot-tha, featuring well-maintained paths and diverse plant collections.",
      image: "routes/woman running 3.jpg"
    },
    {
      address: "Story Bridge, Brisbane, QLD",
      name: "Story Bridge to Howard Smith Wharves",
      distance: 3.5,
      description: "A scenic route starting at Story Bridge, descending to the vibrant Howard Smith Wharves, with stunning views of the river and city skyline.",
      image: "routes/brisbanestory.jpg"
    },
    {
      address: "Roma Street Parkland, Brisbane, QLD",
      name: "Roma Street Parkland Circuit",
      distance: 2.0,
      description: "A lush, green route through Roma Street Parkland, offering manicured gardens, water features, and a peaceful atmosphere in the heart of the city.",
      image: "routes/brisbane city.jpg"
    },
    {
      address: "Bulimba, Brisbane, QLD",
      name: "Bulimba Riverside Walk",
      distance: 4.0,
      description: "A pleasant riverside run along Oxford Street in Bulimba, past cafes and shops, with views of the Brisbane River and nearby parklands.",
      image: "routes/river.jpg"
    },
    {
      address: "Opera House, Sydney, NSW",
      name: "Sydney Opera House to Mrs Macquarie's Chair",
      distance: 3.5,
      description: "A picturesque run starting from the iconic Sydney Opera House, along the waterfront to Mrs Macquarie's Chair, offering stunning views of the Sydney Harbour.",
      image: "routes/sydneyopera.jpg"
    },
    {
      address: "Centennial Park, Sydney, NSW",
      name: "Centennial Park Loop",
      distance: 3.8,
      description: "A flat and scenic loop around Centennial Park, surrounded by lush greenery, ponds, and open spaces, ideal for a leisurely run.",
      image: "routes/sydneypark.jpg"
    },
    {
      address: "Manly Beach, Sydney, NSW",
      name: "Manly to Shelly Beach",
      distance: 1.5,
      description: "A short but scenic route from Manly Beach to the serene Shelly Beach, with coastal views and a tranquil atmosphere.",
      image: "routes/manly beach.jpg"
    },
    {
      address: "Sydney Harbour Bridge, Sydney, NSW",
      name: "Sydney Harbour Bridge to Milsons Point",
      distance: 2.0,
      description: "A unique run across the iconic Sydney Harbour Bridge, ending at Milsons Point, with breathtaking views of the harbour and skyline.",
      image: "routes/sydneyharb.jpg"
    },
    {
      address: "Iron Cove Bridge, Sydney, NSW",
      name: "Bay Run",
      distance: 7.0,
      description: "A popular and scenic loop around Iron Cove, known as the Bay Run, offering waterfront views and a flat, well-maintained path.",
      image: "routes/sydney-skyline.jpg"
    },
    {
      address: "Coogee Beach, Sydney, NSW",
      name: "Coogee to Maroubra Coastal Walk",
      distance: 5.0,
      description: "A coastal trail from Coogee Beach to Maroubra Beach, featuring rocky cliffs, ocean vistas, and beach views.",
      image: "routes/woman running 2.jpg"
    },
    {
      address: "Royal Botanic Garden, Sydney, NSW",
      name: "Royal Botanic Garden Circuit",
      distance: 2.0,
      description: "A peaceful route through the Royal Botanic Garden, offering lush plant life, tranquil ponds, and views of the harbour.",
      image: "routes/sydneypark.jpg"
    },
    {
      address: "Lane Cove National Park, Sydney, NSW",
      name: "Lane Cove Riverside Track",
      distance: 5.5,
      description: "A nature-filled route along the Lane Cove River, perfect for a tranquil escape into bushland, with chances to spot local wildlife.",
      image: "routes/trail.jpg"
    },
    {
      address: "Barangaroo Reserve, Sydney, NSW",
      name: "Barangaroo Reserve Loop",
      distance: 2.2,
      description: "A modern and scenic run around Barangaroo Reserve, offering views of Sydney Harbour and the city skyline.",
      image: "routes/trail.jpg"
    },
    {
      address: "The Tan Track, Melbourne, VIC",
      name: "Royal Botanic Gardens",
      distance: 3.8,
      description: "A popular loop around the Royal Botanic Gardens, known as 'The Tan', offering a mix of terrain and scenic views of gardens and the city skyline."
    },
    {
      address: "Albert Park Lake, Melbourne, VIC",
      name: "Albert Park",
      distance: 5.0,
      description: "A flat and scenic loop around Albert Park Lake, providing picturesque views of the lake and the Melbourne skyline, ideal for a steady run."
    },
    {
      address: "Princes Park, Carlton North, Melbourne, VIC",
      name: "Princes Park",
      distance: 3.2,
      description: "A flat and well-maintained track around Princes Park, popular among runners for its open spaces and nearby sporting facilities."
    },
    {
      address: "Merri Creek, Melbourne, VIC",
      name: "Merri Creek Trail",
      distance: 7.0,
      description: "A beautiful run along the Merri Creek Trail, winding through native bushland, parks, and scenic creek views, ideal for nature lovers."
    },
    {
      address: "Yarra Boulevard, Melbourne, VIC",
      name: "Yarra Bend Park",
      distance: 8.0,
      description: "An undulating route through Yarra Bend Park, offering views of the Yarra River and Melbourne's skyline, great for a challenging run.",
      image: "roures/kingspark.jpg"
    },
    {
      address: "St Kilda Beach, Melbourne, VIC",
      name: "St Kilda to Elwood",
      distance: 5.5,
      description: "A coastal run from St Kilda to Elwood, featuring sandy beaches, ocean views, and a lively atmosphere with cafes and parks along the way.",
      image: "routes/ocean.jpg"
    },
    {
      address: "Capital City Trail, Melbourne, VIC",
      name: "Capital City Trail",
      distance: 29.0,
      description: "A longer route that circles central Melbourne, offering diverse scenery including riverside paths, parks, and urban landscapes.",
      image: "routes/trail.jpg"
    },
    {
      address: "Brighton Beach, Melbourne, VIC",
      name: "Brighton Bathing Boxes",
      distance: 4.0,
      description: "A scenic beachside run starting at the iconic Brighton Bathing Boxes, known for their vibrant colors and beautiful beach views."
    },
    {
      address: "Docklands, Melbourne, VIC",
      name: "Docklands Waterfront",
      distance: 3.0,
      description: "A modern run along the Docklands Waterfront, offering views of the marina, modern architecture, and public art installations.",
      image: "routes/melbourne.jpg"
    },
    {
      address: "Fitzroy Gardens, Melbourne, VIC",
      name: "Fitzroy Gardens",
      distance: 2.5,
      description: "A picturesque route through the historic Fitzroy Gardens, with well-kept paths, beautiful trees, and charming garden features.",
      image: "routes/melbourne.jpg"
    },
    {
      address: "Kings Park, Perth, WA",
      name: "Kings Park and Botanic Garden",
      distance: 6.0,
      description: "A popular route through one of the largest inner-city parks in the world, offering panoramic views of Perth and the Swan River, along with lush gardens and bushland.",
      image: "routes/kingspark.jpg"
    },
    {
      address: "Cottesloe Beach, Perth, WA",
      name: "Cottesloe to Swanbourne Beach",
      distance: 5.0,
      description: "A scenic coastal run along the Indian Ocean, starting at the iconic Cottesloe Beach and heading towards Swanbourne Beach, featuring clear waters and sandy shores.",
      image: "routes/ocean.jpg"
    },
    {
      address: "Swan River, Perth, WA",
      name: "South Perth Foreshore",
      distance: 5.5,
      description: "A picturesque run along the South Perth Foreshore, offering stunning views of the Perth city skyline across the Swan River, popular for its flat, well-maintained paths.",
      image: "routes/river.jpg"
    },
    {
      address: "Burswood Park, Perth, WA",
      name: "Burswood Park Loop",
      distance: 4.0,
      description: "A pleasant loop around Burswood Park, featuring parkland, water features, and views of the city skyline and the Swan River.",
      image: "routes/perth pathway.jpg"
    },
    {
      address: "Hillarys Boat Harbour, Perth, WA",
      name: "Hillarys to Sorrento Beach",
      distance: 3.5,
      description: "A coastal run starting at Hillarys Boat Harbour, following the shore to Sorrento Beach, with beautiful ocean views and a lively atmosphere.",
      image: "routes/ocean.jpg"
    },
    {
      address: "Matilda Bay, Perth, WA",
      name: "Matilda Bay to UWA",
      distance: 3.0,
      description: "A serene run along the Swan River, passing by Matilda Bay and the University of Western Australia, with peaceful water views and shaded paths.",
      image: "routes/perth.jpg"
    },
    {
      address: "Lake Monger, Perth, WA",
      name: "Lake Monger Loop",
      distance: 3.5,
      description: "A popular loop around Lake Monger, offering a flat and scenic route with plenty of birdlife and views of the water.",
      image: "routes/perth pathway.jpg"
    },
    {
      address: "Riverside Drive, Perth, WA",
      name: "Riverside Drive to Elizabeth Quay",
      distance: 2.0,
      description: "A central city route along Riverside Drive, leading to the vibrant Elizabeth Quay area, with waterfront views and city sights.",
      image: "routes/perth.jpg"
    },
    {
      address: "Rottnest Island, WA",
      name: "Rottnest Island Coastal Trail",
      distance: 10.0,
      description: "A unique run on Rottnest Island, offering stunning coastal scenery, beaches, and opportunities to see the island’s famous quokkas.",
      image: "routes/trail.jpg"
    },
    {
      address: "Kalamunda, Perth, WA",
      name: "Kalamunda Zig Zag",
      distance: 3.0,
      description: "A historic and scenic route through the Kalamunda Zig Zag, offering panoramic views of Perth and the surrounding hills, particularly beautiful at sunrise or sunset.",
      image: "routes/perth.jpg"
    },
    {
      address: "Adelaide Park Lands, Adelaide, SA",
      name: "Park Lands Loop",
      distance: 6.0,
      description: "A loop around the Adelaide Park Lands, featuring a mix of greenery, historic buildings, and open spaces, offering a tranquil escape in the heart of the city.",
      image: "routes/adelaidepark.jpg"
    },
    {
      address: "Glenelg Beach, Adelaide, SA",
      name: "Glenelg to Brighton Beach",
      distance: 8.0,
      description: "A scenic coastal run from Glenelg Beach to Brighton Beach, providing beautiful ocean views, sandy shores, and a vibrant atmosphere with cafes and shops.",
      image: "routes/adelaidebeach.jpg"
    },
    {
      address: "Mawson Lakes, Adelaide, SA",
      name: "Mawson Lakes Loop",
      distance: 5.0,
      description: "A run around the picturesque Mawson Lakes, offering scenic water views, well-maintained paths, and opportunities to spot local wildlife.",
      image: "routes/adelaide.jpg"
    },
    {
      address: "Adelaide Hills, Adelaide, SA",
      name: "Mount Lofty Summit",
      distance: 7.0,
      description: "A challenging run to the summit of Mount Lofty, offering stunning panoramic views of the Adelaide region and a rewarding experience for those seeking a climb.",
      image: "routes/adelaidebeachstairs.jpg"
    },
    {
      address: "North Adelaide, Adelaide, SA",
      name: "North Adelaide Golf Course Loop",
      distance: 4.5,
      description: "A loop around the North Adelaide Golf Course, providing a scenic and flat route with views of the well-maintained greens and surrounding parkland.",
      image: "routes/adelaidepark.jpg"
    },
    {
      address: "Botanic Park, Adelaide, SA",
      name: "Botanic Park Circuit",
      distance: 2.5,
      description: "A pleasant and relaxing run through Botanic Park, featuring beautiful gardens, wide paths, and views of the nearby Adelaide Zoo and North Terrace.",
      image: "routes/adelaideprk.jpg"
    },
    {
      address: "St Peters, Adelaide, SA",
      name: "Linear Park Trail",
      distance: 5.5,
      description: "A scenic trail along the Torrens River, starting at St Peters and extending through Linear Park, offering lush greenery, riverside views, and a peaceful running environment.",
      image: "routes/trail.jpg"
    },
    {
      address: "Bonython Park, Adelaide, SA",
      name: "Bonython Park Loop",
      distance: 3.0,
      description: "A short and scenic loop in Bonython Park, featuring green open spaces, views of the Torrens River, and a relaxed running environment.",
      image: "routes/adelaidepark.jpg"
    },
    {
      address: "Hahndorf, Adelaide Hills, SA",
      name: "Hahndorf to Mount Lofty",
      distance: 9.0,
      description: "A scenic trail running from the charming town of Hahndorf to the summit of Mount Lofty, offering diverse landscapes, lush forests, and panoramic views.",
      image: "routes/adelaide.jpg"
    },
    {
      address: "Adelaide CBD, Adelaide, SA",
      name: "Adelaide Oval to Riverbank",
      distance: 3.0,
      description: "A city route starting at Adelaide Oval and running along the Riverbank, with views of the stadium, Torrens River, and nearby cultural attractions.",
      image: "routes/adelaidecbd.jpg"
    },
    {
      address: "Lake Burley Griffin, Canberra, ACT",
      name: "Lake Burley Griffin Loop",
      distance: 10.0,
      description: "A classic Canberra run around Lake Burley Griffin, offering picturesque views of the lake, national monuments, and cityscape.",
      image: "routes/canberramt.jpg"
    },
    {
      address: "Mount Ainslie, Canberra, ACT",
      name: "Mount Ainslie Summit Track",
      distance: 4.0,
      description: "A challenging climb to the summit of Mount Ainslie, providing panoramic views of Canberra and the surrounding regions.",
      image: "routes/canberramt.jpg"
    },
    {
      address: "Black Mountain, Canberra, ACT",
      name: "Black Mountain Nature Reserve",
      distance: 6.0,
      description: "A scenic run through the Black Mountain Nature Reserve, featuring bushland, elevated views, and diverse flora and fauna.",
      image: "routes/canberramt.jpg"
    },
    {
      address: "Commonwealth Park, Canberra, ACT",
      name: "Commonwealth Park Circuit",
      distance: 3.5,
      description: "A pleasant run through Commonwealth Park, featuring well-maintained paths, gardens, and views of Lake Burley Griffin.",
      image: "routes/canberra3.jpg"
    },
    {
      address: "Red Hill, Canberra, ACT",
      name: "Red Hill Track",
      distance: 5.0,
      description: "A scenic trail through Red Hill, offering views of the city and surrounding bushland, with a mix of forest paths and open areas.",
      image: "routes/canberra2.jpg"
    },
    {
      address: "Canberra Nature Park, Canberra, ACT",
      name: "Yarralumla Loop",
      distance: 7.0,
      description: "A scenic loop through Yarralumla, part of the Canberra Nature Park, featuring bushland trails, peaceful surroundings, and views of Lake Burley Griffin.",
      image: "routes/canberra.jpg"
    },
    {
      address: "Gungahlin, Canberra, ACT",
      name: "Gungahlin Town Centre to Mulligans Flat",
      distance: 8.0,
      description: "A run from Gungahlin Town Centre to Mulligans Flat, offering a mix of urban and bushland scenery with views of the local wildlife reserve.",
      image: "routes/canberra3.jpg"
    },
    {
      address: "Canberra Central, Canberra, ACT",
      name: "City Walk",
      distance: 2.5,
      description: "A short urban route through the heart of Canberra's Central Business District, featuring city landmarks, shops, and public art.",
      image: "routes/canberra2.jpg"
    },
    {
      address: "Mount Majura, Canberra, ACT",
      name: "Mount Majura Summit Trail",
      distance: 5.5,
      description: "A rugged trail leading to the summit of Mount Majura, providing spectacular views of Canberra and the surrounding countryside.",
      image: "routes/canberra.jpg"
    },
    {
      address: "Brindabella Ranges, Canberra, ACT",
      name: "Brindabella Ranges Trails",
      distance: 12.0,
      description: "A longer, more challenging route through the Brindabella Ranges, offering stunning mountain views, diverse terrain, and a true nature experience.",
      image: "routes/canberra.jpg"
    },
{
      address: "Royal National Park, Sydney, NSW",
      name: "Coastal Track",
      distance: 26.0,
      description: "A stunning coastal trail running from Bundeena to Otford, featuring rugged cliffs, secluded beaches, and lush rainforest.",
      image: "routes/sydeny.jpg"
    },
    {
      address: "Blue Mountains, NSW",
      name: "Six Foot Track",
      distance: 45.0,
      description: "A classic long-distance trail that crosses through remote bushland and offers spectacular views of the Blue Mountains.",
      image: "routes/woman running 2.jpg"
    },
    {
      address: "Great Ocean Road, VIC",
      name: "Great Ocean Walk",
      distance: 104.0,
      description: "A multi-day trail along the dramatic coastline of Victoria, featuring breathtaking ocean views, waterfalls, and diverse landscapes.",
      image: "routes/ocean.jpg"
    },
    {
      address: "Grampians National Park, VIC",
      name: "Pinnacles Trail",
      distance: 4.0,
      description: "A steep trail leading to the Pinnacles, offering panoramic views of the Grampians and rugged rock formations.",
      image: "routes/another woman running.jpg"
    },
    {
      address: "Glass House Mountains, QLD",
      name: "Mount Ngungun",
      distance: 2.8,
      description: "A short but steep climb to the summit of Mount Ngungun, offering spectacular views of the Glass House Mountains.",
      image: "routes/woman running.jpg"
    },
    {
      address: "Lamington National Park, QLD",
      name: "Border Track",
      distance: 21.0,
      description: "A trail that traverses the border between Queensland and New South Wales, featuring ancient rainforest and diverse wildlife.",
      image: "routes/woman running 2.jpg"
    },
    {
      address: "Flinders Ranges, SA",
      name: "Wilpena Pound",
      distance: 6.0,
      description: "A trail around the rim of Wilpena Pound, offering panoramic views of this ancient crater and the surrounding ranges.",
      image: "routes/woman running 3.jpg"
    },
    {
      address: "Kings Park, Perth, WA",
      name: "Kings Park Trails",
      distance: "Varies",
      description: "Multiple trails within Kings Park offer diverse running options with views of Perth’s skyline and the Swan River.",
      image: "routes/kingspark.jpg"
    },
    {
      address: "Cradle Mountain, TAS",
      name: "Overland Track",
      distance: 65.0,
      description: "A multi-day trek through some of Tasmania’s most stunning wilderness, featuring alpine meadows, rainforests, and rugged mountains.",
      image: "routes/cradle.jpg"
    }
  ]
)


User.create!(
  first_name: "Admin",
  last_name: "User",
  email: "admin@admin.com",
  password: "123456"
)


puts "Creating users..."
5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    address: Faker::Address.full_address
  )
end


puts "Creating chatrooms..."
Chatroom.create!(
  user_one_id: User.all.sample.id,
  user_two_id: User.all.sample.id
)

Route.all.each do |route|
  saved_route = SavedRoute.new()
  saved_route.user = User.first
  saved_route.route = route
  saved_route.save!
end



puts "✅ Finished!"
