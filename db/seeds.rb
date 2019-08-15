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
Question.create({ title: '明天参加毕业礼, 穿那一条裙子好看?', user: User.last, active: true })
Choice.create({ text: '红色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/5054fd3ea9dbfa874da7/190219sl-1589-62503b-red.jpg', question: Question.last })
Choice.create({ text: '黄色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/d95b31927f164fb42208/180403_afl_hollie_misc8429-5.jpg', question: Question.last })

User.create({ nickname: '知足常乐', gender: 'M' })
Question.create({ title: '你喜欢那一款包装?', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/d9c89fd7452a7429de6d/71YMV5-wNwL._SL1500_.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/92e63d2ea42213d9d1c0/477c968fd026d4d785b3917fb32cdaf4.jpg', question: Question.last })

User.create({ nickname: '珍妮', gender: 'F' })
Question.create({ title: '我们小区的垃圾收集点设那里比较好?', user: User.last, active: true })
Choice.create({ text: '后闸出入口空地', photo: '', question: Question.last })
Choice.create({ text: '停车场地库', photo: '', question: Question.last })

User.create({ nickname: 'XYMaggie', gender: 'F' })
Question.create({ title: '公司周年聚餐, 共70人, 那间餐厅好?', user: User.last, active: true })
Choice.create({ text: '蜀大侠', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/ef0e83431171cf575855/wKgBEFtVyK2AErDTADzCTbKWEhY10.jpeg', question: Question.last })
Choice.create({ text: '大龙燚', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/3007dcdea711faec6d14/wKgBs1bQMrWASgp3AAO2H_9ZYAo00.jpeg', question: Question.last })

User.create({ nickname: 'Auspex', gender: 'F' })
Question.create({ title: '我是Wework的小姐姐, 下星期一的早餐, 你们要吃马来西亚的, 还是法式的?', user: User.last, active: true })
Choice.create({ text: '马来西亚', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/6493a095368a27213f1f/food-658715_1920.jpg', question: Question.last })
Choice.create({ text: '法式', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/a5f884f6832c018d9364/1336705.jpg', question: Question.last })

User.create({ nickname: 'AC', gender: 'M' })
Question.create({ title: '交大和复旦文学系都取录了我, 去那间?', user: User.last, active: true })
Choice.create({ text: '交大', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/57de666d7550c1f374f1/ef50ed7e-7f05-451e-9e35-0f7c4cdff7f3.jpg', question: Question.last })
Choice.create({ text: '复旦', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/df439b0b60bbd844267c/B07A00_P_02_01.jpg', question: Question.last })

User.create({ nickname: 'Chee MS', gender: 'M' })
Question.create({ title: '公司新的名片设计好了, 同事们给给意见', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/5c0fae4b91020e107f0c/b5257b_b505df57ce5b43969e40b92344989059_mv2_d_1326_1422_s_2.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/f984a991f5a15f7e5f3a/96bbb0b6a00d63eed845.png', question: Question.last })

User.create({ nickname: 'Pavel L. 庞龙', gender: 'M' })
Question.create({ title: 'Which pair of shoes to buy', user: User.last, active: true })
Choice.create({ text: 'Air Jordan XXXI', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/99606f5a2fef8f96a606/d2cf46a5000717e0.jpg', question: Question.last })
Choice.create({ text: 'Air Jordan XXXI Black-purple', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/e82176d6273f2f6d1a75/b51b5eaf86c245ca.jpg', question: Question.last })

User.create({ nickname: 'LULU', gender: 'F' })
Question.create({ title: "I'm from Canada, 22. I really like the culture of China and thinking to go here this November to study to learn Chinese. What the bestt place to go? Tks so much!", user: User.last, active: true })
Choice.create({ text: 'Chengdu', photo: '', question: Question.last })
Choice.create({ text: 'Shanghai', photo: '', question: Question.last })

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
