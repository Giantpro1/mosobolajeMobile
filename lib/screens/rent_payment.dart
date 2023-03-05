import 'package:mosobolaje/utils/appLayout.dart';
import 'package:mosobolaje/utils/appStyle.dart';
import 'package:mosobolaje/widgets/appbar.dart';
import 'package:mosobolaje/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RentPayment extends StatefulWidget {
  const RentPayment({super.key});

  @override
  State<RentPayment> createState() => _RentPaymentState();
}

class _RentPaymentState extends State<RentPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // top bar title
        title: const Appbar(),
      ),
      // top bar title end
      // sidenav
      drawer: const Drawer(
        child: Sidebar(),
      ),
      // sidenav end
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            // banner
            Container(
              height: AppLayout.getHeight(200),
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: Styles.bgColor,
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                // ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/1.jpg",
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),
            // banner end
            const Gap(60),
            // first section
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: Styles.bgColor,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const[
                      Text(
                        "OKO AFOR HOUSE",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Gap(10),
                      Text(
                        "PROPERTY NAME",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                 const Icon(Icons.check_circle)
                ],
              ),
            ),
            // first section end
            const Gap(40),
            // second section
             Center(
              child: Column(
                children: const [
                  Text(
                    "MY RENT PAYMENT RECORD",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Gap(10),
                  Text(
                    "No payment record yet!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            )
            // second section end
          ],
        ),
        // third section end
      ),
    );
  }
}
