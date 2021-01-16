-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 02:45 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cont` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` smallint(5) UNSIGNED NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cont`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'great one !!!', 1, 1, NULL, NULL),
(2, 'greatttt', 1, 1, '2021-01-16 09:10:39', '2021-01-16 09:10:39'),
(3, 'qweqweqwe', 1, 1, '2021-01-16 09:12:08', '2021-01-16 09:12:08'),
(4, 'wewqeqw', 1, 1, '2021-01-16 09:12:51', '2021-01-16 09:12:51'),
(5, 'qeqwewq', 2, 1, '2021-01-16 09:37:55', '2021-01-16 09:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_16_122246_create_posts_table', 1),
(5, '2021_01_16_122430_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '2020 წლის მნიშვნელობა საქართველოს ფოსტისთვის, როგორც მაღალი სოციალური პასუხისმგებლობის მქონე კომპანიისთვის', '“საქართველოს ფოსტისთვის”, როგორც ეროვნული საფოსტო ოპერატორისთვის, 2020 წელი განსაკუთრებით მნიშვნელოვანი იყო. კორონავირუსის გავრცელების პრევენციის ღონისძიებების ფარგლებში, კომპანია საქმიანობის განსაკუთრებულ რეჟიმზე გადავიდა, რომელიც საფოსტო - საკურიერო მომსახურების გაწევას შეუზღუდავად, მაგრამ ამავე დროს, ჯანდაცვის გაიდლაინების შესაბამისად ითვალისწინებს.    \r\n\r\n                 \r\n\r\nჩვენი მთავარი ამოცანა იყო, მაქსიმალური სიფრთხილით გვეზრუნა ადამიანების ჯანმრთელობაზე, დაგვეცვა სახელმწიფო და ჯანდაცვის ორგანიზაციების მიერ შემუშავებული უსაფრთხოების ზომები და ამავდროულად არ შეგვეწყვიტა სერვისების მიწოდება როგორც ფიზიკური, ასევე იურიდიული პირებისთვის.\r\n\r\n \r\n\r\nჩვენ, როგორც მაღალი სოციალური პასუხისმგებლობის მქონე კომპანიამ, COVID-19 ვირუსის გავრცელების პრევენციის მიზნით, უზრუნველვყავით მთელი საქართველოს მასშტაბით სერვისცენტრებში, საფოსტო გაცვლის და დახარისხების ცენტრებში სადეზინფექციო სამუშაოების ჩატარება, თანამშრომლები აღიჭურვნენ დამცავი საშუალებებით. „საქართველოს ფოსტის“ თითოეული თანამშრომელი წლის განმავლობაში გაორმაგებული დატვირთვით აგრძელებდა მუშაობას იმისათვის, რომ უწყვეტ რეჟიმში მიგვეწოდებინა სერვისები ქვეყნის მასშტაბით. აღსანიშნავია, რომ თანამშრომელთა დიდ ნაწილს საველე სამუშაოს შესრულება უწევდა, რაც მათი საქმიანობის ფორმატიდან გამომდინარე აუცილებლობას წარმოადგენს და დისტანციურად ვერ განხორციელდება. ჩვენ შევძელით საკადრო პოლიტიკის ისე წარმართვა, რომ მიუხედავად რიგი დაბრკოლებებისა, არცერთ თანამშრომელთან არ შეწყვეტილა შრომითი ურთიერთობა.', 1, '2021-01-16 09:38:30', '2021-01-16 09:38:30'),
(4, 'აღსანიშნავია, რომ „საქართველოს ფოსტამ“ საგანგებო მდგომარეობის პერიოდში დახმარება გაუწია გაეროს საქართველოს', 'ქვეყანაში შექმნილი ვითარებიდან გამომდინარე, უმოკლეს ვადაში შევქმენით ახალი მომსახურება „სახლიდან სახლში“, რომელიც ჩვენს მომხმარებლებს საშუალებას მისცემდა სახლიდან გაუსვლელად მიეღოთ საფოსტო მომსახურება ქვეყნის შიდა გზავნილებზე და ამავდროულად დაეცვათ რეკომენდაცია „დარჩით სახლში“, რათა ხელი შეგვეწყო ვირუსის გავრცელების პრევენციისთვის.\r\n\r\n \r\n\r\nასევე, საქართველოში საკმაოდ გაიზარდა მოთხოვნა ონლაინ ვაჭრობაზე, რაც ქვეყანაში შექმნილი ვითარებით იყო განპირობებული. მოვახდინეთ სერვისების სრული ადაპტაცია ელექტრონული კომერციის ბიზნესის მოთხოვნებზე და ქვეყნის შიგნით ელექტრონული კომერციის ხელშეწყობის მიზნით შევქმენით კიდევ ერთი სრულიად ახალი პროდუქტი „კორპორატიული საკურიერო მომსახურება“, რომელიც მოიცავს ელექტრონული გზით შეძენილი პროდუქციის მიწოდების სრულ სერვისს ქვეყნის მასშტაბით. აღსანიშნავია, რომ „კორპორატიული საკურიერო მომსახურება“ გულისხმობს „სახლიდან სახლში“ („Door to door delivery“) სერვისს. ასევე, შეძენილი ნივთის ღირებულების გადახდას ადგილზე („Cash On Delivery“), როგორც ნაღდი, ასევე უნაღდო ანგარიშსწორების გზით.  \r\n\r\n \r\n\r\nასევე, დავიწყეთ სოციალური პროექტები კორონავირუსის გავრცელების პრევენციის ღონისძიებების ფარგლებში, საქართველოს მთავრობის საკოორდინაციო საბჭოს დავალებითა და ეკონომიკისა და მდგრადი განვითარების სამინისტროს ორგანიზებით, ჯანდაცვის სამინისტროსთან კოორდინაციით\r\n\r\n \r\n\r\n„საქართველოს ფოსტამ“ უზრუნველყო 70 წელს გადაცილებული საქართველოს მოქალაქეებისთვის, რომლებიც ყველაზე მაღალ რისკ-ჯგუფს განეკუთვნებიან, სამედიცინო დანიშნულების საგნებისა და მედიკამენტების, აგრეთვე სხვა ნებისმიერი შიგთავსის მქონე საფოსტო გზავნილის საცხოვრებელ მისამართებზე უსასყიდლოდ მიწოდება. „საქართველოს ფოსტამ“ ასევე უზრუნველყო საქართველოში წარმოებული პირბადეების ბინაზე მიწოდება 70 წელს გადაცილებული მარტო მცხოვრები პენსიონერებისთვის და გლუკომეტრის ტესტ-ჩხირების და პირბადეების მიწოდება შაქრიანი დიაბეტის მქონე 18 წლამდე ასაკის ბავშვებისა და მოზარდებისთვის.', 1, '2021-01-16 09:38:44', '2021-01-16 09:38:44'),
(5, 'ასევე, დავიწყეთ სოციალური პროექტები კორონავირუსის გავრცელების პრევენციის ღონისძიებების ფარგლებში, საქართველოს მთავრობის საკოორდინაციო საბჭოს', 'ასევე, დავიწყეთ სოციალური პროექტები კორონავირუსის გავრცელების პრევენციის ღონისძიებების ფარგლებში, საქართველოს მთავრობის საკოორდინაციო საბჭოს დავალებითა და ეკონომიკისა და მდგრადი განვითარების სამინისტროს ორგანიზებით, ჯანდაცვის სამინისტროსთან კოორდინაციით\r\n\r\n \r\n\r\n„საქართველოს ფოსტამ“ უზრუნველყო 70 წელს გადაცილებული საქართველოს მოქალაქეებისთვის, რომლებიც ყველაზე მაღალ რისკ-ჯგუფს განეკუთვნებიან, სამედიცინო დანიშნულების საგნებისა და მედიკამენტების, აგრეთვე სხვა ნებისმიერი შიგთავსის მქონე საფოსტო გზავნილის საცხოვრებელ მისამართებზე უსასყიდლოდ მიწოდება. „საქართველოს ფოსტამ“ ასევე უზრუნველყო საქართველოში წარმოებული პირბადეების ბინაზე მიწოდება 70 წელს გადაცილებული მარტო მცხოვრები პენსიონერებისთვის და გლუკომეტრის ტესტ-ჩხირების და პირბადეების მიწოდება შაქრიანი დიაბეტის მქონე 18 წლამდე ასაკის ბავშვებისა და მოზარდებისთვის.\r\n\r\n \r\n\r\nაღსანიშნავია, რომ „საქართველოს ფოსტამ“ საგანგებო მდგომარეობის პერიოდში დახმარება გაუწია გაეროს საქართველოს წარმომადგენლობას და საქართველოს წითელი ჯვრის წარმომადგენლობას, საქართველოს მოქალაქეებისათვის სხვადასხვა საკვების, პირველადი მოხმარების და სამედიცინო დანიშნულების საგნების ბინაზე მიწოდებაში.\r\n\r\n \r\n\r\nმიუხედავად შექმნილი ვითარებისა, ვმუშაობთ როგორც არსებული სერვისების განვითარების მიმართულებით, ასევე ახლის დასანერგად. მიმდინარე ეტაპზე ორიენტირებული ვართ ციფრული სერვისების განვითარებაზე. დაგეგმილი გვაქვს მრავალი მნიშვნელოვანი პროექტის განხორციელება, როგორც ადგილობრივი, ასევე საერთაშორისო მიმართულებით.\r\n\r\n \r\n\r\nდღეს „საქართველოს ფოსტა“ 81 სერვის ცენტრით არის წარმოდგენილი მთელი ქვეყნის მასშტაბით, რაც კომპანიას საშუალებას აძლევს საქართველოს ნებისმიერ წერტილში მოახდინოს გზავნილის სწრაფი მიწოდება.', 1, '2021-01-16 09:38:59', '2021-01-16 09:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nika', 'nikashubitidze0@gmail.com', NULL, '$2y$10$WoOBx297sWvvkBjFG2NF3eqPiSfzM2EtdbZKNIDuqyCBnjjSG4Dsq', NULL, '2021-01-16 08:42:16', '2021-01-16 08:42:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
