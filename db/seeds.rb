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
  { title: '明天参加毕业礼, 穿那一条裙子好看?', user_id: User.first.id, active: true },
  { title: '你喜欢那一款包装?', user_id: User.first.id, active: true },
  { title: '我们小区的垃圾收集点设那里比较好?', user_id: User.first.id, active: true },
  { title: '公司周年聚餐, 共70人, 那间餐厅好?', user_id: User.first.id, active: true },
  { title: '我是Wework的小姐姐, 下星期一的早餐, 你们要吃马来西亚的, 还是法式的?', user_id: User.first.id, active: true },
  { title: '交大和复旦文学系都取录了我, 去那间?', user_id: User.second.id, active: true },
  { title: '公司新的名片设计好了, 同事们给给意见', user_id: User.second.id, active: true },
  { title: 'Which pair of shoes should go?', user_id: User.last.id, active: true },
  { title: "I'm from Canada, 22. I really like the culture of China and thinking to go here this November to study to learn Chinese. What the bestt place to go? Tks so much!", user_id: User.last.id, active: true },
  { title: '急需要钱, 只有20万, 投那一只股票?' , user_id: User.last.id, active: true },
])

# userids is an array with id, this is because .map would change the original array into a new array.
userids = User.all.map do |u|
  u.id
end

Question.all.each do |q|
  choices = Choice.create([
    { text: 'This is answer A provided by creator of the question', question: q },
    { text: 'This is answer B provided by creator of the question', question: q },
  ])
  answers = Answer.create([
    { user_id: userids.sample, choice: q.choices.first, question: q },
    { user_id: userids.sample, choice: q.choices.last, question: q },
    { user_id: userids.sample, choice: q.choices.last, question: q }
  ])
end

