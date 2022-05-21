## create resources
ruby = Resource::Regular.find_or_create_by!(name: 'Ruby')
diamond = Resource::Regular.find_or_create_by!(name: 'Diamond')
gold = Resource::Gold.find_or_create_by!(name: 'Gold')

## create cards
card1 = Card::Regular.find_or_create_by!(name: 'card1', value: 1, level: 1, resource: ruby)
CardResource.create!(card: card1, resource: ruby, amount: 2)
CardResource.create!(card: card1, resource: diamond, amount: 1)

card2 = Card::Regular.find_or_create_by!(name: 'card2', value: 2, level: 1, resource: diamond)
CardResource.create!(card: card2, resource: diamond, amount: 2)

card3 = Card::Regular.find_or_create_by!(name: 'card3', value: 3, level: 2, resource: ruby)
CardResource.create!(card: card3, resource: ruby, amount: 3)
CardResource.create!(card: card3, resource: diamond, amount: 2)