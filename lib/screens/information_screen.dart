import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/screens/home_screen.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          'Tentang Aplikasi',
          style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: whiteColor,
        ),
        padding: EdgeInsets.all(defaultPadding),
        width: double.infinity,
        child: ListView(
          children: [
            Text(
              '1. Aplikasi ini menyediakan survei independen terkait pemungutan suara di Kab. Cianjur tahun 2024. \n'
              '2. Aplikasi ini tidak terafiliasi dengan pemerintah atau entitas resmi apa pun dan hanya bertujuan untuk menyajikan informasi secara independen.\n',
              style: blackTextStyle,
            ),
            Text(
              'Scroll untuk tutup',
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Sumber Informasi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '1. Herman Suherman - H.Ibang Solihin',
              style: blackTextStyle,
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/bhsimanjur/visi-misi.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Visi & Misi',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/bhsimanjur/program.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Program Unggulan',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            Text(
              '2. Dr. Muhammad Wahyu - Ramzi',
              style: blackTextStyle,
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/wahyuramziofficial/visi-misi.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Visi & Misi',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/wahyuramziofficial/program.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Program Unggulan',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            Text(
              '3. Deden Nasihin - Dr. Efa',
              style: blackTextStyle,
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/dna_pemenang/visi-misi.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Visi & Misi',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/dna_pemenang/program.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '- Program Unggulan',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Kebijakan dan Privasi',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Lihat kebijakan dan privasi pada link berikut:',
              style: blackTextStyle,
            ),
            const SizedBox(height: 8),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                overlayColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                alignment: Alignment.centerLeft,
              ),
              isSemanticButton: false,
              onPressed: () async {
                final Uri url = Uri.parse(
                    'https://dittmptrr27.com/survey_pilkada_cianjur/privacy-policy.html');
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                '[link]',
                style: blackTextStyle.copyWith(
                  color: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.lightBlue,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Disclaimer:',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
                color: Colors.red, // Memberi penekanan pada disclaimer
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '[id] Aplikasi ini tidak mewakili atau berafiliasi dengan entitas pemerintah manapun.',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
                color: Colors.red, // Memberi penekanan pada disclaimer
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '[en] This app is not affiliated with any government entity and does not represent government services.',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
                color: Colors.red, // Memberi penekanan pada disclaimer
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'dittmptrr27.com',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      lightGreyColor,
                    ),
                  ),
                  child: Text(
                    'Tutup',
                    style: blackTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
