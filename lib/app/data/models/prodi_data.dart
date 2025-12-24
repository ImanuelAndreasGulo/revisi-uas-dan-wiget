// Model data untuk Program Studi
class ProdiData {
  // Data Profil
  static const String namaProdi = 'Informatika';
  static const String fakultas = 'Fakultas Sains, Komputer, dan Matematika';
  static const String universitas = 'Universitas Matana';
  static const String jenjang = 'S1 (Sarjana)';
  static const String akreditasi = 'Baik Sekali';
  
  // Tentang Program Studi
  static const String deskripsi = 
      'Jurusan Teknik Informatika merupakan salah satu jurusan yang paling dicari oleh calon mahasiswa di Indonesia '
      'karena di era digital sekarang, ilmu komputer menjadi salah satu ilmu esensial yang harus dipelajari semua orang. '
      'Teknik Informatika adalah salah satu jurusan pendidikan tingkat perguruan tinggi yang mempelajari serta menerapkan '
      'prinsip-prinsip ilmu komputer dan analisis matematis dalam perancangan, pengujian, pengembangan, dan evaluasi '
      'sistem operasi, perangkat lunak (software), dan kinerja komputer. Bidang studi ini melakukan pembahasan terkait '
      'pengolahan data dengan memanfaatkan teknologi komputer yang menggunakan prinsip dan proses logika. '
      '\n\n'
      'Bila memutuskan untuk memilih Jurusan Teknik Informatika, maka Anda akan cukup banyak berkutat dengan pemrograman '
      '(programming), pengembangan perangkat lunak (software), dan teknologi jaringan komputer. Pada dasarnya, Anda akan '
      'menjadi penerjemah suatu ide yang harus dituangkan dalam bentuk digital menggunakan bahasa pemrograman tertentu.';
  
  // Visi
  static const String visi = 
      'Menjadi program studi yang terpercaya dan terkemuka dalam bidang komputer sains untuk sektor kesehatan '
      'yang berwawasan nasional dan internasional serta berperan dalam peningkatan kualitas iman kepercayaan, '
      'ilmu pengetahuan dan teknologi, yang merupakan karunia Tuhan, untuk kecerdasan dan kesejahteraan umat '
      'manusia serta kehidupan yang lebih baik dan berkelanjutan.';
  
  // Misi
  static const List<String> misi = [
    'Membentuk lulusan yang memiliki jiwa kepemimpinan serta berdedikasi pada perilaku etis, bertanggung jawab berlandaskan layanan penuh kasih',
    'Membentuk lulusan yang memiliki kemampuan meneliti, kreatif, dan inovatif dalam bidang komputer sains untuk sektor kesehatan yang berjiwa kewirausahaan',
    'Membentuk lulusan yang memiliki kepedulian untuk kehidupan berkelanjutan',
  ];
  
  // Kurikulum / Mata Kuliah Unggulan
  static const List<Map<String, String>> mataKuliah = [
    {
      'nama': 'Artificial Intelligence',
      'deskripsi': 'Mempelajari konsep dan implementasi kecerdasan buatan'
    },
    {
      'nama': 'Database System',
      'deskripsi': 'Perancangan dan pengelolaan sistem basis data'
    },
    {
      'nama': 'Computer Science',
      'deskripsi': 'Dasar-dasar ilmu komputer dan algoritma'
    },
    {
      'nama': 'Software Engineering',
      'deskripsi': 'Rekayasa perangkat lunak dan metodologi pengembangan'
    },
    {
      'nama': 'Computer Systems and Networks',
      'deskripsi': 'Arsitektur sistem komputer dan jaringan'
    },
    {
      'nama': 'Computer Security',
      'deskripsi': 'Keamanan sistem informasi dan cyber security'
    },
    {
      'nama': 'Human-Computer Interaction',
      'deskripsi': 'Interaksi manusia dan komputer untuk UX/UI'
    },
    {
      'nama': 'Information Management and Analytics',
      'deskripsi': 'Manajemen informasi dan analisis data'
    },
    {
      'nama': 'Game Development',
      'deskripsi': 'Pengembangan game dan aplikasi interaktif'
    },
  ];
  
  // Metode Pembelajaran
  static const List<String> metodePembelajaran = [
    'Problem-Based Learning (PBL)',
    'Project-Based Learning',
    'Praktek Laboratorium',
    'Studi Kasus Industri',
    'Kerja Praktek dan Magang',
  ];
  
