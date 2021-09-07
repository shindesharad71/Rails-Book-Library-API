# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create([
    {
        name: 'Things Fall Apart',
        description: 'Things Fall Apart is the debut novel by Nigerian author Chinua Achebe, first published in 1958. It depicts pre-colonial life in the southeastern part of Nigeria and the arrival of Europeans during the late 19th century.',
        author: 'Chinua Achebe',
        release_date: '01/01/1958',
    },
    {
        name: 'The Sound of the Mountain',
        description: 'The Sound of the Mountain (Japanese: 山の音, Hepburn: Yama no oto) is a novel by Japanese writer Yasunari Kawabata, serialized between 1949 and 1954, and first published as a standalone book in 1954 by Chikuma Shobō, Tokyo.',
        author: 'Yasunari Kawabata',
        release_date: '01/01/1954',
    }
])