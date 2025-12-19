import 'package:get/get.dart';

// Data Models
class Lecturer {
  final String name;
  final String title;
  final String expertise;
  final String education;
  final String photo;

  Lecturer({
    required this.name,
    required this.title,
    required this.expertise,
    required this.education,
    required this.photo,
  });
}

class Achievement {
  final String title;
  final String description;
  final String year;
  final String icon;

  Achievement({
    required this.title,
    required this.description,
    required this.year,
    required this.icon,
  });
}

class Facility {
  final String name;
  final String description;
  final String icon;

  Facility({
    required this.name,
    required this.description,
    required this.icon,
  });
}

class Study_caseController extends GetxController {
  // Reactive state for tab navigation
  var currentTabIndex = 0.obs;

  // University Information
  final String universityName = 'Matana University';
  final String programName = 'Program Studi Informatika';
  final String facultyName = 'Fakultas Sains, Komputer, dan Matematika';
  final String accreditation = 'Baik Sekali';
  final String studyDuration = '4 Tahun';
  
  final String aboutDescription = '''
Program Studi Informatika Matana University berfokus untuk menghasilkan lulusan yang mampu mengimplementasikan algoritma pada aplikasi yang dirancangbangun baik berbasis web maupun mobile.

Bergabunglah dengan Program Studi S1 Informatika di Matana University. Wujudkan impian Anda dan raih masa depan yang cemerlang dengan pendidikan berkualitas yang berfokus pada komputer sains untuk sektor kesehatan yang berwawasan nasional dan internasional.
''';

  final String vision = '''
Menjadi program studi yang terpercaya dan terkemuka dalam bidang komputer sains untuk sektor kesehatan yang berwawasan nasional dan internasional serta berperan dalam peningkatan kualitas iman kepercayaan, ilmu pengetahuan dan teknologi, yang merupakan karunia Tuhan, untuk kecerdasan dan kesejahteraan umat manusia serta kehidupan yang lebih baik dan berkelanjutan.
''';

  final String mission = '''
1. Menyelenggarakan pendidikan tinggi berkualitas di bidang informatika dengan fokus pada komputer sains untuk sektor kesehatan

2. Mengembangkan penelitian dan inovasi teknologi yang bermanfaat bagi masyarakat

3. Membangun kerjasama dengan industri kesehatan dan teknologi untuk meningkatkan kualitas pembelajaran

4. Menciptakan lulusan yang kompeten dalam mengimplementasikan algoritma pada aplikasi berbasis web dan mobile

5. Menghasilkan lulusan yang beretika, profesional, dan mampu bersaing di tingkat nasional dan internasional
''';

  final List<String> values = [
    'Integritas',
    'Inovasi',
    'Excellence',
    'Kepercayaan',
    'Profesionalisme',
  ];

  // Curriculum & Competencies
  final List<String> coreCompetencies = [
    'Algoritma & Pemrograman',
    'Aplikasi Web Development',
    'Mobile Application Development',
    'Komputer Sains untuk Kesehatan',
    'Database & Sistem Informasi',
    'Software Engineering',
    'Artificial Intelligence',
    'Data Analytics',
  ];

  final List<String> courses = [
    'Algoritma & Struktur Data',
    'Pemrograman Web',
    'Pemrograman Mobile',
    'Basis Data',
    'Rekayasa Perangkat Lunak',
    'Kecerdasan Buatan',
    'Data Science',
    'Informatika Kesehatan',
    'Sistem Informasi',
    'Keamanan Siber',
    'Cloud Computing',
    'Internet of Things',
  ];

