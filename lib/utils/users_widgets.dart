import 'package:eventapp/models/user.dart';
import 'package:eventapp/networks/constant_base_urls.dart';
import 'package:eventapp/utils/screen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class UsersWidget {
  BuildContext context;
   Widget loadUsersShimmer()  {
    return Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                enabled: false,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child:  Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 50, width: double.infinity,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                            Container(width: 70, height: 70, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white), ),
                            Container(margin: EdgeInsets.only(left: 10),width: 180, height: 20,color: Colors.white),
                          ],)
                        ),
                  )
                  
                ),
              );
  }
  
  Widget loadUsers(List<User> usersList)  {
    return ListView.builder(
      itemCount: usersList.length,
      itemBuilder: (BuildContext context, int index)  {
        return Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 CircleAvatar(
            backgroundImage: NetworkImage('${ConstantBaseUrls.photosPhotoBaseUrl}${usersList[index].photo_url}'),radius: 28.0),
            SizedBox(width: 11.5),
            Text(usersList[index].name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500 , fontSize: 15))
            ],)),
            ButtonTheme(
              height: 20,
              buttonColor: Screen.eventBlue,
              child: RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)), onPressed: () {}, child: Text('View', style: TextStyle(color: Colors.white)))
            )
          ])
        );
      }
    );
  }
}