import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceshop/presentations/utility/appcolor.dart';
import 'package:ecommerceshop/presentations/utility/image_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/appbarwidget.dart';
import '../widgets/caruselslider.dart';
import '../widgets/categroyitem.dart';
import '../widgets/heardersection.dart';
import '../widgets/produc_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController serachTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          ImagePath.navLogo,
          width: 70,
        ),
        actions: [
          AppBarButton(
            icon: Icons.person,
            ontab: () {},
          ),
          SizedBox(
            width: 5,
          ),
          AppBarButton(
            icon: Icons.call,
            ontab: () {},
          ),
          SizedBox(
            width: 5,
          ),
          AppBarButton(
            icon: Icons.notification_add_outlined,
            ontab: () {},
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _searchbuild(),
              SizedBox(
                height: 15,
              ),
              CaruelSlider(),
              Hearsection(
                title: 'All Category',
                ontab: () {},
              ),
              SizedBox(
                height: 12,
              ),
              categroylist(),
              SizedBox(
                height: 10,
              ),
              Hearsection(
                title: 'Popular Products',
                ontab: () {},
              ),
              SizedBox(
                height: 12,
              ),
              ProductCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget categroylist() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryCardItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  Widget _searchbuild() {
    return TextFormField(
      controller: serachTextEditingController,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'serach',
          filled: true,
          fillColor: Colors.grey.shade200,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    serachTextEditingController.dispose();
  }
}


