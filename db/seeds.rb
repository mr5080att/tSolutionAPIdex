# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(attuid:"mr5080", password:"password")
question = Question.new(user:user, title:"test 000", body:"test 000")
user.questions << question
answer = Answer.new(user:user, body:"answer 000")
question.answers << answer
qcomment = Comment.new(user:user, body:"question comment 000")
question.comments << qcomment
acomment = Comment.new(user:user, body:"answer comment 000")
answer.comments << acomment
