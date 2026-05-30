import 'package:flutter/material.dart';
import 'package:mudra/screens/portfolio_screens/Components/watchlist.dart';
import 'package:mudra/styles/fontStyle.dart';
import 'portfolio_screens/Components/top_buttons.dart';
import 'portfolio_screens/Components/holdings.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);
  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int curIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Portfolio',
                style: FontStyles.heading2,
              ),
              const SizedBox(
                height: 17,
              ),
              TopButtons(controller: _controller),
              const SizedBox(
                height: 30,
              ),
              Flexible(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    Holdings(),
                    Watchlist(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
