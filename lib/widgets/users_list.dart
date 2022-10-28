import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:part_9/models/User.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
User(
  age: 16,
  firstName: 'Иван',
  lastName: 'Иванов',
  phone: '2345435345',
  email: 'example@mail.ru',
  avatar:
  'https://st2.depositphotos.com/1000861/7741/i/600/depositphotos_77412900-stock-photo-happy-woman.jpg'),
User(
  age: 16,
  firstName: 'Иван',
  lastName: 'Иванов',
  phone: '2345435345',
  email: 'example@mail.ru',
  avatar:
  'https://klike.net/uploads/posts/2020-08/1597994286_2.jpg'),
User(
  age: 16,
  firstName: 'Иван',
  lastName: 'Иванов',
  phone: '2345435345',
  email: 'example@mail.ru',
  avatar:
  'https://klike.net/uploads/posts/2020-08/1597994375_6.jpg'),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: usersList.length, itemBuilder:(context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailScreen(
                    user: usersList[index],
                  ),
                ),
              );
        },
        child: Card(
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
            Container(
              height: 100.0,
              width: 100.0,
              child: usersList[index].avatar == ''
            ? Image.network(
              'http://cdn.onlinewebfonts.com/svg/img_207975.png')
              : Image.network(usersList[index].avatar,
                fit: BoxFit.cover),
              ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Имя: ' + usersList[index].firstName,
                            textAlign: TextAlign.left,
                          ),
                          Text('Фамилия: ' + usersList[index].lastName),
                          Text('Возраст: ' + usersList[index].age.toString()),
                          Text('Телефон: ' + usersList[index].phone),
                          Text('Телефон: ' + usersList[index].email),
              ],
              ),
                                  ),
             ],
            ),
           ],   
          ),
        ),
      );
    });
  }
}