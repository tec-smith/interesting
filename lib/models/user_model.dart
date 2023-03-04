///**************************************************************************///
///                  Interesting (https://interesting.zone)                  ///
///             A template for a social application, using Flutter.          ///
///               Conceived in Febrary 2023 by Thomas EC. Smith              ///
///**************************************************************************///

/// Working directory: */interesting/lib/models/user_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';

/// This class defines the structure of [Users] within our application,
/// and provides methods for handling data to and from our database(s).

class UserModel {
  /// User data types.
  final String biography;
  final Timestamp birthday;
  final String? email;
  final bool emailVerified;
  final Map favorites;
  final Map followers;
  final Map following;
  final Map groups;
  final String id;
  final String? image;
  final Map likes;
  final GeoPoint location;
  final String? name;
  final bool online;
  final String? phone;
  final bool phoneVerified;
  final Map privileges;
  final Timestamp timestamp;
  final Timestamp updated;
  final String username;
  final int views;
  final String website;

  /// Make it null safe!
  const UserModel({
    required this.biography,
    required this.birthday,
    required this.email,
    required this.emailVerified,
    required this.favorites,
    required this.followers,
    required this.following,
    required this.groups,
    required this.id,
    required this.image,
    required this.likes,
    required this.location,
    required this.name,
    required this.online,
    required this.phone,
    required this.phoneVerified,
    required this.privileges,
    required this.timestamp,
    required this.updated,
    required this.username,
    required this.views,
    required this.website,
  });

  /// User from Firestore DocumentSnapshot.
  factory UserModel.fromDocument(DocumentSnapshot document) {
    return UserModel(
      biography: document['biography'],
      birthday: document['birthday'],
      email: document['email'],
      emailVerified: document['emailVerified'],
      favorites: document['favorites'],
      followers: document['followers'],
      following: document['following'],
      groups: document['groups'],
      id: document['id'],
      image: document['image'],
      likes: document['likes'],
      location: document['location'],
      name: document['name'],
      online: document['online'],
      privileges: document['privileges'],
      phone: document['phone'],
      phoneVerified: document['phoneVerified'],
      timestamp: document['timestamp'],
      updated: document['updated'],
      username: document['username'],
      views: document['views'],
      website: document['website'],
    );
  }

  /// User from JavaScript Object Notation.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      biography: json['biography'],
      birthday: json['birthday'],
      email: json['email'],
      emailVerified: json['emailVerified'],
      favorites: json['favorites'],
      followers: json['followers'],
      following: json['following'],
      groups: json['groups'],
      id: json['id'],
      image: json['image'],
      likes: json['likes'],
      location: json['location'],
      name: json['name'],
      online: json['online'],
      privileges: json['privileges'],
      phone: json['phone'],
      phoneVerified: json['phoneVerified'],
      timestamp: json['timestamp'],
      updated: json['updated'],
      username: json['username'],
      views: json['views'],
      website: json['website'],
    );
  }

  /// User to JavaScript Object Notation.
  Map<String, dynamic> toMap() {
    return {
      'biography': biography,
      'birthday': birthday,
      'email': email,
      'emailVerified': emailVerified,
      'favorites': favorites,
      'followers': followers,
      'following': following,
      'groups': groups,
      'id': id,
      'image': image,
      'likes': likes,
      'location': location,
      'name': name,
      'online': online,
      'phone': phone,
      'phoneVerified': phoneVerified,
      'privileges': privileges,
      'timestamp': timestamp,
      'updated': updated,
      'username': username,
      'views': views,
      'website': website,
    };
  }
}

/**
 * @COPYRIGHT (c) 2023. Thomas EC. Smith : https://www.TECSmith.info
 *
 * Permission is hereby granted, free of charge,
 * to any person obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to permit
 * persons to whom the Software is furnished to do so, subject to the following
 * conditions:
 *  + The above copyright notice and this permission notice shall be included in
 *    all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Licenced under [MIT](https://opensource.org/licenses/MIT)
 * [Find more repositories!](https://TECSmith.info/repository)
 */