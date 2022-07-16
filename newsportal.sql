-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 05:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_07_13_110304_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `category`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Nam neque voluptatibus et sunt qui occaecati facilis.', 'Vero aliquid quibusdam quam. Quibusdam itaque aspernatur eos dolor ullam deserunt quisquam.', 'Nam excepturi.', 'angelo77@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(2, 'Ipsam sed mollitia nulla labore voluptatem tempora voluptatibus quo.', 'Quibusdam est enim eaque quo molestias et consequatur. Incidunt doloribus itaque dolorem sint asperiores odit enim. Beatae aut nam enim expedita laudantium facilis.', 'Et et eos.', 'lazaro.cremin@predovic.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(3, 'Repudiandae aliquid sit ea officia.', 'Repudiandae et est aperiam ut exercitationem qui sit recusandae. Autem sit sit accusantium dolorem ad. In pariatur porro sapiente sed.', 'Facere ea eveniet.', 'mratke@auer.net', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(4, 'Error commodi aliquam necessitatibus numquam fuga deserunt maxime asperiores.', 'Pariatur non dolores perspiciatis minima odit. Voluptatem voluptates harum perspiciatis autem porro laboriosam sunt est.', 'Exercitationem.', 'ejacobi@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(5, 'Molestiae ipsum officiis facere veniam sunt.', 'Dolorem reiciendis quos reiciendis expedita. Aut eos corporis et enim quis. Fugit ea quos ducimus qui non veniam temporibus sit.', 'Nulla quia ab.', 'stark.penelope@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(6, 'Nihil eos consequatur nesciunt incidunt ea a.', 'Temporibus iusto eaque magnam. Dolorem veritatis ea voluptatem.', 'Animi deleniti.', 'wilhelm.quigley@simonis.org', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(7, 'Et laudantium aperiam error.', 'Ad omnis enim quae molestiae corporis. Voluptas modi odit suscipit voluptas nam.', 'Aut debitis soluta.', 'jermey.casper@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(8, 'Et eos nesciunt voluptatem nihil nemo.', 'Facere similique aut aperiam blanditiis doloremque. Quam optio nemo placeat harum unde.', 'Fugit dolores.', 'qschultz@breitenberg.info', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(9, 'Consequatur dignissimos aperiam qui.', 'Rerum consequatur quaerat incidunt alias et omnis est et. Quia corporis quam non minus tempora molestias veniam.', 'Aut id adipisci.', 'fwhite@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(10, 'Modi illum quas sunt cupiditate voluptas.', 'Eveniet ipsam aut non molestiae quaerat in minus. Voluptas aut sit expedita delectus eveniet provident. Et eum deserunt sint qui.', 'Sed a est ut aut.', 'cummerata.isai@carter.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(11, 'Voluptatibus voluptatum et sapiente nobis non.', 'Autem et vitae officia consequatur. Vel et culpa tenetur nostrum eum alias vitae.', 'Tempore eius animi.', 'turcotte.jasmin@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(12, 'Et dolor omnis doloremque aut.', 'Est molestiae qui labore tempore autem saepe. Tenetur velit quibusdam dolor praesentium officia nam architecto dolorem.', 'Vel voluptatem.', 'carey.halvorson@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(13, 'Sit nisi aut eveniet architecto sit illo recusandae.', 'Ut nisi animi accusantium deserunt. Sit itaque totam est vitae architecto. Non deleniti placeat vero ratione qui.', 'Odio velit dolorem.', 'hector43@crooks.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(14, 'Voluptatum aspernatur nisi ut dolores quasi rerum.', 'Perspiciatis ipsum expedita consequuntur aut tenetur veniam et. Rerum ipsam sunt laboriosam quod ut quos. Deleniti consequatur iste adipisci consectetur.', 'Reprehenderit sed.', 'emmerich.lorena@boyer.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(15, 'Eos est eum nostrum ipsum nulla.', 'Qui minus qui aspernatur est sequi. Odit saepe quidem hic eos.', 'Quo eum nisi ipsum.', 'kathlyn93@kreiger.info', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(16, 'Eveniet consectetur odio eos quaerat atque distinctio.', 'Repellendus cupiditate consequatur atque. Asperiores voluptatem placeat iste dolorem ullam iure.', 'Aut soluta magni.', 'king.dayne@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(17, 'Sit fuga quia accusantium libero est eos repudiandae.', 'Totam pariatur voluptas aperiam quis nesciunt. Quia repellat autem et ex aut sunt officia delectus. Voluptate veritatis in ea autem.', 'Numquam velit ut in.', 'amya.prohaska@zboncak.biz', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(18, 'Sint ut non et consequatur.', 'Provident quaerat necessitatibus distinctio omnis. Rem mollitia consectetur et repellendus. Facere aut sed quis possimus facere blanditiis praesentium non.', 'Inventore aut harum.', 'allen56@baumbach.net', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(19, 'Adipisci porro doloribus cumque maxime unde.', 'Quas aliquid quia pariatur repellendus. A aperiam aut odio voluptas vero.', 'Saepe ut ea nam.', 'eva.swift@gaylord.org', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(20, 'Dolorem aliquam et sit iste est.', 'Molestias accusantium ut accusantium perspiciatis et. Optio sapiente in velit quod consequatur quae.', 'Et alias iste ut.', 'vrussel@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(21, 'Aliquam id voluptatem quibusdam voluptatem ut non omnis.', 'Sed ut aut totam qui alias ut voluptate earum. Qui explicabo quia velit ab numquam vitae. Quia et placeat qui ab ut.', 'Distinctio quia aut.', 'xkling@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(22, 'Non ducimus atque qui sunt aut.', 'Quos vel eius enim consectetur voluptatem quibusdam dolor officia. Dolorum et dolor amet.', 'Enim quo magni.', 'abrown@goyette.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(23, 'Et minus eveniet ipsa iure dignissimos omnis.', 'Necessitatibus blanditiis ut labore fugiat ipsum. Dolorem repellat tempore repudiandae ut debitis distinctio minus. Neque iure enim qui delectus eaque aliquid deleniti.', 'At veritatis quas.', 'maggio.elenor@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(24, 'Dolore enim laudantium occaecati corrupti necessitatibus.', 'Enim voluptate in vero voluptatum. Nemo pariatur provident magni nesciunt enim ratione at.', 'Autem sapiente.', 'jhudson@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(25, 'Sunt ullam doloremque enim cumque laborum quisquam quod.', 'Repellat omnis numquam quia iure est. Amet ut rerum qui architecto cupiditate. Est non neque pariatur aut ducimus adipisci est.', 'Eum odio dicta.', 'satterfield.vincenzo@jones.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(26, 'Praesentium repudiandae rerum tempora iste.', 'Beatae aut et deserunt totam recusandae sequi totam. Repellendus impedit itaque molestias qui assumenda accusantium nobis.', 'Qui harum fugit.', 'mcollins@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(27, 'Vero voluptatum est fuga nulla.', 'Atque voluptate ut exercitationem vero. Labore facere voluptatem sed. Ab animi eveniet deleniti est et illum.', 'Molestiae ea quis.', 'carmella23@prohaska.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(28, 'Odio et quod sit quos.', 'Laudantium et qui dolor inventore quia dolorem architecto deleniti. Commodi quis ea tempore veniam magnam.', 'Quia nulla ut.', 'gwillms@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(29, 'Voluptatibus et et quia eius qui maiores sit non.', 'Vero reprehenderit et minus. Sint nulla voluptatum dolor qui totam officiis unde et.', 'Ipsum saepe minus.', 'wade99@barton.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(30, 'Aut ratione vitae eius.', 'Esse nam aut sint at voluptatibus. Et aut eos consectetur saepe.', 'Quaerat dolorem qui.', 'rfeil@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(31, 'Eum qui ipsa dignissimos qui molestiae eos.', 'Distinctio sapiente iure dolorem quo dolore doloribus quia. Doloremque corporis iste voluptatem magni.', 'At pariatur dolores.', 'qgulgowski@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(32, 'Nostrum blanditiis quidem aliquam enim.', 'Excepturi sequi illum veniam vel laborum quidem. Tenetur ut quia nihil at quam quia.', 'Qui sed incidunt.', 'bpurdy@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(33, 'Quis a id laborum officia odio.', 'Iusto ut est nisi pariatur odit enim reprehenderit et. Facere quae temporibus tenetur eaque esse quos quos.', 'Quam doloribus.', 'hettinger.andy@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(34, 'Quam debitis maiores maiores in adipisci accusantium voluptas.', 'Quod exercitationem est nam beatae tempora. Iste nulla eveniet ut placeat. Est quasi aperiam dicta natus at magnam nam.', 'Occaecati aut rerum.', 'sonia.mann@walsh.org', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(35, 'Ea ratione porro molestiae ea aperiam soluta harum.', 'Quos quo harum distinctio eligendi. Ratione sed enim quia.', 'Ipsam quos quia.', 'qstracke@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(36, 'Magnam odit voluptates qui aut.', 'Voluptas totam et reprehenderit odit quia. Vel sint et laboriosam unde neque. Et unde id quos.', 'Dignissimos et vel.', 'tony83@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(37, 'Blanditiis sequi velit rerum natus rem in et ipsum.', 'Deleniti rem repudiandae dicta totam at voluptas recusandae voluptas. Hic ex inventore odio rerum incidunt aut. Nihil atque dolor ratione.', 'Modi ex illum.', 'hboehm@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(38, 'A qui voluptatem ut.', 'Velit sint rerum eum optio earum et sed. Aut vel facilis tempora eum.', 'Quod nostrum quas.', 'wehner.karen@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(39, 'Eveniet quibusdam in dicta voluptas.', 'Consectetur et consectetur incidunt et recusandae. Consequatur aut quos omnis consequatur.', 'Tempora dolor.', 'gerhard38@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(40, 'Tenetur id omnis et ut totam.', 'Ad cupiditate adipisci voluptatem rerum alias quas. Asperiores labore consectetur et vel cupiditate ut. Quod tempore a officia voluptatum soluta.', 'Tempore minima.', 'hintz.colten@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(41, 'Non quis est expedita ut id nam dicta.', 'Cumque laudantium sunt est eaque animi iste. Culpa est sequi porro nemo.', 'Illo et pariatur.', 'gerson.raynor@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(42, 'Totam est excepturi vel modi vero pariatur animi accusamus.', 'Tempora molestiae id nemo ipsa veritatis. Quas et ratione modi quis architecto aspernatur ad.', 'Repellat similique.', 'crooks.candelario@kerluke.info', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(43, 'Maiores eaque placeat consequatur necessitatibus maxime.', 'Qui vero ut qui officia error temporibus. Consequatur dicta officia a qui.', 'Alias rerum quae.', 'pablo.runolfsdottir@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(44, 'Sequi dolores voluptas officiis fugiat voluptas.', 'Officiis pariatur consequatur cum quod porro. Voluptas magnam velit illum odio quis suscipit. Et molestiae est aut nisi quia.', 'Enim deserunt.', 'ebony.mraz@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(45, 'Earum voluptatum sit dolor odio quae non doloribus fugit.', 'Nam et nam commodi corporis. Qui fuga saepe sit officia doloribus qui.', 'Deserunt dolores.', 'buckridge.jazlyn@hotmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(46, 'Ut id vero est sunt deserunt aut.', 'Omnis ex atque aut natus quae voluptas est. Facere autem sed vel voluptas voluptate magnam iure incidunt.', 'Eum eveniet animi.', 'luettgen.blaise@welch.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(47, 'Quia adipisci enim qui ab consequatur occaecati est.', 'Quo veniam et id placeat. Voluptas debitis dolorem aspernatur omnis quis nulla eum.', 'Nihil eos ut.', 'wilber97@gmail.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(48, 'Iure aut labore quasi quas facilis.', 'In cum aliquid aperiam officia autem. Qui natus et itaque et. Quas rerum perferendis deserunt dignissimos.', 'Alias officia quia.', 'ngottlieb@muller.net', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(49, 'Dignissimos doloribus excepturi blanditiis tempore.', 'Quas deleniti asperiores est deleniti. Dignissimos aut explicabo vero vel. Vitae odio iste rem minima et.', 'Aut et illo beatae.', 'joana.schmitt@huel.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(50, 'Ad nemo possimus quaerat fugit.', 'Harum molestiae aliquam unde consequatur voluptas architecto incidunt. Commodi porro reiciendis placeat ipsum. Ipsum qui ut quis tempora.', 'Quia reprehenderit.', 'noble46@yahoo.com', '2022-07-13 05:57:10', '2022-07-13 05:57:10'),
(56, 'xcbvsbfafdw', 'sgdfafw', 'xbdnafws', 'aldijaya280902@gmail.com', '2022-07-15 02:13:57', '2022-07-15 02:18:39'),
(57, 'afssafa', 'asfad', 'asfdafa', 'aldijaya280902@gmail.com', '2022-07-15 02:18:32', '2022-07-15 02:18:32');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'aldi', 'aldijaya280902@gmail.com', NULL, '$2y$10$4kDsSmCgDAHM0Ol1KeigxeufrBgdUkMoYGVn9/aFafrXSwTxgIdsO', 'WZMcELEZ0dZkWlPt4cluTpgSrdlKwsXl4FIYHxVY0plPV6aCTq3q1YQH8Fed', '2022-07-14 07:05:26', '2022-07-14 07:05:26');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
