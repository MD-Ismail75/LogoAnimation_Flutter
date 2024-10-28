import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationWork extends StatelessWidget {
  const AnimationWork({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    // Move RxBool to a member variable
    final RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    menuClicked.value = !menuClicked.value;
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(menuClicked.value?"RIPPLES":"expand",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 31,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.width * .5),
                SizedBox(
                  width: size.width,
                  height: size.width,
                  child: Obx(
                        () => Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.all(menuClicked.value ? 25 : 0),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 355),
                              curve: Curves.easeOut,
                              width: menuClicked.value ? size.width * 0.8 : size.width * 0.60,
                              height: menuClicked.value ? size.width * 0.8 : size.width * 0.58,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(menuClicked.value ? 90 : 120),
                              ),
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 355),
                                    curve: Curves.easeOut,
                                   opacity: menuClicked.value?1:0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    _buildRichText(size, Icons.shopping_cart, "items in cart"),
                                    _buildRichText(size, Icons.history_toggle_off, "purchase history"),
                                    _buildRichText(size, Icons.settings, "app settings"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: menuClicked.value ? size.width * 0.1 : size.width * 0.26,
                          left: menuClicked.value ? size.width * 0.5 : size.width * 0.20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 355),
                              curve: Curves.easeOut,
                              width: menuClicked.value ? size.width * 0.16 : size.width * 0.50,
                              height: menuClicked.value ? size.width * 0.16 : size.width * 0.48,
                              decoration: BoxDecoration(
                                color: const Color(0xff5e5c5c),
                                borderRadius: BorderRadius.circular(120),
                              ),
                              // child: Center(
                              //   child: Text(
                              //     menuClicked.value ? "RIPPLES," : "",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize: 15,
                              //       fontWeight: FontWeight.w500,
                              //     ),
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: menuClicked.value ? size.width * 0.1 : size.width * 0.31,
                          right: menuClicked.value ? size.width * 0.5 : size.width * 0.25,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 355),
                            curve: Curves.easeOut,
                            width: menuClicked.value ? size.width * 0.16 : size.width * 0.40,
                            height: menuClicked.value ? size.width * 0.16 : size.width * 0.38,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(120),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                menuClicked.value = !menuClicked.value;
                              },
                              child: Center(
                                child: menuClicked.value
                                    ? Icon(Icons.add_circle_outline, color: Colors.white)
                                    : null,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRichText(Size size, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Text.rich(
        TextSpan(
          children: [
            WidgetSpan(
              child: Icon(icon, color: Colors.white, size: size.width * .065),
              alignment: PlaceholderAlignment.middle,
            ),
            TextSpan(
              text: "  $text",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: size.width * .045,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
