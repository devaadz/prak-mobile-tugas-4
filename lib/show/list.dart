import 'package:flutter/material.dart';
//import 'package:recycle_view_card/data/product.dart';
import 'package:recycle_view_card/template/ProductBox.dart';
//import 'package:recycle_view_card/show/detail.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePage createState({Key key, this.title}) => MyHomePage();
// }


class ListPageData extends StatelessWidget {  
  ListPageData({Key key, this.title}) : super(key: key);  
  final String title;  
   static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => ListPageData(),
      );
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(title: Text(title)),  
        body: ListView(  
          padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),  
          children: <Widget>[  
            //product()
            ProductBox(  
                name: "BukaLapak",  
                image: "logo_bukalapak.png",
                deskripsi: "Bukalapak merupakan salah satu perusahaan e-commerce di Indonesia. Didirikan oleh Achmad Zaky, Nugroho Herucahyono, dan Muhamad Fajrin Rasyid pada tahun 2010, Bukalapak awalnya merupakan toko daring yang memungkinkan para pelaku Usaha Kecil dan Menengah (UKM) untuk merambah ke dunia maya.Perusahaan tersebut kini telah melakukan ekspansi ke berbagai lini bisnis lain, termasuk membantu meningkatkan penjualan para warung tradisional lewat layanan Mitra Bukalapak.Pada tahun 2017, Bukalapak menjadi salah satu startup unikorn asal tanah air.",
                link: "https://www.bukalapak.com"
            ),  
            ProductBox(  
                name: "Tokopedia",  
                image: "Logo_Tokopedia.png",  
                deskripsi : "Tokopedia merupakan perusahaan perdagangan elektronik atau sering disebut toko daring. Sejak didirikan pada tahun 2009, Tokopedia telah bertransformasi menjadi sebuah unicorn yang berpengaruh tidak hanya di Indonesia tetapi juga di Asia Tenggara. Hingga saat ini, Tokopedia termasuk marketplace yang paling banyak dikunjungi oleh masyarakat Indonesia. Tokopedia turut mendukung para pelaku Usaha Mikro Kecil dan Menengah (UMKM) dan perorangan untuk mengembangkan usaha mereka dengan memasarkan produk secara daring dengan Pemerintah dan pihak-pihak lainnya. Salah satu program kolaborasi yang diinisasi oleh Tokopedia adalah acara tahunan MAKERFEST yang diadakan sejak bulan Maret 2018.",
                link: "https://www.tokopedia.com/"  
            ),  
            ProductBox(  
                name: "Shopee",  
                image: "logo_shopee.jpg",
                deskripsi : "Shopee adalah situs elektronik komersial yang berkantor pusat di Singapura di bawah naungan SEA Group (sebelumnya dikenal dengan nama Garena), yang didirikan pada 2009 oleh Forrest Li. Shopee pertama kali diluncurkan di Singapura pada tahun 2015, dan sejak itu memperluas jangkauannya ke Malaysia, Thailand, Taiwan, Indonesia, Vietnam, dan Filipina. Mulai tahun 2019, Shopee juga sudah aktif di negara Brasil, menjadikannya negara pertama di Amerika Selatan dan luar Asia yang dikunjungi Shopee. Shopee sendiri dipimpin oleh Chris Feng, mantan karyawan Rocket Internet yang pernah memimpin Zalora dan Lazada." ,
                link: "https://shopee.co.id/" 
            ),  
            ProductBox(  
                name: "Zalora",  
                image: "logo_zalora.jpg",  
                deskripsi : "ZALORA adalah toko online fashion dan kecantikan yang menawarkan koleksi pakaian, aksesoris, sepatu dan produk kecantikan untuk pria dan wanita. Berpusat di Singapura, ZALORA juga terdapat di Hong Kong, Singapura, Indonesia, Filipina, Thailand, Vietnam, Malaysia dan Brunei. ZALORA menjual produk fashion dari brand international dan juga brand lokal di setiap Negara yang beroperasi. ZALORA juga beroperasi di Australia dan New Zealand sebagai The Iconic. Zalora adalah salah satu investasi utama Rocket Internet di Singapura. Zalora merupakan anak perusahaan dari situs belanja online Zalando. Zalando merupakan proyek dari Rocket Internet." ,
                link: "https://www.zalora.co.id/" 
            ),  
            ProductBox(  
                name: "Lazada",  
                image: "logo_lazada.png",
                deskripsi : "Lazada Group adalah sebuah perusahaan e-commerce Asia Tenggara yang didirikan oleh Rocket Internet dan Pierre Poignant pada 2012, dan dimiliki oleh Alibaba Group. Pada 2014, Lazada Group mengoperasikan situs-situs di Indonesia, Malaysia, Filipina, Singapura, Thailand, dan Vietnam dan meraih sekitar 647 juta dolar amerika dari beberapa putaran investasi dari para investornya seperti Tesco, Temasek Holdings, Summit Partners, JPMorgan Chase, Investment AB Kinnevik dan Rocket Internet.  Lazada Indonesia sendiri didirikan pada tahun 2012 dan beroperasi hingga kini." ,
                link: "https://www.lazada.co.id/" 
            ),  
            ProductBox(  
                name: "Amazon",  
                image: "logo_Amazon.png",  
                deskripsi : "Amazon didirikan oleh Jeff Bezos pada 5 Juli 1994 di Bellevue, Washington. Perusahaan ini awalnya dimulai sebagai pasar online untuk buku tetapi kemudian diperluas untuk menjual barang elektronik, perangkat lunak, video game, pakaian, furnitur, makanan, mainan, dan perhiasan. Pada 2015, Amazon melampaui Walmart sebagai pengecer paling berharga di Amerika Serikat dengan kapitalisasi pasar. Pada tahun 2017, Amazon mengakuisisi Whole Foods Market senilai 13,4 miliar dolar, yang sangat meningkatkan kehadiran Amazon sebagai pengecer batu-dan-mortir. Pada 2018, Bezos mengumumkan bahwa layanan pengiriman dua hari, Amazon Prime, telah melampaui 100 juta pelanggan di seluruh dunia." ,
                link: "https://www.amazon.com/" 
            ),  
            ProductBox(  
                name: "Jd.id",  
                image: "Jdid_logo.png",  
                deskripsi : "JD.com, Inc. Juga dikenal dengan nama Jingdong dan sebelumnya bernama 360buy, adalah perusahaan perdagangan elektronik Tiongkok yang berpusat di Beijing. JD adalah satu dari dua peritel daring B2C terbesar di Tiongkok (menurut volume transaksi dan pendapatan), anggota Fortune Global 500, dan pesaing utama Tmall milik Alibaba. Pada kuartal pertama 2018, platform ini memiliki 301,8 juta pengguna aktif.",
                link: "https://www.jd.id/"  
            ),  
            ProductBox(  
                name: "Blibli",  
                image: "logo_Blibli.png",  
                deskripsi : "Blibli.com adalah salah satu situs web perdagangan elektronik di Indonesia. Blibli adalah produk pertama PT Global Digital Niaga yang merupakan anak perusahaan Djarum di bidang digital yang didirikan pada tahun 2010. Blibli bekerja sama dengan penyedia jasa teknologi, mitra logistik, perbankan serta mitra dagang dengan standar tertentu untuk menciptakan sistem back-end yang bisa memenuhi kebutuhan pengguna blibli. Kantor pusat Blibli bermarkas di Jakarta Barat dengan biaya infrastruktur seperti server dan jaringan hampir mencapai Rp 100 miliar." ,
                link: "https://www.blibli.com/" 
            ),  
            ProductBox(  
                name: "Ebay",  
                image: "logo_EBay.png",  
                deskripsi : "eBay didirikan pada 1995 oleh Pierre Omidyar sebagai AuctionWeb, bagian dari situs pribadi yang termasuk, tulisan sumbangan Omidyar terhadap virus Ebola. Awalnya situs ini dimiliki oleh Echo Bay Technology Group, firma konsultasi Omidyar. Omidyar telah mencoba mendaftar nama domain EchoBay.com namun nama itu telah dimiliki orang lain, jadi dia memendekkan namanya menjadi eBay.com. eBay bermarkas di San Jose, California, Meg Whitman telah menjadi presiden eBay dan CEO-nya sejak Maret 1998. Kesuksesan e-bay ini menjadi inspirasi bagi banyak perusahaan lelang lainnya yang menyebar keseluruh dunia. Ide daripada eBay ini merupakan salah satu contoh dari fenomena Long Tail yang dipaparkan oleh Chris Andersen lewat bukunya yang berjudul sama The Long Tail, di mana pasar ideal akan tercipta di mana keragaman barang yang dijual akan semakin banyak, sementara jumlahnya semakin sedikit.sumber pendapatan banyak berasal dari paypal." ,
                link: "https://www.ebay.com/" 
            ),  
            ProductBox(  
                name: "Alibaba",  
                image: 'logo_Alibaba.png',  
                deskripsi : "Alibaba Group Holding Limited adalah konglomerat multinasional Tiongkok yang memiliki spesialisasi dalam e-commerce, ritel, Internet, kecerdasan buatan, dan teknologi. Didirikan pada tahun 1999, perusahaan ini menyediakan layanan penjualan konsumen-ke-konsumen, bisnis-ke-konsumen, dan bisnis-ke-bisnis melalui portal web, serta layanan pembayaran elektronik, mesin pencari belanja dan layanan cloud computing. Perusahaan ini memiliki dan mengoperasikan beragam bisnis di seluruh dunia dalam berbagai sektor, dan dinobatkan sebagai salah satu perusahaan paling dikagumi di dunia oleh Majalah Fortune. Pada saat penutupan dalam penawaran umum perdana (IPO) - 25 miliar Dolar Amerika Serikat - tertinggi di dunia dalam sejarah, 19 September 2014, nilai pasar Alibaba adalah 231 miliar dolar amerika."  ,
                link: "https://www.alibaba.com/"
            ),  
          ],  
        )  
    );  
  }  
} 