# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Answer.delete_all
Choice.delete_all
Question.delete_all
User.delete_all

# users = User.create([
#   { nickname: 'Yu.Yc', gender: 'M' },
#   { nickname: '知足常乐', gender: 'M' },
#   { nickname: '珍妮', gender: 'F' },
#   { nickname: 'XYMaggie', gender: 'F' },
#   { nickname: 'Pavel L. 庞龙', gender: 'M' },
#   { nickname: 'LULU', gender: 'F' },
#   { nickname: 'Chee MS', gender: 'M' },
#   { nickname: 'Augusto', gender: 'M' },
#   { nickname: 'Alan 艾伦', gender: 'M' },
#   { nickname: 'AC', gender: 'M' },
#   { nickname: 'Auspex', gender: 'M' },
# ])

# questions = Question.create([
#   { title: '明天参加毕业礼, 穿那一条裙子好看?', user_id: User.first.id, active: true },
#   { title: '你喜欢那一款包装?', user_id: User.first.id, active: true },
#   { title: '我们小区的垃圾收集点设那里比较好?', user_id: User.first.id, active: true },
#   { title: '公司周年聚餐, 共70人, 那间餐厅好?', user_id: User.first.id, active: true },
#   { title: '我是Wework的小姐姐, 下星期一的早餐, 你们要吃马来西亚的, 还是法式的?', user_id: User.first.id, active: true },
#   { title: '交大和复旦文学系都取录了我, 去那间?', user_id: User.second.id, active: true },
#   { title: '公司新的名片设计好了, 同事们给给意见', user_id: User.second.id, active: true },
#   { title: 'Which pair of shoes should go?', user_id: User.last.id, active: true },
#   { title: "I'm from Canada, 22. I really like the culture of China and thinking to go here this November to study to learn Chinese. What the bestt place to go? Tks so much!", user_id: User.last.id, active: true },
#   { title: '急需要钱, 只有20万, 投那一只股票?' , user_id: User.last.id, active: true },
# ])

# userids = User.all.map do |u|
#   u.id
# end

# Question.all.each do |q|
#   choices = Choice.create([
#     { text: 'This is answer A provided by creator of the question', question: q },
#     { text: 'This is answer B provided by creator of the question', question: q },
#   ])
#   answers = Answer.create([
#     { user_id: userids.sample, choice: q.choices.first, question: q },
#     { user_id: userids.sample, choice: q.choices.last, question: q },
#     { user_id: userids.sample, choice: q.choices.last, question: q }
#   ])
# end

User.create({ nickname: 'Yu.Yc', gender: 'F' })
Question.create({ title: 'Which color do you see?', user: User.last, active: true })
Choice.create({ text: 'Blue and Black', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/9744222c73e8feaee79e/blue%20and%20black%20dress.jpg', question: Question.last })
Choice.create({ text: 'White and Gold', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/d95b31927f164fb42208/180403_afl_hollie_misc8429-5.jpg', question: Question.last })

User.create({ nickname: '知足常乐', gender: 'M' })
Question.create({ title: 'Angular or React?', user: User.last, active: true })
Choice.create({ text: 'Angular', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/67f08e1972d043a2fe5f/angular.png', question: Question.last })
Choice.create({ text: 'React', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/614f38ecb513916ac647/React.png', question: Question.last })

User.create({ nickname: '珍妮', gender: 'F' })
Question.create({ title: 'which pill would you like to take?', user: User.last, active: true })
Choice.create({ text: 'Red pill', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/37ce0d76031187bacc9a/RedPill.gif', question: Question.last })
Choice.create({ text: 'Blue pill', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/11a7f27fcfef91bba8fb/BluePill.gif', question: Question.last })

User.create({ nickname: 'XYMaggie', gender: 'F' })
Question.create({ title: '咸粽子还是甜粽子？', user: User.last, active: true })
Choice.create({ text: '咸粽子', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/4263db7c954c2194808f/salty.jpeg', question: Question.last })
Choice.create({ text: '甜粽子', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/ffcb09171843ac458d83/sweet.jpg', question: Question.last })

User.create({ nickname: 'Auspex', gender: 'F' })
Question.create({ title: 'Pepsi or Coke?', user: User.last, active: true })
Choice.create({ text: 'Pepsi', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/e7d3d5dd44cbc13d57d4/Pepsi.jpg', question: Question.last })
Choice.create({ text: 'Coke', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/27e6202e73e5ef1f55cf/Coke.jpg', question: Question.last })

User.create({ nickname: 'AC', gender: 'M' })
Question.create({ title: 'Chicken first or egg first?', user: User.last, active: true })
Choice.create({ text: 'Egg', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/cac4b34385148cf2532e/EGG.webp', question: Question.last })
Choice.create({ text: 'Hen', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/14e66c6a732a2ba6fea0/Hen.gif', question: Question.last })

User.create({ nickname: 'Chee MS', gender: 'M' })
Question.create({ title: 'To be or Not to be', user: User.last, active: true })
Choice.create({ text: 'To Be', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/039d6e0ce796e9b64ead/to%20be%20or%20not%20to%20be.gif', question: Question.last })
Choice.create({ text: 'Not To Be', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/e93cdf02313323aa2e7b/NotToBe.gif', question: Question.last })

User.create({ nickname: 'Pavel L. 庞龙', gender: 'M' })
Question.create({ title: 'McDonalds or Burger King?', user: User.last, active: true })
Choice.create({ text: 'McDonalds', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/e2644d6a83c86ece1b2c/MCs.jpg', question: Question.last })
Choice.create({ text: 'Burger King', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/5e5873d346a8464ca5ca/BurgerKing.jpg', question: Question.last })

User.create({ nickname: 'LULU', gender: 'F' })
Question.create({ title: 'PC or MAC?', user: User.last, active: true })
Choice.create({ text: 'PC', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/8fd70277f03c2228d664/PC.jpg', question: Question.last })
Choice.create({ text: 'MAC', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/6e551bd10112e6de48e8/MAC.png', question: Question.last })

# userids is an array with id, this is because .map would change the original array into a new array.
userids = User.all.map do |u|
  u.id
end

20.times do
  q = Question.all.sample
  Answer.create({ user_id: userids.sample, choice: q.choices.first, question: q})
end

20.times do
  q = Question.all.sample
  Answer.create({ user_id: userids.sample, choice: q.choices.last, question: q})
end
