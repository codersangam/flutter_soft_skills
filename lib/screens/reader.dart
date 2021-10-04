import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReaderScreen extends StatefulWidget {
  const ReaderScreen({Key? key}) : super(key: key);

  @override
  ReaderScreenState createState() {
    return ReaderScreenState();
  }
}

class ReaderScreenState extends State<ReaderScreen> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/placement/introduction.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen1 extends StatefulWidget {
  const ReaderScreen1({Key? key}) : super(key: key);

  @override
  ReaderScreen1State createState() {
    return ReaderScreen1State();
  }
}

class ReaderScreen1State extends State<ReaderScreen1> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/placement/aptitude.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen2 extends StatefulWidget {
  const ReaderScreen2({Key? key}) : super(key: key);

  @override
  ReaderScreen2State createState() {
    return ReaderScreen2State();
  }
}

class ReaderScreen2State extends State<ReaderScreen2> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/placement/gdr.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen3 extends StatefulWidget {
  const ReaderScreen3({Key? key}) : super(key: key);

  @override
  ReaderScreen3State createState() {
    return ReaderScreen3State();
  }
}

class ReaderScreen3State extends State<ReaderScreen3> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/placement/technical.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen4 extends StatefulWidget {
  const ReaderScreen4({Key? key}) : super(key: key);

  @override
  ReaderScreen4State createState() {
    return ReaderScreen4State();
  }
}

class ReaderScreen4State extends State<ReaderScreen4> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/placement/programming.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen5 extends StatefulWidget {
  const ReaderScreen5({Key? key}) : super(key: key);

  @override
  ReaderScreen5State createState() {
    return ReaderScreen5State();
  }
}

class ReaderScreen5State extends State<ReaderScreen5> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/placement/hrr.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen6 extends StatefulWidget {
  const ReaderScreen6({Key? key}) : super(key: key);

  @override
  ReaderScreen6State createState() {
    return ReaderScreen6State();
  }
}

class ReaderScreen6State extends State<ReaderScreen6> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/gd/introduction.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen7 extends StatefulWidget {
  const ReaderScreen7({Key? key}) : super(key: key);

  @override
  ReaderScreen7State createState() {
    return ReaderScreen7State();
  }
}

class ReaderScreen7State extends State<ReaderScreen7> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/gd/keypoints.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen8 extends StatefulWidget {
  const ReaderScreen8({Key? key}) : super(key: key);

  @override
  ReaderScreen8State createState() {
    return ReaderScreen8State();
  }
}

class ReaderScreen8State extends State<ReaderScreen8> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/gd/rules.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen9 extends StatefulWidget {
  const ReaderScreen9({Key? key}) : super(key: key);

  @override
  ReaderScreen9State createState() {
    return ReaderScreen9State();
  }
}

class ReaderScreen9State extends State<ReaderScreen9> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/gd/phrases.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen10 extends StatefulWidget {
  const ReaderScreen10({Key? key}) : super(key: key);

  @override
  ReaderScreen10State createState() {
    return ReaderScreen10State();
  }
}

class ReaderScreen10State extends State<ReaderScreen10> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/gd/advantages.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen11 extends StatefulWidget {
  const ReaderScreen11({Key? key}) : super(key: key);

  @override
  ReaderScreen11State createState() {
    return ReaderScreen11State();
  }
}

class ReaderScreen11State extends State<ReaderScreen11> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/gd/doneandavoid.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen12 extends StatefulWidget {
  const ReaderScreen12({Key? key}) : super(key: key);

  @override
  ReaderScreen12State createState() {
    return ReaderScreen12State();
  }
}

class ReaderScreen12State extends State<ReaderScreen12> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/hr/introduction.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen13 extends StatefulWidget {
  const ReaderScreen13({Key? key}) : super(key: key);

  @override
  ReaderScreen13State createState() {
    return ReaderScreen13State();
  }
}

class ReaderScreen13State extends State<ReaderScreen13> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/hr/questions.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen14 extends StatefulWidget {
  const ReaderScreen14({Key? key}) : super(key: key);

  @override
  ReaderScreen14State createState() {
    return ReaderScreen14State();
  }
}

class ReaderScreen14State extends State<ReaderScreen14> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/doanddont/do.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen15 extends StatefulWidget {
  const ReaderScreen15({Key? key}) : super(key: key);

  @override
  ReaderScreen15State createState() {
    return ReaderScreen15State();
  }
}

class ReaderScreen15State extends State<ReaderScreen15> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/doanddont/dont.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen16 extends StatefulWidget {
  const ReaderScreen16({Key? key}) : super(key: key);

  @override
  ReaderScreen16State createState() {
    return ReaderScreen16State();
  }
}

class ReaderScreen16State extends State<ReaderScreen16> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/bodylanguage/introduction.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen17 extends StatefulWidget {
  const ReaderScreen17({Key? key}) : super(key: key);

  @override
  ReaderScreen17State createState() {
    return ReaderScreen17State();
  }
}

class ReaderScreen17State extends State<ReaderScreen17> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/bodylanguage/before.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen18 extends StatefulWidget {
  const ReaderScreen18({Key? key}) : super(key: key);

  @override
  ReaderScreen18State createState() {
    return ReaderScreen18State();
  }
}

class ReaderScreen18State extends State<ReaderScreen18> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/bodylanguage/during.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}

class ReaderScreen19 extends StatefulWidget {
  const ReaderScreen19({Key? key}) : super(key: key);

  @override
  ReaderScreen19State createState() {
    return ReaderScreen19State();
  }
}

class ReaderScreen19State extends State<ReaderScreen19> {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText =
        await rootBundle.loadString('assets/bodylanguage/after.html');
    _controller.loadUrl(Uri.dataFromString(fileText,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
