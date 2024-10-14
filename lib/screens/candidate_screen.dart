import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class CandidateScreen extends StatefulWidget {
  const CandidateScreen({super.key});

  @override
  State<CandidateScreen> createState() => _CandidateScreenState();
}

class _CandidateScreenState extends State<CandidateScreen> {
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
          'Daftar Kandidat',
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
              'Silahkan klik setiap kandidat untuk melihat \n Visit & Misi',
              style: blackTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          color: whiteColor,
                        ),
                        padding: EdgeInsets.all(defaultPadding),
                        width: double.infinity,
                        height: 400,
                        child: Column(
                          children: [
                            Text(
                              'Visi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Mewujudkan Cianjur Manjur (Mandiri, Maju, Religius) '
                              'Berakhlakul Karimah Menuju Cianjur Emas',
                              style: blackTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Misi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '1. Mempersiapkan Generasi Emas Cianjur (SDM Unggul)\n'
                              '2. Membangun Kemandirian Ekonomi dan Ketahanan Pangan\n'
                              '3. Membangun Infrastruktur Fisik dan Digital\n'
                              '4. Pelayanan Publik Lebih Cepat dan Tepat Sasaran\n'
                              '5. Membangun Cianjur yang Berbudaya dan Berakhlakul Karimah',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          '01',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/1.jpg',
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/partai/logo-pdip.png',
                              width: 50,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-pkb.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-demokrat.png',
                              width: 35,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-pan.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-ppp.png',
                              width: 40,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.7,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          color: whiteColor,
                        ),
                        padding: EdgeInsets.all(defaultPadding),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              'Visi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Mewujudkan Cianjur Era Baru',
                              style: blackTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Misi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '1. Mewujudkan SDM yang berakhlakul karimah, berkualitas, dan berdaya saing di era global.\n'
                              '2. Mewujudkan ekonomi kerakyatan yang kreatif, inovatif,produktif, dan berdaya saing dengan mengoptimalkan potensi lokal untuk menciptakan kemandirian serta kesejahteraan yang berkelanjutan.\n'
                              '3. Mewujudkan tata kelola pelayanan pendidikan, kesehatan, dan pelayanan dasar lainnya yang mudah, adil, dan berkualitas. \n'
                              '4. Mewujudkan ketahanan pangan yang mandiri melalui pemberdayaan masyarakat berbasis teknologi pertanian.\n'
                              '5. Mewujudkan ketersediaan infrastruktur publik yang terintegrasi dan berkelanjutan.\n'
                              '6. Mengoptimalkan tata kelola pemerintahan melalui sistem merit dalam rangka mewujudkan birokrasi yang profesional.',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          '02',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/2.jpg',
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/partai/logo-gerindra.png',
                              width: 50,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-nasdem.png',
                              width: 40,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-psi.png',
                              width: 35,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-buruh.png',
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          color: whiteColor,
                        ),
                        padding: EdgeInsets.all(defaultPadding),
                        width: double.infinity,
                        height: 400,
                        child: Column(
                          children: [
                            Text(
                              'Visi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Terwujudnya Cianjur BERKAH (Berdaya saing, Khidmat dan Amanah)',
                              style: blackTextStyle,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Misi',
                              style: blackTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '1. Mewujudkan masyarakat yang sehat, cerdas, dan sejahtera.\n'
                              '2. Mewujudkan daya saing ekonomi daerah berbasis pertanian dan pariwisata.\n'
                              '3. Mempercepat pembangunan infrastruktur yang merata dan berwawasan lingkungan.\n'
                              '4. Mewujudkan pemerintahan kolaboratif yang melayani dan melindungi.\n'
                              '5. Mewujudkan masyarakat yang religius, berbudaya dan berketahanan keluarga.',
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Text(
                          '03',
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/3.jpg',
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/partai/logo-golkar.png',
                              width: 45,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-pks.png',
                              width: 30,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Image.asset(
                              'assets/images/partai/logo-perindo.png',
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }
}
