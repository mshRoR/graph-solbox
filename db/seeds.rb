# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
solboxs = [30, 32, 34, 36, 37]
customers = ['Solshare Bengutari 1', 'Saju Pradhan', 'Md Helal Uddin', 'Raju Hoshen', 'Saju Alam']
batteries = [100, 30, 60, 60, 30]
panels = [150, 20, 45, 50, 20]
solboxs.each_with_index do |value, index|
    Solbox.where(id: value)
    .first_or_create!(customer: customers[index],
                      battery_size: batteries[index],
                      panel_size: panels[index])
end

cables = %w[c2 c4 c5 c6 c7 c8]
solbox_from = [30, 32, 36, 34, 34, 34]
solbox_to = [32, 36, 37, 37, 30, 32]
distances = [6, 12, 8, 8, 8, 4]
cables.each_with_index do |value, index|
    Cable.where(cable_identity: value)
    .first_or_create!(solbox_from_id: solbox_from[index],
                      solbox_to_id: solbox_to[index],
                      distance: distances[index])
end
                     