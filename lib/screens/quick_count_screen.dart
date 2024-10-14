import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class QuickCountScreen extends StatefulWidget {
  const QuickCountScreen({super.key});

  @override
  State<QuickCountScreen> createState() => _QuickCountScreenState();
}

class _QuickCountScreenState extends State<QuickCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: whiteColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Quick Count',
          style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.all(defaultMargin),
        child: ListView(
          children: [
            Text(
              'Hasil perolehan survey dan presentase suara',
              style: blackTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 4,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(defaultRadius),
                          ),
                          child: Image.asset(
                            'assets/images/1.jpg',
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 14,
                            top: 12,
                          ),
                          child: Text(
                            '100%',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 4,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/2.jpg',
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 14,
                            top: 12,
                          ),
                          child: Text(
                            '100%',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 4,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(defaultRadius),
                          ),
                          child: Image.asset(
                            'assets/images/3.jpg',
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 14,
                            top: 12,
                          ),
                          child: Text(
                            '100%',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
              child: Container(
                margin: EdgeInsets.all(
                  defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Presentase Jumlah Suara',
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: PieChart(
                        PieChartData(
                          centerSpaceRadius: 5,
                          borderData: FlBorderData(show: false),
                          sectionsSpace: 0,
                          sections: [
                            PieChartSectionData(
                              value: 30,
                              title: '30%',
                              color: const Color(0xff3199CE),
                              radius: 100,
                              titleStyle: whiteTextStyle.copyWith(
                                fontWeight: bold,
                              ),
                            ),
                            PieChartSectionData(
                              value: 40,
                              title: '40%',
                              color: const Color(0xff0E1C54),
                              radius: 100,
                              titleStyle: whiteTextStyle.copyWith(
                                fontWeight: bold,
                              ),
                            ),
                            PieChartSectionData(
                              value: 30,
                              title: '30%',
                              color: const Color(0xffF05B27),
                              radius: 100,
                              titleStyle: whiteTextStyle.copyWith(
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          sm: 12,
                          child: Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Color(0xff3199CE),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Herman - Ibang (1000 suara)',
                                style: blackTextStyle.copyWith(),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 12,
                          child: Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Color(0xff0E1C54),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'dr Wahyu - Ramzi (1000 suara)',
                                style: blackTextStyle.copyWith(),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 12,
                          child: Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                  color: Color(0xffF05B27),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Deden - dr Efa (1000 suara)',
                                style: blackTextStyle.copyWith(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
