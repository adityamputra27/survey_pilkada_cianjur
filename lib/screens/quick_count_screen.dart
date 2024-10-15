import 'package:dio/dio.dart';
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
  var quickCountData = [];
  Future<void> _fetchQuickCountApi() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
        "http://survey-pilkada-cianjur.dittmptrr27.com/api/quick-count",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Survey-Pilkada-Cianjur": "www.dittmptrr27.com"
          },
        ),
      );

      if (response.data['status'] == 'success') {
        var responseData = response.data['data'];
        quickCountData = responseData;

        setState(() {});
      }
    } catch (e) {
      debugPrint('Exception: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchQuickCountApi();
  }

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
              child: quickCountData.isEmpty
                  ? Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: defaultPadding,
                        ),
                        child: CircularProgressIndicator(
                          strokeWidth: 5,
                          color: primaryColor,
                        ),
                      ),
                    )
                  : ResponsiveGridRow(
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
                                  quickCountData[0]['votePercentage']
                                      .toString(),
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
                                  quickCountData[1]['votePercentage']
                                      .toString(),
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
                                  quickCountData[2]['votePercentage']
                                      .toString(),
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
                    quickCountData.isEmpty
                        ? Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: defaultPadding,
                              ),
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                                color: primaryColor,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              SizedBox(
                                height: 250,
                                child: PieChart(
                                  PieChartData(
                                    centerSpaceRadius: 5,
                                    borderData: FlBorderData(show: false),
                                    sectionsSpace: 0,
                                    sections: [
                                      PieChartSectionData(
                                        value: double.parse(quickCountData[0]
                                                ['votePercentage']
                                            .split('%')[0]),
                                        title: quickCountData[0]
                                                ['votePercentage']
                                            .toString(),
                                        color: const Color(0xff3199CE),
                                        radius: 100,
                                        titleStyle: whiteTextStyle.copyWith(
                                          fontWeight: bold,
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: double.parse(quickCountData[1]
                                                ['votePercentage']
                                            .split('%')[0]),
                                        title: quickCountData[1]
                                                ['votePercentage']
                                            .toString(),
                                        color: const Color(0xff0E1C54),
                                        radius: 100,
                                        titleStyle: whiteTextStyle.copyWith(
                                          fontWeight: bold,
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: double.parse(quickCountData[2]
                                                ['votePercentage']
                                            .split('%')[0]),
                                        title: quickCountData[2]
                                                ['votePercentage']
                                            .toString(),
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
                                          'Herman - Ibang (${quickCountData[0]['voteTotal'].toString()} suara)',
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
                                          'dr Wahyu - Ramzi (${quickCountData[1]['voteTotal'].toString()} suara)',
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
                                          'Deden - dr Efa (${quickCountData[2]['voteTotal'].toString()} suara)',
                                          style: blackTextStyle.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
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
