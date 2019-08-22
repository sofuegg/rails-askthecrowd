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

User.create({ nickname: '知足常乐', gender: 'F' })
Question.create({ title: '我是的身材属于微胖型, 穿右边的会不会好看, 还是左边较好??', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/b43f6d5e86271efbfd3e/2012101309583538733.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/664b7d66028f29b06e75/fashion-show-1524743577.jpg', question: Question.last })

User.create({ nickname: '珍妮', gender: 'F' })
Question.create({ title: '姐妹们, 那个颜色好看呀? 不能输给我的同事!!', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/dcd0ac9bad4e2b611a79/WeChat%20%E5%9C%96%E7%89%87_20190820173618.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/a9a841a978ea9b1145dd/WeChat%20%E5%9C%96%E7%89%87_20190820173625.jpg', question: Question.last })

User.create({ nickname: '知足常乐', gender: 'M' })
Question.create({ title: '好看吗? 买那一件?', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/411fbd1b8016eb352471/Image%20from%20iOS%20%281%29.png', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/316c7ddf18ecd583e815/Image%20from%20iOS%20%282%29.png', question: Question.last })

User.create({ nickname: 'Auspex', gender: 'M' })
Question.create({ title: '我买了对新的牌子布鞋, 左边是官网的, 右边是我买的, 所以我买了假货吗?', user: User.last, active: true })
Choice.create({ text: '官网', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/0098a72c8ca576c4f42a/4015801_1500.jpg', question: Question.last })
Choice.create({ text: '我买的', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/c686a533f594b531b9c6/4015301_1500.jpg', question: Question.last })

User.create({ nickname: 'AC', gender: 'M' })
Question.create({ title: '我开服装店想进货, 大家猜那一件会比较好卖?', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/f0bca788f028c05109e3/TB2BMQ0i_qWBKNjSZFAXXanSpXa_%21%21662831292.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/b48cdb68cf866af169cf/TB2yTH2BYSYBuNjSspfXXcZCpXa_%21%212102385428-0-item_pic.jpg_430x430q90.jpg', question: Question.last })

User.create({ nickname: 'Yu.Yc', gender: 'F' })
Question.create({ title: '明天参加毕业礼, 穿那一条裙子好看?', user: User.last, active: true })
Choice.create({ text: '红色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/5054fd3ea9dbfa874da7/190219sl-1589-62503b-red.jpg', question: Question.last })
Choice.create({ text: '黄色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/d95b31927f164fb42208/180403_afl_hollie_misc8429-5.jpg', question: Question.last })

User.create({ nickname: 'Chee MS', gender: 'F' })
Question.create({ title: '想送男友一副太阳眼镜, 请你们给给意见', user: User.last, active: true })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/585fda9716deec435233/download.jpg', question: Question.last })
Choice.create({ text: '', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/5ca1964696bbb1ffe770/eqyey03035_barrett_p_xkks_frt1.jpg', question: Question.last })

User.create({ nickname: 'Pavel L. 庞龙', gender: 'M' })
Question.create({ title: '蓝色和灰色西服二选一去明天面试, 那个更好?', user: User.last, active: true })
Choice.create({ text: '灰色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/60c26b02b58b0eee63af/images.jpg', question: Question.last })
Choice.create({ text: '蓝色', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/dbf3f9f4a33205dcee98/567a89b197fb1.jpg', question: Question.last })

User.create({ nickname: 'LULU', gender: 'F' })
Question.create({ title: "今年夏季, 那款裙子会走上最新潮流?", user: User.last, active: true })
Choice.create({ text: 'Milan', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/b9d9ecc26633faf7a00a/703567.jpg', question: Question.last })
Choice.create({ text: 'Paris', photo: 'http://lc-qinkssxt.cn-n1.lcfile.com/2823c64f0e776c43264c/Leonard-2013.jpg', question: Question.last })

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
