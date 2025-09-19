import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_task/Routing/app_routes.dart';
import 'package:training_task/widgets/alpha_radio_widget.dart';
import 'package:training_task/widgets/country_widget.dart';

class RadioChoice extends StatelessWidget {
  const RadioChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Choice")),
      body: Column(
        children: [
          AlphaRadioWidget(),
          Flexible(
            child: ListView(
              children: [
                CountryWidget(
                  countryFlag:
                      "https://cdn.britannica.com/74/84674-050-AD695E2F/Flag-Palestinian-Authority-Palestine.jpg",
                  primaryText: "Palestine",
                  secondaryText: "STK Soft",
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/1024px-Flag_of_Brazil.svg.png",
                  primaryText: "Brazil",
                  secondaryText: 'national',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://img.freepik.com/premium-vector/national-flag-world-egypt_180401-1660.jpg?semt=ais_incoming&w=740&q=80",
                  primaryText: 'Egypt',
                  secondaryText: 'Alpha',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo3w_m50xrD0qxcRcDVZFVu5A6bu_L0bYQIw&s",
                  primaryText: 'Argentina',
                  secondaryText: 'Pmon',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/1500px-Flag_of_Italy.svg.png",
                  primaryText: 'Italy',
                  secondaryText: 'Guos',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/2560px-Flag_of_the_Netherlands.svg.png",
                  primaryText: 'Netherlands',
                  secondaryText: 'Npol',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/2560px-Flag_of_South_Africa.svg.png",
                  primaryText: 'South Africa',
                  secondaryText: 'Jonm',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
                CountryWidget(
                  countryFlag:
                      "https://www.countryflags.com/wp-content/uploads/canada-flag-png-xl.png",
                  primaryText: 'Canada',
                  secondaryText: 'Jonm',
                  onTap: () {
                    GoRouter.of(context).pushNamed(AppRoutes.mainPage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
