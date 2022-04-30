import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slideshow_app/providers/providers.dart';

class BannerSaleOff extends StatelessWidget {
  const BannerSaleOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return _CustomCard(size: size);
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: size.width,
          height: 250,
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/imgs/Banner4.jpg'),
          ),
        ),
        Container(
          width: size.width,
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black26,
                Colors.black12,
              ],
            ),
          ),
        ),
        const _Titles(),
      ],
    );
  }
}

class _Titles extends StatefulWidget {
  const _Titles({
    Key? key,
  }) : super(key: key);

  @override
  State<_Titles> createState() => _TitlesState();
}

class _TitlesState extends State<_Titles> {
  @override
  void initState() {
    super.initState();
    final timer = Provider.of<TimerProvider>(context, listen: false);
    timer.startCountDown();
  }

  @override
  Widget build(BuildContext context) {
    final timer = Provider.of<TimerProvider>(context);
    return Column(
      children: [
        const Text(
          'Super Flash Sale',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          '50% Off',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CustomTimerBox(time: timer.hour),
            _CustomTimerBox(time: timer.minute),
            _CustomTimerBox(time: timer.seconds),
          ],
        ),
      ],
    );
  }
}

class _CustomTimerBox extends StatefulWidget {
  final int time;
  const _CustomTimerBox({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  State<_CustomTimerBox> createState() => _CustomTimerBoxState();
}

class _CustomTimerBoxState extends State<_CustomTimerBox> {
  // @override
  // void initState() {
  //   super.initState();
  //   final timer = Provider.of<TimerProvider>(context, listen: false);
  //   timer.startCountDown();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        widget.time.toString(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
