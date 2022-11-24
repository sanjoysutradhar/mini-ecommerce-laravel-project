-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 02:43 AM
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
-- Database: `laravel_ecommerce_batch_13`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'commodi', 'Et aliquid est quod vero.', 'https://via.placeholder.com/250x250.png/0066cc?text=quis', 1, '2022-11-23 06:17:54', '2022-11-23 06:17:54'),
(2, 'ea', 'Ex voluptates dolorem reiciendis eligendi tenetur.', 'https://via.placeholder.com/250x250.png/0022ee?text=vel', 0, '2022-11-23 06:17:54', '2022-11-23 06:17:54'),
(3, 'accusamus', 'Velit beatae vero consequatur officia accusantium alias.', 'https://via.placeholder.com/250x250.png/00bb55?text=expedita', 0, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(4, 'eligendi', 'Mollitia amet voluptatem nesciunt ut.', 'https://via.placeholder.com/250x250.png/00dd00?text=eligendi', 0, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(5, 'perspiciatis', 'Iusto nihil est vitae.', 'https://via.placeholder.com/250x250.png/00ccbb?text=cumque', 0, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(6, 'corporis', 'Molestias beatae veritatis ipsum id eius quisquam.', 'https://via.placeholder.com/250x250.png/0022cc?text=nihil', 1, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(7, 'doloribus', 'Omnis voluptatibus commodi nobis.', 'https://via.placeholder.com/250x250.png/007766?text=suscipit', 1, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(8, 'assumenda', 'Corporis dolorem harum ad dolorem dolorem quaerat.', 'https://via.placeholder.com/250x250.png/00ffaa?text=et', 0, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(9, 'qui', 'Facilis sit est aperiam.', 'https://via.placeholder.com/250x250.png/00aa77?text=qui', 1, '2022-11-23 06:17:55', '2022-11-23 06:17:55'),
(10, 'magni', 'Sint odio repellat enim nihil.', 'https://via.placeholder.com/250x250.png/00ee99?text=minus', 1, '2022-11-23 06:17:55', '2022-11-23 06:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'voluptatem', 'Excepturi tenetur at laudantium earum.', 'img/category-images/1669225059.jpg', 1, '2022-11-23 06:15:35', '2022-11-23 11:37:39'),
(2, 'nobis', 'Veritatis ipsam perferendis harum quis.', 'https://via.placeholder.com/250x250.png/005566?text=et', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(3, 'sunt', 'Numquam sit veritatis voluptatem et.', 'https://via.placeholder.com/250x250.png/00ff99?text=magni', 0, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(4, 'et', 'Ea quis consequuntur voluptatum et.', 'https://via.placeholder.com/250x250.png/00ee66?text=in', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(5, 'eum', 'Molestias sunt debitis aut possimus laboriosam.', 'https://via.placeholder.com/250x250.png/002299?text=et', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(6, 'nulla', 'Minus sint dolorem non voluptatem cupiditate facilis.', 'https://via.placeholder.com/250x250.png/004411?text=ipsa', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(7, 'sequi', 'Voluptatem quo et voluptatibus quibusdam eum et.', 'https://via.placeholder.com/250x250.png/008899?text=facilis', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(8, 'sapiente', 'Ullam minus minima dignissimos officiis nulla architecto.', 'https://via.placeholder.com/250x250.png/00bb33?text=ut', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(9, 'blanditiis', 'Eaque voluptate ex sequi sint nostrum.', 'https://via.placeholder.com/250x250.png/000044?text=repudiandae', 0, '2022-11-23 06:15:35', '2022-11-23 06:15:35'),
(10, 'quam', 'Ab velit aut quo praesentium.', 'https://via.placeholder.com/250x250.png/005511?text=amet', 1, '2022-11-23 06:15:35', '2022-11-23 06:15:35');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_034941_create_categories_table', 1),
(6, '2022_11_23_035027_create_brands_table', 1),
(7, '2022_11_23_035047_create_products_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `image`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 10, 'Rerum cupiditate quo eos accusamus.', 'Autem sed adipisci quidem. Quidem ea omnis et eligendi sint optio commodi non. Ea dicta dignissimos tempore atque id blanditiis. Impedit libero aut vitae sed.\n\nVelit unde eius sit. Beatae fugiat at qui porro. Sapiente nisi soluta non rem.\n\nSit nemo enim adipisci aut est sint. Nihil eos voluptate dolores aut illum. Aliquid itaque voluptates omnis vel.', 'https://via.placeholder.com/250x250.png/003311?text=ullam', 'officia', 0, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(2, 10, 5, 'Repudiandae maiores odio magnam eum.', 'Explicabo atque consequuntur est ipsa vitae. Voluptatibus ipsum earum temporibus qui atque. Cumque enim error magni similique non dolorem reprehenderit.\n\nDebitis ex magnam aperiam voluptas odio sequi. Accusantium omnis ut provident libero doloremque ea aperiam. Voluptatibus dolores omnis quae et repellendus. Qui est aut porro qui. Quos quia adipisci exercitationem omnis iste et nihil inventore.\n\nConsequuntur beatae ut harum quo. Id expedita quod quod qui quisquam aperiam. Nihil architecto quis quam perspiciatis pariatur fuga cumque.', 'https://via.placeholder.com/250x250.png/00eecc?text=nemo', 'assumenda', 0, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(3, 3, 8, 'Ut at sunt consequatur voluptas.', 'Ducimus omnis sed tempore est quas esse et praesentium. Molestiae qui aliquam possimus porro eveniet. Accusamus vitae et esse explicabo sit quaerat eveniet.\n\nQui accusantium modi sed nesciunt sed. Dolorem vitae consequatur molestiae non. Beatae eos aliquid voluptatem esse at. Dignissimos sed autem est ducimus consequatur.\n\nLaborum pariatur quo asperiores cupiditate exercitationem. Eius eius assumenda autem consequatur minima reprehenderit ut. Ad ipsam eaque optio illo dolorum neque temporibus. Cupiditate qui cumque voluptatem officiis ut vel et.', 'https://via.placeholder.com/250x250.png/006622?text=nihil', 'officia', 0, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(4, 4, 1, 'Voluptatem delectus optio alias iusto.', 'Mollitia ab hic natus quod culpa non. Ea ad aut amet. Ducimus dolor ex doloribus recusandae a suscipit. Harum quam dolorum quaerat libero omnis.\n\nOccaecati provident cumque nemo asperiores et. Earum aut saepe nihil. Voluptates optio omnis illum est officia.\n\nRepellendus molestiae molestiae delectus nemo delectus et. Neque totam qui dolores natus asperiores laborum. Est ipsum quam cupiditate ab totam neque quis. Cum necessitatibus est blanditiis nihil fugit molestias rem cupiditate.', 'https://via.placeholder.com/250x250.png/004422?text=accusamus', 'cupiditate', 1, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(5, 6, 2, 'Quos praesentium necessitatibus ex.', 'Itaque dolorem sed id. Iure esse neque sint aut et. Eos eum iure dolores nostrum.\n\nOdio numquam qui odio quam nam eaque. Qui quam rerum architecto laudantium ea dolorem et. Odit voluptas libero hic consequuntur illo.\n\nUnde commodi voluptas libero quibusdam. Enim aperiam officia maxime et sequi quod velit. Eos enim qui ipsam quae. Sed iste corporis doloribus accusamus.', 'https://via.placeholder.com/250x250.png/00eebb?text=sit', 'dolore', 0, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(6, 4, 8, 'Doloremque rem possimus aspernatur.', 'Qui impedit cumque quas placeat. Sint debitis sint eaque sint laudantium. Eveniet sit rem animi officiis dolor. Voluptatibus impedit esse dolorem facilis quod reprehenderit.\n\nDolor molestiae at aut aut. Error iusto est explicabo dolor non fugit. Sed eos maxime voluptatem quis est similique itaque. Excepturi quis porro occaecati vel occaecati sed. Occaecati alias cumque ut perspiciatis fugiat ipsum qui.\n\nDolores tempora dolorem deleniti fugit. Aut ut quis reprehenderit in veniam porro. Quaerat eaque et nemo autem. Sit officiis voluptas hic quis. Optio sint ex corporis illo.', 'https://via.placeholder.com/250x250.png/009944?text=sint', 'nihil', 1, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(7, 2, 2, 'At optio tenetur expedita.', 'Eum et inventore voluptas et. Facilis quidem aliquam quos vero maiores fugiat aperiam. Soluta omnis voluptatem occaecati nesciunt repudiandae.\n\nLaborum ducimus sapiente ipsam laborum minima expedita. Veniam quo illum repellendus aut.\n\nItaque voluptatibus fugit nostrum eligendi sunt odio porro. Consequuntur non eveniet consequatur possimus. Voluptatem temporibus exercitationem asperiores mollitia aliquid.', 'https://via.placeholder.com/250x250.png/008800?text=ipsum', 'repellendus', 0, '2022-11-23 06:18:57', '2022-11-23 06:18:57'),
(8, 1, 1, 'Quia sed natus aliquam quia sit.', 'Consequatur esse cumque autem corrupti repudiandae porro possimus. Autem id porro quibusdam fuga adipisci sunt.\n\nSoluta dicta hic blanditiis veniam eius. Eum et consequatur ad. Dolorem debitis adipisci voluptas sunt aut eaque. Qui architecto dolores consequuntur expedita est ut cumque. Quam sunt nobis doloremque atque iure debitis est.\n\nOmnis sint velit reiciendis vero non quos ab voluptatum. Fuga voluptatem quasi maxime reiciendis delectus aut veritatis. Quia laborum ut dolorem enim ut.', 'https://via.placeholder.com/250x250.png/001133?text=impedit', 'dolores', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(9, 6, 6, 'Et minus recusandae in ipsa ab.', 'Dignissimos quaerat fugiat sed ut aliquam. Eum in similique distinctio animi ipsum vitae. Unde et autem aut illo voluptatem. Reiciendis et aperiam sint animi necessitatibus reiciendis.\n\nAccusamus fuga voluptate provident occaecati. Sit ipsa eum commodi repudiandae quas ducimus rerum. Ut nostrum sed modi quia quis autem sapiente nihil. Quo quam qui aliquam quis. Voluptas quaerat asperiores consequatur veritatis nobis est eum.\n\nIpsa laboriosam eum alias totam. Alias officiis aliquam delectus beatae et omnis. Sapiente ut tenetur doloribus debitis voluptatem possimus ullam aliquid. Eligendi sint repellat placeat quibusdam.', 'https://via.placeholder.com/250x250.png/0077dd?text=vitae', 'nihil', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(10, 4, 6, 'Deleniti ab recusandae quia.', 'Id omnis nihil explicabo similique. Beatae nisi sit cum quis. Aut assumenda corrupti sed qui. In ullam neque ut et totam vero et.\n\nAccusantium dolorem voluptatem ab non suscipit deleniti. Molestiae aut cumque quis accusantium. Repellendus veniam molestias debitis aut maiores. Dolores maxime possimus beatae molestiae distinctio porro. Consectetur omnis reiciendis explicabo.\n\nUllam at officiis ut. Modi velit quam nihil. Sit qui occaecati inventore cupiditate voluptatem officiis dolore occaecati.', 'https://via.placeholder.com/250x250.png/000055?text=quae', 'sint', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(11, 3, 6, 'Dolore aut et incidunt porro vel cupiditate.', 'Vel ea ut magni aperiam exercitationem eum. Non voluptatem esse suscipit at dolores debitis. Quo omnis nulla necessitatibus corrupti recusandae. Qui sunt perspiciatis rerum aut id.\n\nExpedita reiciendis laudantium omnis. Tenetur ut error nostrum vero. Saepe at molestiae velit dolorem sed sequi consequatur. Nihil placeat est reprehenderit quibusdam consequuntur quis inventore.\n\nDeserunt id hic impedit voluptates sunt ea. Dolorum quaerat vero atque non velit. Ut eveniet cum eum. Eum et dolores fugiat laudantium accusantium omnis. Omnis molestiae ut nam quisquam id facere molestiae.', 'https://via.placeholder.com/250x250.png/000022?text=molestiae', 'sint', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(12, 1, 4, 'Voluptatem quos aut pariatur esse voluptatem sed.', 'Et sapiente eligendi qui sed. Praesentium nisi voluptates odit voluptatum magnam aut. Cupiditate dolores velit beatae.\n\nCorrupti adipisci magnam reiciendis. Molestiae et vel rerum sed corrupti. Quidem molestiae recusandae fuga sed ea quam. Nam et occaecati quos sed qui eos voluptatibus.\n\nVel doloremque earum quo consequatur minus iusto totam sapiente. Dolorem sed assumenda veritatis rerum quod consequatur repellendus. Est excepturi corrupti fugit.', 'https://via.placeholder.com/250x250.png/00bbee?text=non', 'et', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(13, 3, 4, 'Et omnis magnam possimus ex.', 'Mollitia aliquid quia earum quia similique dolores. Atque consequatur minima et sed quia et qui. Velit repudiandae eaque dolores magnam sint dolor molestiae. Officiis explicabo voluptatem sit eum omnis qui.\n\nEt aut commodi est doloremque sed. Officiis ab totam odio. Fugiat in ex commodi cum et labore. Odit quisquam sit aperiam labore dolore commodi omnis.\n\nConsequuntur odit rerum odio doloribus voluptatum repellat rerum ducimus. Fugiat quasi dolor totam neque corrupti nihil. Possimus similique quia porro et ipsum aut. Ipsa sint eos tempore blanditiis odit distinctio ut.', 'https://via.placeholder.com/250x250.png/0033bb?text=ad', 'voluptas', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(14, 10, 3, 'Et culpa placeat nihil.', 'Eos autem voluptas blanditiis cumque. Modi itaque quod quaerat sit nihil. Aut id dolores aut laudantium sint.\n\nTemporibus sed ut expedita. Aut accusantium id necessitatibus nisi culpa. Optio odit qui omnis facilis et consequuntur ipsa.\n\nPariatur architecto exercitationem dolore. Voluptatem molestias enim ad repudiandae aspernatur. Non eum quos eaque et nam. Dicta repellat neque modi.', 'https://via.placeholder.com/250x250.png/00dd22?text=a', 'et', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(15, 1, 5, 'Illo cumque dolorem unde occaecati perferendis.', 'Voluptatem repellendus praesentium sapiente quibusdam illo necessitatibus. Maiores voluptas illum quis.\n\nAccusantium et fugiat eveniet consectetur ad necessitatibus et. Quo aut necessitatibus aut quia. Placeat ab ea nihil ipsam voluptatem dolores.\n\nSapiente nobis ut repellendus iste mollitia molestiae iure. Enim qui explicabo incidunt porro. Qui quos et placeat dolorum aliquid.', 'https://via.placeholder.com/250x250.png/002255?text=necessitatibus', 'amet', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(16, 2, 1, 'Soluta qui eos laudantium dolores hic.', 'Nesciunt qui sequi eum et. Porro rerum ut dolor corporis aperiam. Similique sed dolore provident eaque repellat minima omnis voluptatem. Corrupti voluptas ut rerum corporis et aliquam et.\n\nMollitia dolore illo neque sunt voluptate ex. Fugiat dolorum quos consequuntur in laboriosam laudantium natus. Eos est maxime dolorem aliquam quidem officiis.\n\nError ea et porro ea dolores quia. Tempora impedit error dolore est commodi.', 'https://via.placeholder.com/250x250.png/007799?text=voluptas', 'accusantium', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(17, 9, 3, 'Omnis hic distinctio et molestias sed suscipit.', 'Est a ut tempora magnam et numquam totam sequi. Sit nostrum neque est autem officia dignissimos corporis. Ut debitis rem soluta et aut velit.\n\nQui modi optio voluptas velit architecto atque est voluptas. Aperiam earum reiciendis aperiam corporis. Laboriosam velit sint velit enim dicta.\n\nDolores pariatur eum ipsa qui dolore. Consequatur ullam fugiat architecto veniam magnam distinctio cum. Et nulla alias enim quis iure. Sint quis ducimus voluptatibus asperiores.', 'https://via.placeholder.com/250x250.png/003333?text=voluptatibus', 'aut', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(18, 9, 4, 'Nulla voluptas iusto pariatur.', 'Libero alias ab laboriosam non dignissimos sed. Eum dolores omnis ut excepturi autem consequatur. Dicta rem amet autem praesentium quia totam.\n\nNemo voluptas explicabo in aspernatur. Aut ut et molestiae quis facere fugit. Aut tempore voluptatem quisquam. Reiciendis et molestiae qui consequatur assumenda aliquam.\n\nDolores facere maiores eum rerum. Quae tenetur totam enim molestias vel. Eos delectus aliquam doloribus sequi fugiat qui quisquam omnis. Ex et dignissimos animi ea mollitia.', 'https://via.placeholder.com/250x250.png/0033ee?text=quisquam', 'dolore', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(19, 9, 4, 'Autem soluta officia eos.', 'Quo dignissimos consequuntur minus asperiores vel. Fugiat illum corrupti illum vel. Veniam et possimus facilis voluptas exercitationem at minus.\n\nVoluptates corrupti corporis dolor veritatis possimus maiores aut. Qui ab necessitatibus sed omnis rerum. Exercitationem placeat est ad qui at quae non autem.\n\nQui necessitatibus ad unde eligendi voluptatem facilis ut. Qui esse nihil est dolorem. Nihil minus placeat id facilis suscipit quis doloribus.', 'https://via.placeholder.com/250x250.png/0077ee?text=eveniet', 'quis', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(20, 10, 6, 'Quis ut et blanditiis nisi qui.', 'Sint autem pariatur sit aut eos aut. Quae aliquam enim minima quo. Non aperiam vero nihil esse nostrum.\n\nDoloremque et dicta architecto at minus veniam. Et tempore nam dignissimos. Delectus voluptates dolor consequatur aspernatur animi.\n\nEos voluptatum vel deleniti reiciendis. Sequi animi labore ut sequi cum. Ullam sequi rerum soluta facere molestiae omnis ad cumque. Suscipit dolores et explicabo.', 'https://via.placeholder.com/250x250.png/00ffbb?text=libero', 'modi', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(21, 4, 2, 'Facilis et ut dolorum doloremque tempora.', 'Quia et veritatis qui voluptatem voluptatem et. Qui est et minus voluptatum culpa eveniet nesciunt quidem. Ad ducimus iure eum impedit distinctio.\n\nError quasi voluptate sed. Maiores consequuntur ut consequatur. Reiciendis est hic distinctio qui. Molestiae velit odit deleniti voluptatem sint.\n\nNon et ut recusandae sed enim ut. Eveniet voluptatem voluptatibus molestiae ullam accusantium eveniet inventore.', 'https://via.placeholder.com/250x250.png/0099cc?text=architecto', 'asperiores', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(22, 10, 2, 'Qui iure voluptas quod eligendi sit omnis.', 'Eaque quo ut voluptatem libero suscipit. Officia et dolores aliquid aut modi eius. Quia aut pariatur et libero natus enim.\n\nVoluptas aliquam omnis est corporis eos voluptates. Natus beatae aut et eveniet. Omnis dolores eaque possimus molestiae.\n\nProvident voluptate sit enim facere. Magnam sed voluptatum quia nostrum qui repellat enim atque. Incidunt sequi nulla et quia.', 'https://via.placeholder.com/250x250.png/00cccc?text=dolores', 'cum', 0, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(23, 8, 3, 'Est sequi sint deleniti.', 'Ea incidunt a qui sed perferendis. Et deserunt eum beatae corporis impedit non culpa dolores. Et molestias non sapiente doloremque iure. Odio natus et perspiciatis mollitia.\n\nEsse natus accusantium et velit dolores sint rerum. Voluptates accusantium nam magni. Voluptatum eius tenetur minima consequatur ducimus perferendis.\n\nVeritatis et qui et vel culpa sapiente architecto. Repellendus explicabo voluptas voluptatem maxime iste expedita. Omnis officiis magnam quo molestiae consequatur quo. Ea dolores consequatur magni.', 'https://via.placeholder.com/250x250.png/00ee11?text=tempore', 'repellat', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(24, 4, 9, 'Quod dolor qui eum.', 'Et provident unde velit. Tempore velit qui aut sint.\n\nIncidunt aspernatur nesciunt consequatur quae excepturi quibusdam beatae. Possimus aut placeat qui explicabo voluptates ipsam sed sed. Et facilis ut ducimus cum. Amet aliquid adipisci omnis placeat perspiciatis.\n\nAutem et molestias perferendis eveniet est et commodi repellat. Quibusdam ea impedit excepturi ullam. Suscipit placeat tempora quaerat adipisci voluptas. Animi asperiores et sunt. Deserunt dicta dolor repellat aut voluptatem ipsa.', 'https://via.placeholder.com/250x250.png/00bb00?text=impedit', 'quia', 1, '2022-11-23 06:18:58', '2022-11-23 06:18:58'),
(25, 10, 2, 'Fugit illum ipsam deleniti.', 'Corporis commodi rem qui. Alias voluptatibus deleniti est perspiciatis. Optio modi qui et vero neque nihil nostrum. Iure accusantium inventore illo ea nisi.\n\nRepellendus dolorum quaerat ex qui est ea error mollitia. Quo quidem autem consectetur occaecati. Quaerat eos commodi adipisci et eos assumenda repellat facilis.\n\nAutem temporibus vitae vel in illo aut dolores. Dolorem libero cumque qui in ea. Numquam consequatur id ipsam incidunt recusandae. Occaecati neque cupiditate ut ullam dolor qui aut.', 'https://via.placeholder.com/250x250.png/008877?text=rem', 'aut', 1, '2022-11-23 06:18:59', '2022-11-23 06:18:59'),
(26, 10, 6, 'Ut cum illo aut alias rerum cupiditate.', 'A vel unde dolorum quo ut necessitatibus. Sit iusto quaerat possimus aut quia sint quis. Temporibus ut harum ut in qui sint.\n\nQuae corrupti tempora consequatur cum non. Enim nihil nam itaque explicabo incidunt deleniti. Temporibus voluptatem vel molestiae inventore.\n\nDolores sapiente tempore exercitationem similique ea nulla. Sed quia voluptas voluptas adipisci. Quia dolorum est nulla sint sit reprehenderit hic eos.', 'https://via.placeholder.com/250x250.png/00ff99?text=eius', 'minima', 1, '2022-11-23 06:18:59', '2022-11-23 06:18:59'),
(27, 5, 9, 'Est fugiat eos aut quis nisi.', 'Quia accusantium quod esse magni qui. Quis dolores a quae aut sint.\n\nAsperiores amet id dolore saepe reiciendis ipsum quibusdam ipsam. Et vitae qui ea cupiditate ullam officia aut.\n\nQui non nisi officiis molestiae rerum et. Similique odio adipisci laborum illo. Consectetur architecto corrupti dolores voluptatum quis quo.', 'https://via.placeholder.com/250x250.png/0066aa?text=dignissimos', 'at', 0, '2022-11-23 06:18:59', '2022-11-23 06:18:59'),
(28, 2, 3, 'Quia voluptas totam et corporis voluptates.', 'Non ipsam fuga eligendi quam et voluptatum blanditiis nihil. Quasi dicta deserunt quia id. Ad omnis quidem quisquam dicta eligendi qui. Nemo architecto neque non minus dolore at.\n\nSaepe repudiandae et quia consequatur voluptatem dolorem maiores iusto. Qui dolores molestiae excepturi dolorum. Odit dignissimos id voluptate earum atque qui. Nihil doloribus aut dolore. Iusto est fuga quo dolores eaque voluptate quia.\n\nSed sit temporibus ipsum qui. Ea distinctio vitae nemo iste voluptatem. Aut aliquam error magnam quis nam voluptas. Enim vitae consequuntur neque aut aut labore veniam.', 'https://via.placeholder.com/250x250.png/0055dd?text=corporis', 'blanditiis', 0, '2022-11-23 06:18:59', '2022-11-23 06:18:59'),
(29, 5, 1, 'Est necessitatibus magni ut et facere.', 'Eum adipisci animi soluta maxime beatae. Quia enim optio recusandae beatae. Aut dolorum quod ut velit est. Voluptas amet eum quaerat laboriosam vero.\n\nPariatur distinctio aliquid quibusdam est odit nesciunt. Rerum quasi veritatis deserunt magni. Magni est ut fuga. Ad est nihil sit amet.\n\nSunt non non qui facilis voluptatum minus. Et expedita ut et porro cum eos est.', 'https://via.placeholder.com/250x250.png/0099cc?text=nihil', 'optio', 0, '2022-11-23 06:18:59', '2022-11-23 06:18:59'),
(30, 10, 4, 'Ut veniam dolore aut sunt voluptatem sed.', 'Repellendus quia ut nihil vel ipsa rerum cumque illo. Vel excepturi tempore et et consequatur. Consequatur impedit quia vitae illum ex. Aut voluptatem aut saepe voluptatem hic possimus.\n\nPraesentium quisquam maiores eos omnis enim possimus. Necessitatibus aliquam enim dicta earum asperiores rem perferendis quam. Quae minima ut impedit eos quibusdam. Dolor quos dolorum quo autem amet magnam voluptas. Hic natus at non molestiae harum.\n\nAutem placeat laudantium molestiae. Quis et et voluptatem dolor doloremque ad quia animi.', 'https://via.placeholder.com/250x250.png/003355?text=nihil', 'quae', 0, '2022-11-23 06:18:59', '2022-11-23 06:18:59');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