  // Facilities
  final facilities = <Facility>[
    Facility(
      name: 'Laboratorium Komputer',
      description: 'Lab dengan komputer spesifikasi tinggi untuk praktikum pemrograman',
      icon: '💻',
    ),
    Facility(
      name: 'Lab Kesehatan Digital',
      description: 'Fasilitas untuk pembelajaran informatika kesehatan',
      icon: '🏥',
    ),
    Facility(
      name: 'Innovation Hub',
      description: 'Ruang kolaborasi untuk project-based learning',
      icon: '💡',
    ),
    Facility(
      name: 'Perpustakaan Digital',
      description: 'Akses ke jurnal internasional dan e-resources',
      icon: '📚',
    ),
  ].obs;

  // Lecturers Data (Sample - since not provided on website)
  final lecturers = <Lecturer>[
    Lecturer(
      name: 'Dr. Ir. John Doe, M.Kom.',
      title: 'Ketua Program Studi',
      expertise: 'Artificial Intelligence, Health Informatics',
      education: 'S3 Computer Science',
      photo: '👨‍🏫',
    ),
    Lecturer(
      name: 'Dr. Jane Smith, S.Kom., M.T.',
      title: 'Dosen Tetap',
      expertise: 'Software Engineering, Web Development',
      education: 'S3 Informatics Engineering',
      photo: '👩‍🏫',
    ),
    Lecturer(
      name: 'Prof. Ahmad Rahman, M.Sc.',
      title: 'Profesor',
      expertise: 'Data Science, Machine Learning',
      education: 'S3 Data Science',
      photo: '👨‍💼',
    ),
    Lecturer(
      name: 'Siti Nurhaliza, S.Kom., M.Kom.',
      title: 'Dosen Tetap',
      expertise: 'Mobile Development, UI/UX',
      education: 'S2 Computer Science',
      photo: '👩‍💻',
    ),
    Lecturer(
      name: 'Budi Santoso, S.T., M.T.',
      title: 'Dosen Tetap',
      expertise: 'Database Systems, Cloud Computing',
      education: 'S2 Information Technology',
      photo: '👨‍🔬',
    ),
    Lecturer(
      name: 'Lisa Wijaya, S.Kom., M.Kom.',
      title: 'Dosen Tetap',
      expertise: 'Health Informatics, Information Systems',
      education: 'S2 Health Informatics',
      photo: '👩‍🎓',
    ),
  ].obs;

  // Achievements
  final achievements = <Achievement>[
    Achievement(
      title: 'Akreditasi Baik Sekali',
      description: 'Program Studi Informatika terakreditasi Baik Sekali',
      year: '2024',
      icon: '🏆',
    ),
    Achievement(
      title: 'Fokus Kesehatan Digital',
      description: 'Program studi terkemuka dalam komputer sains untuk sektor kesehatan',
      year: '2024',
      icon: '🏥',
    ),
    Achievement(
      title: 'Kerjasama Industri',
      description: 'Kemitraan dengan industri teknologi dan kesehatan',
      year: '2024',
      icon: '🤝',
    ),
    Achievement(
      title: 'Kurikulum Modern',
      description: 'Fokus pada Web & Mobile Development',
      year: '2024',
      icon: '📱',
    ),
    Achievement(
      title: 'Wawasan Global',
      description: 'Pendidikan berwawasan nasional dan internasional',
      year: '2024',
      icon: '🌍',
    ),
    Achievement(
      title: 'Student Exchange',
      description: 'Program pertukaran pelajar internasional',
      year: '2024',
      icon: '✈️',
    ),
  ].obs;

  // Contact Information (Real data from website)
  final String address = 'Matana University Tower, Jl. CBD Barat Kav. 1, Gading Serpong, Tangerang, Banten - 15810';
  final String phone = '(021) 2923-2999';
  final String whatsapp = '0812-8777-5999';
  final String email = 'info@matanauniversity.ac.id';
  final String website = 'matanauniversity.ac.id/informatika';
  
  final Map<String, String> socialMedia = {
    'WhatsApp': '0812-8777-5999',
    'Instagram': '@matanauniversity',
    'YouTube': 'Matana University Official',
    'Website': 'matanauniversity.ac.id',
  };

  // Methods
  void changeTab(int index) {
    currentTabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
