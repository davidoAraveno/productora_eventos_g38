# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Concert.destroy_all
Group.destroy_all
Group.create(
    [
        {
            name: 'los borbotones',
            members: 5,
            debut: '1980/4/15',
            genre: 'male'
        },
        {
            name: 'los malos',
            members: 3,
            debut: '2000/1/20',
            genre: 'male'
        },
    ]
)

Group.all.each do |i|
    Concert.create(
        [
            {
                name: "concierto #{i.name}",
                audience: 100,
                date: '2021/5/23',
                group_id: i.id
            }
        ]
    )
end