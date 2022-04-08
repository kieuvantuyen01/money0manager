import 'package:flutter/material.dart';

import 'helpers/mask.dart';
import 'helpers/svg.dart';
import 'helpers/transform.dart';
import 'screen/Reminder.dart';
import 'screen/Contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      /*home: const GeneratedLeftNavigationPaneWidget(
          title: 'Flutter Demo Home Page'),*/
      home: Contact(),
    );
  }
}

class GeneratedLeftNavigationPaneWidget extends StatelessWidget {
  const GeneratedLeftNavigationPaneWidget({Key? key, required this.title})
      : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Container(
            width: 297.0,
            height: 900.0,
            child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 297.0,
                height: 900.0,
                child: GeneratedVScrollCategoryWidget(),
              )
            ]),
          ),
        ));
  }
}

class GeneratedVScrollCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 297.0,
        height: 900.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 35, 111, 87),
                ),
              ),
              /*Positioned(
                left: -1.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 298.0,
                height: 915.0,
                child: GeneratedBackgroundWidget130(),
              ),*/
              Positioned(
                left: 0.0,
                top: 16.0,
                right: null,
                bottom: null,
                width: 297.0,
                height: 809.0,
                child: GeneratedLeftNavigationPaneWidget1(),
              )
            ]),
      ),
    );
  }
}

class GeneratedLeftNavigationPaneWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297.0,
      height: 809.0,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 297.0,
              height: 55.0,
              child: GeneratedHeaderUserWidget(),
            ),
            Positioned(
              left: 0.0,
              top: 62.0,
              right: 0.0,
              bottom: null,
              width: null,
              height: 1.0,
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double width = constraints.maxWidth - 0.0;
                    final double scaleX = width <= 0 ? 0 : (width / 297.0);

                    final Widget child = GeneratedDividerWidget();
                    return Stack(children: [
                      // Transform(
                      //   transform: Matrix4(scaleX, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0,
                      //       0.0, 62.0, 0, 1),
                      //   alignment: Alignment.topLeft,
                      //   child:
                       SizedBox.expand(child: child),
                      //)
                    ]);
                  }),
            ),
            Positioned(
              left: 0.0,
              top: 69.0,
              right: null,
              bottom: null,
              width: 297.0,
              height: 740.0,
              child: GeneratedVScrollCategoryWidget1(),
            )
          ]),
    );
  }
}

class GeneratedVScrollCategoryWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297.0,
      height: 740.0,
      child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
        ClipRRect(
          borderRadius: BorderRadius.zero,
          child: Container(
            color: Color.fromARGB(0, 35, 111, 87),
          ),
        ),
        Positioned(
          left: 16.0,
          top: 16.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Ngân sách', pathImage: 'ngan_sach_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 61.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Tài khoản', pathImage: 'tai_khoan_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 106.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Biểu đồ', pathImage: 'bieu_do_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 151.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Danh mục', pathImage: 'danh_muc_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 196.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Thanh toán thông thường', pathImage: 'thanh_toan_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 241.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Nhắc nhở', pathImage: 'nhac_nho_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 286.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Tiền tệ', pathImage: 'tien_te_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 331.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Cài đặt', pathImage: 'cai_dat_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 376.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Tắt quảng cáo', pathImage: 'quang_cao_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 421.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Chia sẻ với bạn bè', pathImage: 'chia_se_icon',),
        ),
        Positioned(
          left: 16.0,
          top: 466.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Đánh giá ứng dụng', pathImage: 'danh_gia_icon', ),
        ),
        Positioned(
          left: 16.0,
          top: 511.0,
          right: null,
          bottom: null,
          width: 281.0,
          height: 33.0,
          child: GeneratedCategoryBlockWidget(title: 'Liên hệ với nhóm hỗ trợ', pathImage: 'lien_he_icon',),
        ),
      ]),
    );
  }
}

class GeneratedCategoryBlockWidget extends StatelessWidget {
  final String title;
  final String pathImage;

