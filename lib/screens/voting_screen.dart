import 'package:flutter/material.dart';
import 'package:survey_pilkada_cianjur/themes/fonts.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({super.key});

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
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
          'Mulai Survey',
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
              'Silahkan klik setiap kandidat untuk mulai survey',
              style: blackTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
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
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            primaryColor,
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
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
                                      const SizedBox(height: 24),
                                      Text(
                                        'Program Unggulan',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        '1. Pembangunan Infrastruktur Dengan Alokasi Anggaran 500M Per Tahun\n'
                                        '2. Menciptakan 100.000 Lapangan Kerja\n'
                                        '3. Anggaran Rp. 30 Juta Per Tahun\n'
                                        '4. Bantuan Pendidikan untuk Siswa Tidak Mampu & Beasiswa Perguruan Tinggi, Bantuan Operasional Pesantren Serta Implementasi 3 Pilar Budaya\n'
                                        '5. Peningkatan Kualitas & Cakupan Layanan Kesehatan Gratis Serta Pembangunan Rumah Sakit Bertaraf Internasional\n'
                                        '6. Peningkatan Program Pangan Murah\n'
                                        '7. Wirausaha Berdaya\n'
                                        '8. Peningkatan Produktifitas Pertanian & Pengembangan Industri Berbasis Pertanian Untuk Memperkuat Ketahanan Pangan\n'
                                        '9. Pengembangan Desa Wisata Obyek Wisata Unggulan & Ekonomi Kreatif\n'
                                        '10. Digitalisasi Satu Data Untuk Meningkatkan Pelayanan Publik\n',
                                        style: blackTextStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                lightGreyColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Tutup',
                                              style: blackTextStyle,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                primaryColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Pilih Kandidat',
                                              style: whiteTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Lihat Visi, Misi dan Program',
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
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
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            primaryColor,
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
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
                                      const SizedBox(height: 24),
                                      Text(
                                        'Program Unggulan',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        '1. Melaksanakan Program Bantuan 25 Juta Per RT Per Tahun\n'
                                        '2. Peningkatan Insentif Para Ketua RT dan RW\n'
                                        '3. Pengelolaan Dana yang Transparan dan Akuntabel\n'
                                        '4. Pemberdayaan Pondok Pesantren (Bantuan 300JT Per Pesantren)\n'
                                        '5. Pengembangan Infastruktur dan Kegiatan\n'
                                        '6. Transparansi dan Akuntabilitas\n'
                                        '7. Meningkatkan Insentif Kader Posyandu\n'
                                        '8. Mendukung Kegiatan Posyandu\n'
                                        '9. Sembako Murah, Lapangan Kerja Mudah, Pembagunan 5 Cluster, Ketersidaan Air\n'
                                        '10. Pelayanan Kesehatan, Wifi Sekolah Gratis, Beasiswa Pendidikan, Peningkatan Kesejahteraan, \n',
                                        style: blackTextStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                lightGreyColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Tutup',
                                              style: blackTextStyle,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                primaryColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Pilih Kandidat',
                                              style: whiteTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Lihat Visi, Misi dan Program',
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Card(
              elevation: 5,
              color: whiteColor,
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
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 14,
                      ),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            primaryColor,
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
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
                                      const SizedBox(height: 24),
                                      Text(
                                        'Program Unggulan',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 18,
                                          fontWeight: bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        '1. Program Mobile Klinik dan Berobat Cukup dengan KTP\n'
                                        '2. Kuliah Gratis Melalui Program 10.000 Beasiswa\n'
                                        '3. Program 5.000 Wirausaha Baru (WUB) dan 500 Perempuan Pengusaha\n'
                                        '4. Cianjur Cepat Tanggap (CCT)\n'
                                        '5. Bantuan Rp500.000 untuk Masjid Jami’ dan Rumah Ibadah Setiap Bulan\n'
                                        '6. Bantuan Operasional Pesantren (BOP) dan Standarisasi Pesantren\n'
                                        '7. Pembangunan Klaster Agroindustri Berbasis Potensi Unggulan dan Asuransi Gagal Panen untuk Petani\n'
                                        '8. Peningkatan insentif Cianjur Berkah bagi Perangkat Kelurahan/Desa, RT/RW, LPM, dan Posyandu\n'
                                        '9. Pembangunan Desa Wisata Berbasis Potensi Lokal, 1 Kecamatan 1 Desa Wisata\n'
                                        '10. Menuntaskan Jalan Kabupaten Antar Kecamatan (Leucir Tuntas dalam 5 Tahun)\n',
                                        style: blackTextStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                lightGreyColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Tutup',
                                              style: blackTextStyle,
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                primaryColor,
                                              ),
                                            ),
                                            child: Text(
                                              'Pilih Kandidat',
                                              style: whiteTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Lihat Visi, Misi dan Program',
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
                  ],
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
