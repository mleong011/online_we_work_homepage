import 'package:online_we_work_homepage/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// USERS
final User calc =
    User(id: 1, name: 'Calculus (25)', imageUrl: 'assets/images/calculus.jpg');
final User chem = User(
    id: 2, name: 'Chemistry (12)', imageUrl: 'assets/images/chemistry.png');
final User python =
    User(id: 3, name: 'Python (56)', imageUrl: 'assets/images/python.png');
final User art = User(id: 4, name: 'Art', imageUrl: 'assets/images/art.jpg');
final User cpp = User(id: 5, name: 'C++', imageUrl: 'assets/images/cpp.png');
final User english =
    User(id: 6, name: 'English', imageUrl: 'assets/images/english.jpg');
final User android =
    User(id: 7, name: 'Android Studio', imageUrl: 'assets/images/android.png');

// FAVORITE CONTACTS
List<User> favorites = [calc, chem, cpp];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: art,
    time: '5:30 PM',
    text: 'Anybody know where i could purchase brushed for cheap?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: english,
    time: '4:30 PM',
    text: 'what\'s another word for erroneous?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: android,
    time: '3:30 PM',
    text: 'Anyone having issues connecting to Flutter?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: chem,
    time: '2:30 PM',
    text: 'Yes, Helium is a noble gas/',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: python,
    time: '1:30 PM',
    text: 'There\'s a great tutorial for flask applications here: ',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: cpp,
    time: '12:30 PM',
    text: 'don\'t forget to include your header files',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: art,
    time: '11:30 AM',
    text: 'Anybody know of any good contemporary artists',
    isLiked: false,
    unread: false,
  ),
];
