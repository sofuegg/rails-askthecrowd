# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { nickname: 'Yu.Yc', gender: 'M' },
  { nickname: '知足常乐', gender: 'M' },
  { nickname: '珍妮', gender: 'F' },
  { nickname: 'XYMaggie', gender: 'F' },
  { nickname: 'Pavel L. 庞龙', gender: 'M' },
  { nickname: 'LULU', gender: 'F' },
  { nickname: 'Chee MS', gender: 'M' },
  { nickname: 'Augusto', gender: 'M' },
  { nickname: 'Alan 艾伦', gender: 'M' },
  { nickname: 'AC', gender: 'M' },
  { nickname: 'Auspex', gender: 'M' },
])

questions = Question.create([
  { title: '明天参加毕业礼, 穿那一条裙子好看?', creator_id: User.first.id, active: true },
  { title: '你喜欢那一款包装?', creator_id: User.first.id, active: true },
  { title: '我们小区的垃圾收集点设那里比较好?', creator_id: User.first.id, active: true },
  { title: '公司周年聚餐, 共70人, 那间餐厅好?', creator_id: User.first.id, active: true },
  { title: '我是Wework的小姐姐, 下星期一的早餐, 你们要吃马来西亚的, 还是法式的?', creator_id: User.first.id, active: true },
  { title: '交大和复旦文学系都取录了我, 去那间?', creator_id: User.second.id, active: true },
  { title: '公司新的名片设计好了, 同事们给给意见', creator_id: User.second.id, active: true },
  { title: 'Which pair of shoes should go?', creator_id: User.last.id, active: true },
  { title: "I'm from Canada, 22. I really like the culture of China and thinking to go here this November to study to learn Chinese. What the bestt place to go? Tks so much!", creator_id: User.last.id, active: true },
  { title: '急需要钱, 只冇20万, 投那一只股票?' , creator_id: User.last.id, active: true },
])

Question.all.each do |q|
  chocies = Choice.create([
    { title: 'A', question: q },
    { title: 'B', question: q },
  ])
  answers = Answer.create([
    { user_id: rand(1..10), choice: q.chocies.first, question: q }
    { user_id: rand(1..10), choice: q.chocies.last, question: q }
    { user_id: rand(1..10), choice: q.chocies.last, question: q }
  ])
end