  const GeneratedCategoryBlockWidget({Key? key, required this.title, required this.pathImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedHomescreenWidget'),
      child: Container(
        width: 281.0,
        height: 33.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 38.0,
                top: null,
                right: null,
                bottom: null,
                width: 245.0,
                height: 21.0,
                child: GeneratedGiitrWidget30(title: title),
              ),
              Positioned(
                left: 2.2737367544323206e-13,
                top: 4.0,
                right: null,
                bottom: null,
                width: 22.0,
                height: 22.0,
                child: GeneratedRectangle358Widget(pathImage: pathImage),
              )
            ]),
      ),
    );
  }
}

class GeneratedRectangle358Widget extends StatelessWidget {
  final String pathImage;

  const GeneratedRectangle358Widget({Key? key, required this.pathImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.0,
      height: 22.0,
      child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
        Positioned(
          left: 0.0,
          top: 0.0,
          right: 0.0,
          bottom: 0.0,
          width: null,
          height: null,
          child: Mask.fromSVGPath(
            'M0 0L22 0L22 22L0 22L0 0Z',
            child: Image.asset(
              "assets/images/" + pathImage + ".png",
              color: null,
              fit: BoxFit.contain,
              width: 22.0,
              height: 22.0,
              colorBlendMode: BlendMode.dstATop,
            ),
            offset: Offset(0.0, 0.0),
          ),
        )
      ]),
    );
  }
}

class GeneratedGiitrWidget30 extends StatelessWidget {
  final String title;

  const GeneratedGiitrWidget30({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 16.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}

class GeneratedDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297.0,
      height: 1.0,
      child: SvgWidget(painters: [
        SvgPathPainter.stroke(
          1.0,
          strokeJoin: StrokeJoin.miter,
        )
          ..addPath('M0 0L297 0L297 -1L0 -1L0 0Z')
          ..color = Color.fromARGB(255, 231, 231, 231),
      ]),
    );
  }
}

class GeneratedHeaderUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedLogInWidget'),
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          width: 297.0,
          height: 55.0,
          child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
            Positioned(
              left: 87.0,
              top: null,
              right: null,
              bottom: null,
              width: 212.0,
              height: 21.0,
              child: TransformHelper.translate(x: 0.00, y: -18.00, z: 0, child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  '''Kiều Văn Tuyên''',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 16.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),

                    /* letterSpacing: 0.0, */
                  ),
                ),
              )),
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              right: 0.0,
              bottom: 0.0,
              width: null,
              height: null,
              child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                final double width = constraints.maxWidth * 0.7676767676767676;

                final double height = constraints.maxHeight * 0.41818181818181815;

                return Stack(children: [
                  TransformHelper.translate(
                      x: constraints.maxWidth * 0.29292929292929293,
                      y: constraints.maxHeight * 0.6181818181818182,
                      z: 0,
                      child: Container(
                        width: width,
                        height: height,
                        child: GeneratedSdWidget(),
                      ))
                ]);
              }),
            ),
            Positioned(
              left: 16.0,
              top: 2.842170943040401e-14,
              right: null,
              bottom: null,
              width: 55.0,
              height: 55.0,
              child: GeneratedEllipse5Widget40(pathImage: 'header_icon'),
            )
          ]),
        ),
      ),
    );
  }
}

class GeneratedEllipse5Widget40 extends StatelessWidget {
  final String pathImage;

  const GeneratedEllipse5Widget40({Key? key, required this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
        Positioned(
          left: 0.0,
          top: 0.0,
          right: 0.0,
          bottom: 0.0,
          width: null,
          height: null,
          child: Mask.fromSVGPath(
            'M55 27.5C55 42.6878 42.6878 55 27.5 55C12.3122 55 0 42.6878 0 27.5C0 12.3122 12.3122 0 27.5 0C42.6878 0 55 12.3122 55 27.5Z',
            child: Image.asset(
              "assets/images/" + pathImage + ".png",
              color: null,
              fit: BoxFit.cover,
              width: 55.0,
              height: 55.0,
              colorBlendMode: BlendMode.dstATop,
            ),
            offset: Offset(0.0, 0.0),
          ),
        )
      ]),
    );
  }
}

class GeneratedSdWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '''Số dư: 1000,000,000 đ''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.171875,
          fontSize: 16.0,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 255, 255, 255),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
