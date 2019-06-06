Bankaccount.destroy_all
User.destroy_all


user1 = User.create(name:"Nick")
user2 = User.create(name:"Kemunto")
user3 = User.create(name:"Paul")
user4 = User.create(name:"Sean")
user5 = User.create(name:"Natany")

bankaccount1 = Bankaccount.create(user_id: user1.id, bank: "Capitol One")
Bankaccount.create(user_id: user1.id, bank: "Capitol One")
Bankaccount.create(user_id: user1.id, bank: "Capitol One")
Bankaccount.create(user_id: user1.id, bank: "Capitol One")
Bankaccount.create(user_id: user1.id, bank: "Capitol One")
bankaccount2 = Bankaccount.create(user_id: user1.id, bank: "Bank of America")
bankaccount3 = Bankaccount.create(user_id: user2.id, bank: "City Bank")
bankaccount4 = Bankaccount.create(user_id: user4.id, bank: "Wells Fargo")
bankaccount5 = Bankaccount.create(user_id: user3.id, bank: "Sun Trust")