  // Fasilitas
  static const List<Map<String, String>> fasilitas = [
    {
      'nama': 'Lab Pemograman',
      'deskripsi': 'Laboratorium pemrograman dilengkapi dengan komputer spesifikasi tinggi, software development tools terkini, dan environment untuk praktik coding berbagai bahasa pemrograman'
    },
    {
      'nama': 'Lab Jaringan',
      'deskripsi': 'Laboratorium jaringan komputer dengan peralatan networking profesional, router, switch, server, dan tools untuk praktik konfigurasi dan troubleshooting infrastruktur jaringan'
    },
    {
      'nama': 'Lab Mobile',
      'deskripsi': 'Laboratorium pengembangan aplikasi mobile dengan perangkat Android dan iOS, testing devices, dan tools untuk praktik pengembangan aplikasi mobile native dan cross-platform'
    },
  ];
  
  // Organisasi Mahasiswa
  static const List<Map<String, String>> organisasi = [
    {
      'nama': 'HMTI (Himpunan Mahasiswa Teknik Informatika)',
      'deskripsi': 'Organisasi kemahasiswaan program studi'
    },
    {
      'nama': 'Robotics Club',
      'deskripsi': 'Komunitas pengembangan robotika dan IoT'
    },
    {
      'nama': 'Coding Community',
      'deskripsi': 'Wadah belajar programming bersama'
    },
    {
      'nama': 'Game Developer Community',
      'deskripsi': 'Komunitas pengembang game'
    },
  ];
  
  // Prestasi
  static const List<Map<String, String>> prestasi = [
    {
      'nama': 'Juara 1 Hackathon Nasional 2024',
      'deskripsi': 'Kompetisi pengembangan aplikasi tingkat nasional'
    },
    {
      'nama': 'Best Paper Award ICAICST 2024',
      'deskripsi': 'Konferensi internasional AI dan Computer Science'
    },
    {
      'nama': 'Finalis Gemastik 2024',
      'deskripsi': 'Pekan Ilmiah Mahasiswa Nasional bidang ICT'
    },
    {
      'nama': 'Juara 2 Competitive Programming',
      'deskripsi': 'Kompetisi pemrograman tingkat regional'
    },
  ];
  
  // Prospek Lulusan / Peluang Karir
  static const List<Map<String, String>> prospekLulusan = [
    {
      'bidang': 'Front End Developer (UI/UX)',
      'deskripsi': 'Pengembang tampilan antarmuka website dan aplikasi'
    },
    {
      'bidang': 'Back End Developer',
      'deskripsi': 'Pengembang sistem server dan database'
    },
    {
      'bidang': 'Full Stack Developer',
      'deskripsi': 'Pengembang front end dan back end secara menyeluruh'
    },
    {
      'bidang': 'Software Engineer',
      'deskripsi': 'Rekayasa dan pengembangan perangkat lunak'
    },
    {
      'bidang': 'Technology Support',
      'deskripsi': 'Dukungan teknis dan maintenance sistem IT'
    },
    {
      'bidang': 'System Analyst',
      'deskripsi': 'Analisis dan perancangan sistem informasi'
    },
    {
      'bidang': 'Network Engineer',
      'deskripsi': 'Perancang dan pengelola infrastruktur jaringan'
    },
    {
      'bidang': 'Data Scientist',
      'deskripsi': 'Analisis data dan pengembangan model AI/ML'
    },
    {
      'bidang': 'Artificial Intelligence Specialist',
      'deskripsi': 'Spesialis pengembangan solusi kecerdasan buatan'
    },
    {
      'bidang': 'Mobile Apps Developer',
      'deskripsi': 'Pengembang aplikasi Android dan iOS'
    },
    {
      'bidang': 'Game Developer',
      'deskripsi': 'Pengembang game dan aplikasi interaktif'
    },
  ];
  
  // Kontak
  static const String alamat = 
      'Gedung Fakultas Teknik Lt. 3\n'
      'Jl. Pendidikan No. 123\n'
      'Kota Contoh, Indonesia 12345';
  
  static const String email = 'informatika@universitascontoh.ac.id';
  static const String website = 'https://if.universitascontoh.ac.id';
  static const String instagram = '@if_universitascontoh';
  static const String phone = '+62 21 1234 5678';
}
