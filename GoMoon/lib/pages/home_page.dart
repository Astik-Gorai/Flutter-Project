import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_drop_down.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: _deviceHeight,
            width: _deviceWidth,
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
            // color: Colors.red,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: _astroImageWidget(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _pageTitle(),
                    _bookRideWidget(),
                    _rideButton(),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.70,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/moon.png"),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    // List<DropdownMenuItem<String>> _items = [
    //   'James Web Station',
    //   'Preneure Station',
    // ].map(
    //   (e) {
    //     return DropdownMenuItem(
    //       child: Text(e),
    //       value: e,
    //     );
    //   },
    // ).toList();
    List<String> _items = ['James Web Station', 'Preneure Station'];

    return CustomDropDownClass(values: _items, width: _deviceWidth);
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _travellersInformtionWidget(),
          _destinationDropDownWidget(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
          onPressed: () {},
          child: Text("Book Ride!",
              style: TextStyle(
                color: Colors.black,
              ))),
    );
  }

  Widget _travellersInformtionWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownClass(
            values: ['1', '2', '3', '4'], width: _deviceWidth * 0.4),
        CustomDropDownClass(
            values: ['Economy', 'Private', 'Bussiness', 'Sexy'],
            width: _deviceWidth * 0.4)
      ],
    );
  }
}
