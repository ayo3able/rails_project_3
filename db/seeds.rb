# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1= User.create( email: 'tightrope@grounded.com', password: 'Only1Lft', username: 'GraysonD', work_name: 'Wayne Ent.', school_name: '' )
u2= User.create( email: 'BigBlue@num1mom.com', password: 'K1lH0mr', username: 'MargeS', work_name: '', school_name: 'Hard Knocks' )
u3= User.create( email: 'GreenIam@onemaysay.me', password: 'Pa$$wrd', username: '1Adoy', work_name: '', school_name: 'Jedi Academy' )
u4= User.create( email: 'Nextqueen@amazons.ory', password: 'ExEWyn', username: 'Princess', work_name: 'Justice LLC', school_name: '' )


t1= Team.create(name: 'Wingmen')
t2= Team.create(name: 'Mom Bomb')
t3= Team.create(name: 'Little Green Men')
t4= Team.create(name: 'Ms.Wonderful')


p1= Project.create(title: 'Batman', goal: 'Fix Batmobile', user_id: u1.id, team_id: t1.id)
p2= Project.create(title: 'Margetube', goal: 'Meal Prep', user_id: u2.id, team_id: t2.id)
p3= Project.create(title: 'Light Sabers', goal: 'Add Rainbow Beam', user_id: u3.id, team_id: t3.id)
p4= Project.create(title: 'Leauge', goal: 'Save the World', user_id: u4.id, team_id:t4.id)
p5= Project.create(title: 'Titans', goal: 'Repair The Tower', user_id: u1.id, team_id: t1.id)
p6= Project.create(title: 'Development', goal: 'Finally grow Maggy', user_id: u2.id, team_id: t2.id)


t1= Task.create(title: 'Shine Wheels', instructions: 'Lorim Ipsum', start: DateTime.strptime("12/22/2021", "%m/%d/%Y"), deadline: DateTime.strptime("12/30/2021", "%m/%d/%Y"), user_id: u1.id, project_id: p1.id)
t2= Task.create(title: 'Buy Supplies', instructions: 'Lorim Ipsum', start: DateTime.strptime("06/13/2021", "%m/%d/%Y"), deadline: DateTime.strptime("10/20/2021", "%m/%d/%Y"), user_id: u2.id, project_id: p2.id)
t3= Task.create(title: 'Buy Rainbow Dust', instructions: 'Collect Unicorn Poop', start: DateTime.strptime("07/04/2021", "%m/%d/%Y"), deadline: DateTime.strptime("12/22/2021", "%m/%d/%Y"), user_id: u3.id, project_id: p3.id)
t4= Task.create(title: 'Block bullets', instructions: 'Lorim Ipsum', start: DateTime.strptime("05/01/2021", "%m/%d/%Y"), deadline: DateTime.strptime("05/25/2021", "%m/%d/%Y"), user_id: u4.id, project_id: p4.id)
t5= Task.create(title: 'New Rockets', instructions: 'Lorim Ipsum', start: DateTime.strptime("06/02/2021", "%m/%d/%Y"), deadline: DateTime.strptime("06/23/2021", "%m/%d/%Y"), user_id: u1.id, project_id: p1.id)
t6= Task.create(title: 'Setup Camera', instructions: 'Lorim Ipsum', start: DateTime.strptime("07/03/2021", "%m/%d/%Y"), deadline: DateTime.strptime("07/28/2021", "%m/%d/%Y"), user_id: u2.id, project_id: p2.id)
t7= Task.create(title: 'Replace Glass Dish', instructions: 'Lorim Ipsum', start: DateTime.strptime("08/04/2021", "%m/%d/%Y"), deadline: DateTime.strptime("08/29/2021", "%m/%d/%Y"), user_id: u3.id, project_id: p3.id)
t8= Task.create(title: 'Free President', instructions: 'Lorim Ipsum', start: DateTime.strptime("09/05/2021", "%m/%d/%Y"), deadline: DateTime.strptime("09/30/2021", "%m/%d/%Y"), user_id: u4.id, project_id: p4.id)
t9= Task.create(title: 'Refill Jellybean Jar', instructions: 'Black and Yellow jelly beans, only!', start: DateTime.strptime("10/06/2021", "%m/%d/%Y"), deadline: DateTime.strptime("10/29/2021", "%m/%d/%Y"), user_id: u1.id, project_id: p1.id)


