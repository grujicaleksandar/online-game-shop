Online Game Shop project
======================
Spring Boot application(Spring MVC,Spring Data JPA) with Hibernate ORM.

Project summary:

In this app,user can sign up,sign in.Also,he can view,change or delete his account,and view all games,search for specific game, and add games that he wants to buy to the shopping cart and at the end,to purchase orders from his cart.

He can contact admin via contact form and leave message.

Admin has private access,he can view messages and add new game.

User can access only few pages without logging in.


MySQL
======================

1.Create schema game_shop:

*CREATE SCHEMA game_shop;*

2.Create user:

*CREATE USER 'gamer'@'localhost' IDENTIFIED BY 'gamerpass';*

3. Grant permissions to that user:

*GRANT ALL PRIVILEGES ON game_shop  TO 'gamer'@'localhost';*

in application.properties first set spring.jpa.hibernate.ddl-auto=CREATE,to enable Hibernate to create tables.
After that,change it to VALIDATE,or just execute this sql file:

https://github.com/grujicaleksandar/online-game-shop/blob/master/gameshop.sql


You can change your schema name,username or password,of course,but you must change it in application.properties too! 

Screenshots
======================
1.HomePage

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1519560992/online%20game%20shop/homepage.png)

2. Show Game page

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1520163431/showgame.png)

3.After loggin in

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1519560984/online%20game%20shop/account-drop-down.png)

4. Show user's info

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1519562679/online%20game%20shop/user-info.png)

5. Shopping Cart

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1519560985/cart.png)

6. Admin Page

![alt text](https://res.cloudinary.com/gruja90/image/upload/c_scale,w_705/v1520188124/admin-page.png)

7. Admin can view messages

![alt text](https://res.cloudinary.com/gruja90/image/upload/v1520188124/admin-messages.png)
