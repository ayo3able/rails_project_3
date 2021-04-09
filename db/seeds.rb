# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create( email: 'tightrope@grounded.com', password: 'Only1Lft', username: 'GraysonD', work_name: 'Wayne Ent.', school_name: '' )
User.create( email: 'BigBlue@num1mom.com', password: 'K1lH0mr', username: 'MargeS', work_name: '', school_name: 'Hard Knocks' )
User.create( email: 'GreenIam@onemaysay.me', password: 'Pa$$wrd', username: '1Adoy', work_name: '', school_name: 'Jedi Academy' )
User.create( email: 'Nextqueen@amazons.ory', password: 'ExEWyn', username: 'Princess', work_name: 'Justice LLC', school_name: '' )


Team.create(name: 'Wingmen')
Team.create(name: 'Mom Bomb')
Team.create(name: 'Little Green Men')
Team.create(name: 'Wonderful Women')


Project.create(title: 'Batman', goal: 'Fix Batmobile', user_id: 1, team_id: 1)
Project.create(title: 'Margetube', goal: 'Meal Prep', user_id: 2, team_id: 2)
Project.create(title: 'Light Sabers', goal: 'Add Rainbow Beam', user_id: 3, team_id: 3)
Project.create(title: 'Leauge', goal: 'Save the World', user_id: 4, team_id: 4)
Project.create(title: 'Titans', goal: 'Repair The Tower', user_id: 1, team_id: 1)
Project.create(title: 'Development', goal: 'Finally grow Maggy', user_id: 2, team_id: 2)


Task.create(title: 'Shine Wheels', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/01/2021 09:00")', deadline: 'DateTime.parse("05/03/2021 24:00")', project_id: 1, user_id: 1)
Task.create(title: 'Buy Supplies', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/02/2021 13:00")', deadline: 'DateTime.parse("06/21/2021 24:00")', project_id: 2, user_id: 2)
Task.create(title: 'Buy Rainbow Dust', instructions: 'Collect Unicorn Poop', start: 'DateTime.parse("09/03/2021 14:00")', deadline: 'DateTime.parse("08/04/2021 24:00")', project_id: 3, user_id: 3)
Task.create(title: 'Block bullets', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/04/2021 15:00")', deadline: 'DateTime.parse("10/22/2021 24:00")', project_id: 4, user_id: 4)
Task.create(title: 'New Rockets', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/06/2021 06:00")', deadline: 'DateTime.parse("09/05/2021 24:00")', project_id: 1, user_id: 1)
Task.create(title: 'Setup Camera', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/07/2021 10:00")', deadline: 'DateTime.parse("09/07/2021 24:00")', project_id: 2, user_id: 2)
Task.create(title: 'Replace glass dish', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/08/2021 11:00")', deadline: 'DateTime.parse("11/11/2021 24:00")', project_id: 3, user_id: 3)
Task.create(title: 'Free President', instructions: 'Lorim Ipsum', start: 'DateTime.parse("09/08/2021 12:00")', deadline: 'DateTime.parse("10/31/2021 24:00")', project_id: 4, user_id: 4)
Task.create(title: 'Refill Jellybean Jar', instructions: 'He will only eat the black ones', start: 'DateTime.parse("09/07/2021 08:00")', deadline: 'DateTime.parse("07/12/2021 24:00")', project_id: 1, user_id: 1)
