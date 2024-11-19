import 'package:dio/dio.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:survey_pilkada_cianjur/helpers/ad_helper.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class QuickCountScreen extends StatefulWidget {
  const QuickCountScreen({super.key});

  @override
  State<QuickCountScreen> createState() => _QuickCountScreenState();
}

class _QuickCountScreenState extends State<QuickCountScreen> {
  BannerAd? _bannerAd;
  var quickCountData = [];
  Future<void> _fetchQuickCountApi() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
        "https://survey-pilkada-cianjur.dittmptrr27.com/api/quick-count",
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

  _loadBannerAd() {
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  void initState() {
    super.initState();
    _fetchQuickCountApi();
    _loadBannerAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
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
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '01',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Image.asset(
                                'assets/images/1.jpg',
                                height: 150,
                                fit: BoxFit.cover,
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
                                    fontSize: 18,
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
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '02',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
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
                                    fontSize: 18,
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
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '03',
                                style: blackTextStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Image.asset(
                                'assets/images/3.jpg',
                                height: 150,
                                fit: BoxFit.cover,
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
                                    fontSize: 18,
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
            if (_bannerAd != null)
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
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
                                          'Herman - Ibang',
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
                                          'dr Wahyu - Ramzi',
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
                                          'Deden - dr Efa',
                                          style: blackTextStyle.copyWith(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Total responden survey : ${quickCountData.isNotEmpty ? quickCountData[0]['voteTotal'] + quickCountData[1]['voteTotal'] + quickCountData[2]['voteTotal'] : 0} suara',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
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
