user1 = User.create(email: 'User1@gmail.com', password: 'password', town: 'Rostov-on-Don',
                    country: 'Russia', address_line1: 'Milchakova 8a', postcode: '344999')
Order.create(title:'Не могу установить Rails!’
,
body: 'Выпадает странная ошибка’
,
    user: user1)
question = Question.create(title:'Помогите с вебпакером’
,
body: 'Я просто не знаю, зачем он нужен’
,
    user: user2)
question.answers.create(body: 'Webpacker собирает ассеты.
’
,
user: user1)