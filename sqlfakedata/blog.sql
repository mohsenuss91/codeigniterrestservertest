-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2017 at 07:48 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Wilmer', 'Ratke', 'verdie.mueller@example.org', '2004-10-16', '1995-06-09 13:50:15'),
(2, 'Emmett', 'Watsica', 'brandon.quitzon@example.org', '2006-09-01', '1992-08-23 23:56:23'),
(3, 'Luther', 'Ernser', 'kgrady@example.org', '1986-03-19', '1983-03-12 02:15:00'),
(4, 'Horacio', 'Larkin', 'cooper.powlowski@example.net', '2000-01-13', '2006-07-10 06:33:22'),
(5, 'Donald', 'Parker', 'vharvey@example.net', '2006-08-04', '2009-06-14 05:32:54'),
(6, 'Zita', 'Beahan', 'ucasper@example.org', '1979-12-19', '1990-03-16 20:42:41'),
(7, 'Lorna', 'Daniel', 'hildegard01@example.com', '2013-11-07', '1989-02-23 09:03:51'),
(8, 'Jovany', 'D''Amore', 'alexa40@example.com', '2013-05-27', '1992-04-11 11:17:24'),
(9, 'Jolie', 'Sanford', 'danielle51@example.org', '2015-01-30', '2014-05-24 07:32:00'),
(10, 'Florence', 'Price', 'krajcik.esther@example.org', '1972-02-23', '1984-04-30 21:52:59'),
(11, 'Alaina', 'Abbott', 'skoch@example.org', '1978-12-29', '2002-03-26 08:40:39'),
(12, 'Syble', 'Hayes', 'pratke@example.com', '1993-05-31', '2010-10-30 13:49:38'),
(13, 'Emmanuelle', 'Abbott', 'morissette.jeanne@example.net', '2013-02-23', '2003-08-30 00:16:29'),
(14, 'Garland', 'Hessel', 'armstrong.francis@example.com', '1983-05-03', '1993-01-26 05:38:23'),
(15, 'Alexandrine', 'Stracke', 'ewalsh@example.com', '1991-05-05', '1974-08-15 09:28:12'),
(16, 'Ashtyn', 'Kertzmann', 'dickinson.mayra@example.com', '2004-12-23', '2011-05-10 22:07:48'),
(17, 'Jenifer', 'Denesik', 'gislason.libbie@example.net', '2004-11-04', '1978-05-10 03:19:31'),
(18, 'Rozella', 'Balistreri', 'ojaskolski@example.com', '2010-04-27', '1976-05-10 14:10:30'),
(19, 'Mara', 'Reichel', 'eddie.mertz@example.org', '1979-09-09', '1978-11-09 17:42:58'),
(20, 'Adrien', 'Nicolas', 'jabari43@example.org', '2013-12-20', '1988-12-27 00:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `description`, `content`, `date`) VALUES
(1, 17, 'Nulla et temporibus dolore.', 'Corporis quia voluptas nemo nihil nesciunt quibusdam. Fuga et reprehenderit quas ducimus repellendus. Illum similique voluptate provident facere reprehenderit.', 'Expedita repudiandae placeat ut voluptatem. Quia blanditiis consequatur dolorum nostrum nihil magnam. Qui quis tempore cum labore laborum. Sint porro et quaerat vero.', '1984-08-28'),
(2, 6, 'Aut harum molestiae dolor libero voluptas doloremque.', 'Magni et fugiat ut delectus. Eius autem et ipsam sint eius maiores animi. Accusantium neque eos corporis beatae et recusandae ex. Eum qui perspiciatis est in.', 'Voluptas quos nam iste fuga rem. Placeat aut commodi pariatur. Iure iure omnis porro tenetur inventore in aliquam. Omnis est quia aut voluptas explicabo sed.', '2013-06-30'),
(3, 7, 'Dignissimos adipisci deleniti aut dolore consectetur non nobis.', 'Molestias necessitatibus veniam commodi rerum temporibus quia. Est iure molestiae reiciendis nobis dolor qui dolorum. Porro inventore quia amet similique blanditiis debitis.', 'Quasi quod neque recusandae enim. Aut dolore nobis accusamus similique totam.\nNam hic quis nam quam cupiditate. Aut doloremque ratione velit aliquam sit est quia.', '2009-08-22'),
(4, 2, 'Molestiae omnis laboriosam dolores et beatae corporis id assumenda.', 'A ut et pariatur debitis illum sunt quo. Nostrum explicabo saepe natus repudiandae dolore. Sit et fuga sed distinctio laudantium blanditiis. Officiis nihil eos quia recusandae quo expedita totam.', 'Consequuntur rem autem ut aut alias quisquam. Quo dolor nihil est quia possimus accusamus porro. Facere eos eius consectetur. Consectetur optio debitis totam corporis nobis dolorem.', '2012-07-04'),
(5, 7, 'Ut pariatur non error.', 'Minus et et quisquam sint neque. Sit dolore excepturi rem quo. Autem dolore debitis consequatur nihil quidem.', 'Consequuntur provident eos odio suscipit ut quia. Sed recusandae repudiandae illo eos omnis assumenda id. Aut nihil officia alias.', '2004-05-27'),
(6, 6, 'Voluptatem dolorem unde a odit.', 'Porro repudiandae vel laborum et. Rerum dolor eaque inventore eaque dolore eligendi eos sunt. Deleniti ratione omnis nihil qui et ex quis.', 'Quisquam alias sapiente quo et fugit. Sunt iste minima ut vero.', '2016-04-08'),
(7, 15, 'Pariatur occaecati voluptatem et sed.', 'Et assumenda et molestiae dolore illum at enim. Dignissimos fugit itaque dolorem deserunt. Et ab maiores explicabo et pariatur.', 'Est deserunt aut aut in. Quia consequuntur non et voluptas omnis nostrum asperiores.', '1974-06-08'),
(8, 17, 'Quisquam illo distinctio nesciunt delectus aut sunt explicabo.', 'Et architecto aut porro dolor autem rem iure. Velit ut nihil facilis. Ex consectetur consectetur id tenetur qui. Ea consequatur voluptas explicabo et et.', 'Qui omnis eos omnis est ratione. Repellendus neque voluptatem omnis sed officia illo. Molestias voluptas harum vel aut inventore.', '1978-11-18'),
(9, 10, 'Porro fuga voluptatem sed omnis.', 'Quaerat accusamus autem culpa aut. Sapiente ad illo exercitationem.', 'Ut corporis dolorem ea. Ut quisquam aperiam aut unde voluptas doloremque. Debitis et fugiat optio aut. Ullam temporibus commodi corrupti pariatur aut sint.', '2016-03-21'),
(10, 16, 'Ex saepe maxime commodi impedit delectus.', 'Sed eos omnis odio. At reiciendis quia ullam voluptate. Aut nostrum et veritatis sed error.', 'Non hic commodi dicta enim nobis ea. Et mollitia illo nostrum dolorem non blanditiis beatae. At sit quidem voluptatem earum ut est porro. Beatae nesciunt officia consequatur laborum et.', '2014-11-09'),
(11, 12, 'Aut nam quia vitae exercitationem eligendi accusantium excepturi quis.', 'Blanditiis earum blanditiis enim dignissimos. Sequi qui omnis repellendus aliquid. Pariatur tempore temporibus labore amet magnam minus. Maxime voluptatibus dignissimos eius ipsum. At placeat minus eligendi saepe asperiores quaerat fugiat.', 'Rerum velit nemo incidunt modi. Voluptatum magni saepe expedita quod sunt. Excepturi culpa eos id dolores rem. Molestias qui est quae dolores fugit.', '2007-06-14'),
(12, 2, 'Natus repudiandae dolores in ut sit.', 'Et eum eaque similique expedita exercitationem quia. Nisi est dolorem id eaque ut numquam. Dolore excepturi expedita porro quia eveniet eligendi. Qui fugit facere sed veritatis ut fuga.', 'Dolorem deleniti esse modi animi quibusdam. Praesentium nostrum in sapiente unde aliquam sunt. Magnam est deserunt ut cum.', '1986-08-20'),
(13, 10, 'Aut et expedita dolorem voluptas mollitia velit.', 'Porro nulla adipisci sed et animi hic. Aut autem magnam natus numquam possimus voluptas numquam enim. Id consequatur ut minus quis porro autem commodi.', 'Placeat maxime sint occaecati quia corrupti ut. Tempora qui et quas consequatur veniam. Eveniet rerum maxime quia. Deserunt hic et facilis.', '2003-04-17'),
(14, 10, 'Nihil distinctio minima omnis.', 'Est quasi quisquam autem iste dolores corporis impedit. In dolorum officiis numquam natus. Reiciendis quae dicta ut ipsum.', 'Itaque consequuntur explicabo id et facilis. Et nostrum error ipsa et dolor. Aut libero vitae numquam qui perferendis ex nam. Et debitis numquam est.', '1993-02-01'),
(15, 5, 'Impedit aut quibusdam qui molestiae.', 'Vero eos repellat non molestias. Dolor et facere voluptas eveniet ducimus sint debitis qui. Ullam aut et deserunt. Quas necessitatibus ratione occaecati nisi dignissimos et deleniti ut.', 'Debitis rerum accusamus nam. Dignissimos sint praesentium aut quis maxime saepe ea. Quos consequatur dolor sapiente molestiae.', '1993-12-23'),
(16, 11, 'Vel consequatur mollitia voluptatibus provident.', 'Velit in molestiae rerum optio nostrum sunt voluptatem. Dolorem necessitatibus consequatur aliquid autem. Nam aperiam et et praesentium in.', 'Nihil incidunt molestiae molestias fugiat voluptatem. Ullam quo alias quia sed voluptatem. Aut inventore optio autem laboriosam et necessitatibus rerum. Assumenda qui quae nostrum perferendis ipsam.', '2003-06-27'),
(17, 8, 'Sit dicta voluptate praesentium a illum doloremque beatae consequatur.', 'Tempore rem placeat assumenda. Consequatur quaerat non dolores nihil cumque.', 'Sapiente totam ut explicabo nam vitae. Laudantium quibusdam error ut et maxime. Cum et fugit assumenda qui aperiam. Tenetur voluptates dolores ut cupiditate omnis quibusdam.', '1990-07-31'),
(18, 17, 'Ut asperiores veritatis porro earum pariatur.', 'Accusantium voluptatem aut porro reprehenderit maiores est similique. In quia ipsum ratione alias est pariatur quidem. Eos tempora a maiores nam saepe beatae expedita.', 'Ut id ab dolores. Minima ut sequi accusantium facere. Et veniam eaque qui architecto aperiam id veritatis nesciunt. Ad omnis qui velit.', '1997-03-10'),
(19, 4, 'Enim ad est fugit recusandae.', 'Similique officiis libero iure architecto rerum et. Maxime odit sit debitis exercitationem provident explicabo. Nisi voluptate odit accusamus facilis. Occaecati dolores sint voluptatem deleniti aspernatur.', 'Nostrum modi velit dicta ab aliquid similique sequi. Est quia dolor quisquam in ipsam consequatur quae.', '1974-06-29'),
(20, 1, 'Et omnis ut qui voluptatem numquam.', 'Quis itaque consequuntur reiciendis dolorem. Qui et et excepturi aliquid excepturi eum et nihil. Unde quaerat nostrum nam qui. Provident quia quo sed aut placeat possimus.', 'Quasi sint dolorem aspernatur omnis in. Qui eaque quis numquam ea eaque tempora sunt. Quo distinctio id voluptatem perspiciatis quidem quo.', '1979-01-31'),
(21, 12, 'Ad dolore est tempore ratione.', 'Incidunt quasi unde necessitatibus et qui adipisci similique voluptate. Voluptas commodi perferendis ipsam. Delectus id exercitationem sit quisquam omnis similique.', 'Rerum est ea quas aut est iusto. Repellendus autem saepe optio quae. Mollitia sunt qui qui. Architecto sed et at.', '1971-02-03'),
(22, 4, 'In est et laudantium rerum est magni rerum.', 'Enim corrupti sunt esse in aliquid. Eum dolor consequatur consequuntur id magni ratione. Vero cumque voluptatem autem.', 'Deserunt molestiae sint velit qui reiciendis ratione atque. Omnis eligendi cumque est et. Quasi nobis vitae sequi.', '1982-02-10'),
(23, 5, 'Soluta aut deserunt vitae at est eligendi dolor.', 'Dolore non id est nam et. Omnis quo fugiat qui officia nam et dolorum. Sequi possimus tenetur perspiciatis cupiditate illum.', 'Voluptas nisi a quos ipsum. Omnis commodi quis voluptatem. Reprehenderit earum accusamus eaque laborum debitis. Nesciunt ut odit at molestiae.', '2004-07-20'),
(24, 19, 'Id officiis repudiandae qui voluptas quo voluptatem provident.', 'Esse fugiat modi quia maiores. Dicta ad molestias ut asperiores quia minus sapiente veniam. Non nemo laborum corporis dolorem sed. Provident id rem deserunt architecto consequuntur sed.', 'Ea odit dolorem est consequuntur. Esse aut ratione odit. Qui id cupiditate qui ut neque eum. Esse animi animi dolore expedita laborum et. Excepturi non omnis placeat qui eligendi praesentium.', '1976-08-04'),
(25, 4, 'Non quis quia omnis totam ut deserunt exercitationem.', 'Autem et impedit illo ratione quo vero alias. Est autem consequatur velit rerum. Accusantium repellendus labore enim ea expedita ea atque. Sed unde possimus dolores voluptatem quo. Nihil fugiat nisi laboriosam rem.', 'Quia nulla omnis nesciunt iure. Enim omnis modi eligendi commodi quia ad repudiandae.', '1984-12-01'),
(26, 17, 'Dolor eius quo rem eum dolor reprehenderit.', 'Nihil nisi aut ratione doloribus. Unde est et enim suscipit eaque qui. Tenetur illum natus incidunt expedita. Deleniti dolore molestiae cum quasi necessitatibus quis.', 'Ut blanditiis aut quo alias. Inventore maxime non voluptatibus. Alias voluptatem doloribus distinctio error architecto blanditiis. Harum quibusdam soluta vel repudiandae fugiat velit.', '2010-01-31'),
(27, 5, 'Delectus veritatis sapiente id nemo dolore hic ipsum.', 'Sed quasi mollitia eos ipsum. Dignissimos iure autem et et nisi in sed sapiente.', 'Labore aut quam animi velit. Voluptatem ipsam qui occaecati voluptas.', '2010-03-21'),
(28, 9, 'Ipsum id ea esse cum et eaque.', 'Asperiores et sapiente aperiam rerum voluptates atque ullam. Dolorem accusantium dolore nam id harum debitis tenetur. Quia nobis dolores eum omnis sed qui velit.', 'Et iusto velit sed autem. Aut animi similique et qui quia repellendus. Enim commodi reiciendis optio dolorem tenetur. Repellat modi ut sit nihil praesentium ut.', '1988-12-25'),
(29, 3, 'Tempore sapiente quam veniam numquam.', 'Consequatur nostrum et et placeat quasi veniam. Totam hic autem suscipit accusantium voluptatem expedita tempora aut. Pariatur laboriosam omnis quaerat ut est ullam minima atque. Consequatur aut similique sequi in qui.', 'Numquam laudantium necessitatibus et ut. Alias sunt quis dolorum est quis fuga et. Soluta hic rerum minima aspernatur perspiciatis et voluptatibus aut. Aut rerum quia voluptatem impedit.', '1988-02-15'),
(30, 14, 'Tenetur impedit explicabo maiores ab reiciendis voluptas eveniet.', 'Quibusdam molestiae quasi ut dolor. Ratione beatae est reiciendis voluptatum enim quisquam. Illo totam autem et odio.', 'Et omnis debitis aut nam qui expedita molestias. Quidem magni tempore at sed iste id. Error eaque quia officiis earum minima quia voluptate et.', '1980-12-30'),
(31, 19, 'Repellendus reiciendis fugiat quam et.', 'Autem a aliquam tempora doloribus provident autem. Architecto doloremque vero atque. Et culpa illo provident nesciunt sit voluptatem. Placeat beatae molestiae et sed.', 'Aspernatur eius ipsa dolorem dolore provident hic. Omnis modi nisi non rerum accusantium. Nam voluptatem earum velit eaque dolores. Magni quos vel magni qui sed.', '1979-10-24'),
(32, 5, 'Ullam qui qui a maxime itaque.', 'Aut animi et illum minus sit quia fuga. Accusantium inventore deleniti quo sapiente. Quo provident eveniet eligendi provident.', 'Qui quae praesentium blanditiis delectus nobis aperiam. Eius totam qui id cum at non reiciendis. Excepturi qui quo rem ut possimus similique molestias.', '1988-07-22'),
(33, 1, 'Beatae quia magnam cumque tenetur.', 'Et rerum sint illo architecto accusantium fugit. Et ad et aut ad. Pariatur quod vel reprehenderit dolorum.', 'Aut aut cumque aliquam est provident in rerum est. Et amet cumque eius aut. Quidem laborum itaque delectus. Harum quidem ratione est et ipsam recusandae cumque hic.', '1999-07-11'),
(34, 12, 'Consectetur neque culpa id quia consequatur voluptatem occaecati.', 'A similique sint ad ab. Cupiditate minima ut inventore molestias. Dolorem ab dolorum exercitationem neque recusandae rerum porro.', 'Repellat eum ut ut saepe. Sequi debitis vel ratione ratione eveniet. Rerum facere et voluptatem veniam perferendis libero est totam.', '2013-09-18'),
(35, 2, 'Aspernatur inventore quia itaque omnis laboriosam asperiores.', 'Quasi et iste ea. Eligendi sint quia consectetur. Nisi qui minima sed voluptatem et.', 'Odio laboriosam eligendi atque et qui expedita veniam necessitatibus. Nihil necessitatibus incidunt eligendi et sit aspernatur.', '1998-10-12'),
(36, 17, 'Veniam velit iusto fugit placeat.', 'Hic quam enim ipsa blanditiis qui quisquam molestiae consequatur. Dolorum quos facere placeat nisi similique maxime. Veniam iure neque porro delectus aut consequatur. Tempora qui velit consequatur laboriosam ut.', 'Alias odit dicta consectetur nostrum. Doloremque recusandae voluptatum aliquid non eum et. Et deserunt quo vel illum est. Numquam fugiat autem et et non harum tenetur distinctio.', '1973-08-30'),
(37, 13, 'Enim quas id non.', 'Sapiente delectus et autem esse. Officia eveniet et dolor aut delectus minus. Non voluptatem non maxime eaque.', 'Laboriosam consequatur dolorem iure voluptates earum. Voluptatem et vel sunt quisquam sint. Voluptas est nobis nihil a quo.', '1970-07-24'),
(38, 7, 'Sint aut minus magnam cupiditate.', 'Quis et consequatur occaecati at iusto. Velit non exercitationem mollitia odio vel nostrum. Omnis ea numquam nihil illo sequi sed repellendus. Non et sed et est nihil dolores eum. Dicta ipsa sunt veniam magni ratione labore est.', 'Deleniti autem iure dolores sit tempora. Iusto dolorem modi non aliquid quia consequatur vero officiis. Nemo doloribus est sint et aut necessitatibus.', '1997-03-15'),
(39, 11, 'Velit quia sit voluptatem consequatur nihil quo.', 'Nobis vel nulla voluptatem tempore autem. Odit autem deleniti modi animi. Consequatur provident qui corporis omnis pariatur. Deserunt ut rerum recusandae et maxime cum. Aut ratione quo modi et consequatur fugiat perferendis sequi.', 'Sint sed facere soluta corporis. Ut aut et dolores dolore. Eligendi distinctio sint accusamus ex tenetur fugiat id vero.', '1988-11-16'),
(40, 19, 'Minima labore expedita iste eum aut voluptas.', 'Rem enim perspiciatis quam incidunt quia doloremque. Nihil exercitationem sunt reiciendis est quia nam in. Perferendis facilis voluptas aut consectetur illum. Explicabo id impedit iure nostrum deleniti.', 'Voluptates sit aut adipisci saepe et et. Tenetur enim itaque animi aliquam. Iure iusto voluptas magnam ut aut ratione explicabo. Nostrum delectus debitis eos ullam est quisquam.', '1998-05-11'),
(41, 18, 'Saepe doloribus excepturi sapiente voluptatem.', 'Sapiente est aut delectus hic et vero provident. Consequuntur quos quis sunt quo dolor. Unde itaque impedit aspernatur voluptate exercitationem nulla enim. Debitis sed dolorum sapiente.', 'Voluptatum et totam doloribus consequatur. Et aliquid aut ut eius. Sit provident modi eos in libero laboriosam mollitia.', '1979-12-11'),
(42, 10, 'Doloremque rem doloremque sit perferendis.', 'Praesentium ut eaque impedit iste quis soluta repudiandae natus. Est vel nihil quod rem minima dolorem. Nobis eum magnam doloremque nostrum vel et.', 'Quae autem adipisci ipsa facilis amet. Vel architecto nesciunt consectetur repellat sapiente aperiam voluptatum quas. Aliquid omnis nisi earum nam aut et. Impedit quaerat id velit.', '1986-01-28'),
(43, 17, 'Possimus consequatur voluptas dolore voluptatem reprehenderit sed ea.', 'Mollitia facere officiis possimus perferendis consequuntur. Ut qui fugiat repellendus numquam et iure. Quaerat neque natus quia quis quos aut inventore iusto. Eum veritatis culpa quibusdam repellendus. Necessitatibus labore ipsa quas ex.', 'Eos commodi tempore quia quod sint occaecati sapiente. Esse tenetur officiis facere cum. Dignissimos autem voluptatibus et quia distinctio ipsum. Iusto ut error facilis perspiciatis numquam.', '2009-06-24'),
(44, 19, 'Est tempore voluptas iste amet.', 'Quas illum dolorem quae sint. Aut quia delectus facere suscipit eius adipisci nostrum. Totam quo ullam voluptatem aut. Modi sunt porro qui distinctio dicta.', 'Accusamus cupiditate dolore vitae voluptas. Hic rerum repudiandae blanditiis minima voluptatem quasi est autem. Id est ex earum autem. Temporibus quia reprehenderit soluta ipsa.', '1997-05-12'),
(45, 16, 'Quibusdam impedit et nostrum accusantium sint voluptates qui.', 'Itaque quia eos similique est libero. Minima fugiat aliquid ut expedita voluptatem earum eius est. Porro omnis accusantium deserunt cumque maiores eum ipsam.', 'Ipsum accusantium ducimus voluptas explicabo. Odio sint inventore aliquam ut ducimus odit odio.', '1984-08-20'),
(46, 17, 'Laborum ut quas unde culpa facere.', 'Ipsam accusamus facilis omnis quis asperiores qui modi. Quia nesciunt rem earum vitae. Perferendis quasi non qui consectetur culpa. Aliquam at vero fugiat atque beatae et omnis.', 'Atque eligendi dolorem error eaque enim dolore explicabo. Nihil ut sequi est fuga alias laudantium. Hic blanditiis et a repellendus in.', '1972-08-04'),
(47, 4, 'Expedita blanditiis nobis illo sit qui dolor.', 'Nulla quo voluptas eum aut ea optio. Facilis eum neque nam amet et. Non voluptatem sed et unde et. Culpa inventore ab excepturi odio earum.', 'Sit ad et aut sequi rem magni. Esse distinctio quibusdam voluptatem dignissimos non qui. Delectus adipisci provident et sed omnis. Ducimus adipisci animi itaque fugit.', '2001-03-14'),
(48, 19, 'Suscipit facere est mollitia qui.', 'Eius eaque voluptas dicta id. Voluptates accusantium dicta expedita sed dolorem cum. Rerum velit tempore facere quia soluta nulla autem.', 'Sunt atque dolorum quo ratione qui repellendus. Ut commodi illo et dolor ad. Est quae nam molestiae esse quis minima. Et corporis nihil sapiente aut cupiditate.', '1995-11-03'),
(49, 11, 'Omnis nihil ut quis.', 'Amet neque doloremque odit nostrum aut quis temporibus. Doloribus reiciendis distinctio possimus. Accusantium omnis dolore et consequuntur suscipit maiores quia.', 'Expedita magnam et aut voluptatibus sunt. Dolores et alias eum voluptate et. Non itaque ut aut repellat aliquid excepturi quos. Ratione in rerum architecto a.', '2001-07-29'),
(50, 19, 'Sunt eos ut et fugit temporibus minima.', 'Et dolore ut fugiat dicta excepturi ipsum. Et eos repellendus facere quae et non. Ipsa quisquam et ut ullam. Molestiae assumenda et quis inventore neque.', 'Ab omnis ab voluptatem autem reprehenderit placeat. Fugiat non reiciendis eveniet nemo. Maxime soluta quaerat quibusdam accusamus. Quia veritatis sint occaecati id et adipisci.', '1976-07-05'),
(51, 9, 'Voluptate velit sunt sit quia et in eos.', 'Est libero quos dolores voluptatem doloribus corrupti eligendi. Eius dignissimos enim nemo recusandae. Exercitationem neque error iste tempore repellat blanditiis. Iusto molestiae dolore vero.', 'Nemo enim repellendus velit ab aut mollitia. Quasi sunt perspiciatis mollitia est numquam maiores. Dolores molestiae ab ipsa optio cupiditate. Doloribus dolores labore debitis nobis exercitationem.', '1978-02-16'),
(52, 3, 'Laboriosam expedita earum et sit.', 'Exercitationem iusto molestias eos est. Nesciunt assumenda harum consequatur ipsa. Eius quia in eligendi veritatis illo libero atque.', 'Soluta ipsum aut reprehenderit est voluptatem esse. Consequatur animi excepturi aut illum consequatur et magni. Expedita placeat et voluptas rerum.', '1986-05-22'),
(53, 20, 'Voluptatem rerum iusto quibusdam molestiae consequuntur qui.', 'Ea fugiat vel inventore ut. Deserunt libero iste ea. Temporibus et nisi fugit consequatur.', 'Harum sapiente omnis quos. Rerum magni accusantium fugit repudiandae placeat modi. Magni a mollitia ducimus. Quae nobis molestiae dolores quos ut cum rem eos.', '1973-11-13'),
(54, 4, 'Quam ullam voluptatem sint dolor consequatur sed est.', 'Nihil illum sunt tempore sit aliquam. Mollitia voluptatem dicta molestias veniam. Qui neque nihil repellat ea ut quisquam in. Repellendus inventore reiciendis quisquam dolorum maiores natus et.', 'Et natus blanditiis alias animi iusto nesciunt harum. Odit at et eum consequuntur error quis. Et aut in iusto et.', '1978-04-23'),
(55, 1, 'Rerum et odio sed repudiandae in consequatur.', 'Est optio voluptatem nesciunt inventore dolores quia et. Ut esse deserunt non et distinctio excepturi amet. Ut nostrum ipsum dolor aperiam dolores temporibus vitae. Animi voluptates natus optio ut.', 'Sed voluptates et voluptatem velit sit. Perspiciatis id ea nisi deserunt explicabo non. Asperiores quas libero asperiores id numquam. Nihil in et cupiditate voluptatem et rerum.', '1989-11-05'),
(56, 18, 'Autem quisquam qui expedita voluptatibus.', 'Maiores est mollitia dolores omnis vero culpa quae. Inventore molestiae explicabo sed. Quia alias minima inventore impedit ut velit. Dolorem fuga debitis culpa voluptas similique.', 'Sed iste ab eos dolores ad qui. Reiciendis nemo provident est est exercitationem eligendi quos. Praesentium tenetur enim quia deleniti aspernatur eos expedita saepe.', '1983-04-12'),
(57, 10, 'Exercitationem qui sed amet nemo est facere.', 'Labore velit tempora earum autem ut. In neque molestias dolor veritatis voluptatem sint. Animi exercitationem et numquam similique excepturi voluptatem. Cumque et sit saepe labore.', 'Rerum maiores laborum nihil non. Dolorum quia ipsam ratione voluptatem nihil quasi quae. Velit veniam vel quos. Exercitationem commodi facere soluta doloribus omnis eos officia.', '2009-08-08'),
(58, 1, 'Maxime aspernatur facilis dolor minima alias perferendis.', 'Praesentium eius nihil iure delectus consequatur. Quis unde maiores omnis. Sit voluptates magni dolores exercitationem voluptates minus. Voluptatibus iste illo nesciunt qui ex perspiciatis ipsam. Ea dolore accusantium eum aut magnam voluptatibus.', 'Exercitationem dolores autem expedita rerum. Hic quis est id expedita labore ipsa saepe. Dolorem quo voluptas quo magni id.', '1977-02-02'),
(59, 1, 'Quo ad ea accusantium et assumenda.', 'Qui rerum voluptatem suscipit. Iure vel expedita quia minus expedita voluptates. Facilis ex sunt libero esse nesciunt ut earum. Perferendis voluptate molestias quas magnam.', 'Nemo cumque aut beatae dolor facilis tempora. Itaque optio fugit fugit et numquam sit sit. Ut et qui facilis consectetur rerum.', '1998-07-16'),
(60, 4, 'Eligendi aut illum nihil.', 'Et vitae assumenda dicta. Quia excepturi qui sit praesentium autem.', 'Ab voluptates esse dignissimos harum quibusdam itaque. Harum adipisci eaque velit dolore commodi quod quidem sequi. Enim aut sit sit quasi. Vel reiciendis ratione laborum voluptas et omnis.', '2007-03-06'),
(61, 5, 'Sit qui nostrum et voluptas.', 'Quo ipsam porro nostrum officiis animi laboriosam. Expedita soluta rerum et natus ea voluptatem dolorum. Enim dolore odit repellendus blanditiis suscipit natus.', 'Cumque culpa ab placeat porro officiis provident occaecati aliquid. Harum quia ducimus facere quidem quo et. Ea corrupti distinctio dolorem totam mollitia tenetur nulla aut. Qui repellat eos odio.', '1998-12-20'),
(62, 9, 'Explicabo dolor omnis quis eos deleniti sequi explicabo.', 'Corrupti et culpa placeat nemo natus laboriosam provident. Asperiores et nisi alias aut sunt sint. Quae non laborum voluptatem officiis rerum voluptas. Deserunt perferendis dolores id aliquam.', 'Non nihil et dolor sed nisi dolores consequatur. Aut nesciunt aut neque velit molestias dolore. Tempore quo alias ducimus praesentium dolorem cumque. Corporis qui nam ut nam.', '1996-09-21'),
(63, 2, 'Eum quia sint mollitia sit nemo.', 'Vero expedita aut incidunt inventore ut. Est nam incidunt tenetur. Qui quo animi magnam consequatur at fuga. Ut repellat omnis neque odio.', 'Cupiditate quae itaque quis qui. Deserunt eius est similique sit error praesentium. Sed excepturi nesciunt quae sapiente voluptatum.', '2017-03-09'),
(64, 6, 'Quisquam quaerat aut voluptas.', 'Qui exercitationem error aperiam perferendis assumenda sit. Excepturi incidunt eos porro. Ullam omnis ea nobis fuga id unde accusamus. Et pariatur et in deleniti.', 'Ut sit autem et sint ut. Optio ut et facere quas officiis est nobis repellat. Ea a maiores omnis rerum accusantium unde. Perferendis in sit impedit non sunt illo incidunt dolorem.', '1973-10-18'),
(65, 8, 'Voluptatem quasi est veritatis ullam autem incidunt.', 'Praesentium sed nemo labore qui culpa expedita minima minus. Laborum sequi nemo qui praesentium dolorum animi ab. Saepe eum ipsum fugiat omnis dolores impedit. Voluptatem aut ex totam necessitatibus sit provident quidem.', 'Nemo dolorem voluptatem a architecto. Impedit harum atque qui id. Sed rerum autem dolore in quia ut.', '2016-04-13'),
(66, 9, 'Est architecto voluptas veniam aliquam.', 'Illo est asperiores aut. Dolorem alias aspernatur provident velit. Atque exercitationem facilis maxime eum aut suscipit.', 'Rerum facilis dolore aut sed suscipit enim dolores ea. Quaerat dolorum quam in incidunt harum.', '1988-05-26'),
(67, 19, 'Ea ut voluptas perspiciatis suscipit.', 'Laborum quas et omnis nemo delectus fugit ut iusto. Velit dolores nihil at repudiandae. Est qui sapiente consequatur accusamus. Nam est iure dolores esse molestiae. Nihil quasi fuga quia hic.', 'Animi provident accusantium dignissimos quisquam et veniam veniam aut. Consequatur tempora dolores voluptatum quo. Cupiditate culpa earum dolore inventore quod non et ut. Aut qui ullam quaerat qui.', '1979-03-15'),
(68, 18, 'Quia quaerat nobis laboriosam dignissimos harum voluptatem quia.', 'Reprehenderit debitis quo est est culpa accusamus occaecati. Eos et magnam dicta et aut nam. Sit odit quisquam repudiandae officiis et ducimus sapiente. Aut repellat et qui tempore dolor error assumenda.', 'Et commodi dolores facilis eaque ut. Aliquid totam tempore laudantium cupiditate. Aut quia neque nesciunt similique voluptas consequatur ipsum. Quia quo consequuntur sapiente qui veritatis et.', '1975-06-28'),
(69, 13, 'Perferendis accusantium ipsum debitis reprehenderit magnam illo.', 'Possimus tempore totam corporis et expedita. Maiores consequatur quas libero qui. Error illum cumque velit similique est tenetur voluptatem qui. Nobis exercitationem voluptatem amet repudiandae a doloremque qui.', 'Est repellendus deleniti molestiae neque hic in. Delectus accusantium qui aut ad. Non quia est saepe aut quas minus. Sint cum quia repellendus reprehenderit laudantium consequatur atque.', '1979-08-24'),
(70, 2, 'Unde ipsam velit et est et sed nobis.', 'Molestias voluptas vel vel earum. Ab possimus alias dolor dolores. Ab harum expedita amet distinctio ea sunt.', 'Dolorem omnis et eaque et. Nam adipisci eaque libero aut ab excepturi. Qui autem excepturi et amet. Nulla consequatur animi tenetur nesciunt iure repudiandae.', '1987-11-22'),
(71, 14, 'Quo eos sit iste beatae.', 'Ea debitis ducimus sit sit nobis. Est ducimus omnis quidem fuga vero odio ut.', 'Sint est commodi commodi. Atque rem molestiae cum dolor unde repellendus mollitia.', '1984-05-18'),
(72, 17, 'Necessitatibus odit facilis doloremque animi et voluptates.', 'Ipsa aliquid tenetur accusantium et aspernatur consectetur expedita. Modi non aut eligendi repellat ea.', 'Architecto alias molestiae repudiandae optio consectetur eum incidunt. Repudiandae quia dicta et unde officia. Qui voluptas sunt omnis voluptas et.', '2013-07-07'),
(73, 12, 'Rem corporis eaque necessitatibus beatae soluta.', 'Qui harum minus modi possimus quibusdam. Fuga voluptatem magnam voluptatem ad quae perspiciatis harum minus. Odit et aspernatur facilis qui esse.', 'Repellendus id voluptate fugit quae. Recusandae adipisci itaque provident itaque. Ducimus expedita odio inventore modi ad sunt. Vel cumque voluptas fuga fugit.', '1983-01-10'),
(74, 7, 'Rem et veniam praesentium libero eum ab.', 'In quisquam optio nam quod voluptatem. Perferendis incidunt delectus qui ducimus molestiae. Reprehenderit vero consequatur molestiae qui.', 'Assumenda ducimus quis quasi. Voluptatem qui ut provident sapiente distinctio vel. Amet quibusdam dolor officia dolores ipsam. Est voluptatum tenetur similique officia pariatur quaerat amet expedita.', '1989-06-19'),
(75, 12, 'Doloribus rerum nam distinctio adipisci.', 'Quo officiis illo voluptate quo aperiam atque et. Consectetur suscipit aperiam fugiat qui cupiditate nam asperiores eaque.', 'Corrupti delectus qui temporibus laboriosam incidunt. Cum magnam facilis dolorem ducimus nihil vel dolores suscipit. Dolore sapiente adipisci est ut soluta autem. Consequuntur nesciunt quasi vel nam.', '1970-02-14'),
(76, 8, 'Neque sit ad dolores aut incidunt libero laudantium.', 'Magni dolor unde eaque. Sequi laborum amet amet.', 'Consequatur qui odit sunt nobis reiciendis facilis. Doloribus quae debitis et eius autem et. Quo dolor aut provident.', '1999-04-26'),
(77, 1, 'Dolores qui explicabo at temporibus.', 'Dignissimos libero eligendi est recusandae ut rem delectus. Consequatur maiores quaerat eos. Tempore deleniti iure dolorum nobis quia voluptatem. Voluptas sunt dolores quia sequi assumenda nihil.', 'Omnis sit maxime et nesciunt est qui nisi. Odio dolor sit numquam labore. Facere voluptatem sunt reprehenderit expedita.', '1994-05-14'),
(78, 1, 'Eum error totam eos consectetur aut illo.', 'Nesciunt qui ratione occaecati et ullam voluptatibus molestias. Tenetur error rerum exercitationem inventore temporibus ut voluptas. Et veniam voluptatum sed.', 'Non pariatur impedit commodi aut voluptatem. Voluptate vero voluptate fuga ab impedit. Aut voluptate sint fugit eos suscipit voluptas.', '2005-11-25'),
(79, 19, 'Nihil eum sit itaque.', 'Quidem mollitia sit explicabo dolor dolore autem consequatur vel. Quia sapiente est aut eaque rerum qui ea. Asperiores quis molestias minima vel quo et porro.', 'Et ipsum aut eius voluptates et et ratione. Et corporis est nihil sequi. Harum commodi animi sed sint eligendi eum est soluta.', '1998-05-10'),
(80, 12, 'Libero omnis iusto iusto nobis illo itaque qui.', 'Natus non quae in nihil non vel molestias. Ducimus laboriosam at laudantium sint unde iure ex. Et id deleniti reiciendis ducimus tenetur ratione tempora. Aliquid et harum aut dignissimos.', 'Eveniet neque enim et dolor. Ut hic est ut dignissimos sint totam aut. Ea dolor quaerat ea eum iure consequatur nihil.', '2002-06-11'),
(81, 16, 'Asperiores et dolorum ut corrupti.', 'Iusto quas maiores voluptatibus et. Maxime laboriosam quae voluptates dignissimos culpa magnam asperiores. Nemo rerum est hic voluptatum ut. Repellat sed consequatur consectetur doloremque.', 'Unde velit qui facere. Non et et porro animi vel architecto. Sunt rerum odio corrupti vel quam.', '1982-09-05'),
(82, 3, 'Consectetur ut error ut vel maxime.', 'Sit et qui quisquam sit autem inventore natus porro. Excepturi ullam est quam explicabo.', 'Labore maiores reiciendis ut qui debitis. Dolores nesciunt officia temporibus velit facere minima. Deleniti maxime qui iure distinctio facilis. In sed quaerat voluptates adipisci nostrum velit.', '1982-01-09'),
(83, 15, 'Ipsa voluptatem sit sunt est architecto rerum.', 'Neque qui natus eum nemo. Aliquid quia aut deleniti repellendus libero nam. Sed et quia non tempora vitae ut vitae quia. Nemo molestiae voluptas excepturi ducimus. Corrupti fugiat cupiditate aperiam provident totam.', 'Laboriosam earum sit pariatur minus qui eos. Praesentium est voluptate eos magni doloremque minima. Et laboriosam odio voluptas vel totam sit et.', '2017-04-04'),
(84, 12, 'Architecto ut quod et vel.', 'Nemo tempore in in recusandae totam officiis ipsam. Accusantium tenetur molestiae sapiente fugit blanditiis. Repellat aliquam error qui est veniam. Voluptatibus qui aut ducimus qui natus unde eum. Voluptatibus ab est quibusdam quia aut.', 'Et sed aspernatur alias. Aut et est nam id temporibus delectus. Voluptas qui minus vel omnis consequatur eos iste voluptatum.', '1978-02-10'),
(85, 12, 'Recusandae consequatur aut voluptas nemo.', 'Velit quia alias quia eos. Magni reiciendis exercitationem ab sapiente soluta. Enim nobis sed molestiae ut ab. Magni non iusto qui officiis. Ut sint voluptas qui consequatur sunt.', 'Consequuntur ipsa corrupti dolor. Non odio animi perspiciatis quibusdam minima. Harum repellendus repellat corrupti ipsa qui est eligendi et.', '2000-04-06'),
(86, 19, 'Quis earum ipsam et dolor odit.', 'Voluptate voluptates quam rerum. Animi consequatur aspernatur voluptatibus placeat sit. Non sint modi tempora aliquid.', 'Ea veniam culpa totam cumque exercitationem quis. Id necessitatibus et molestias maxime voluptatum voluptas doloribus. Harum qui quod omnis sapiente consequuntur debitis.', '1974-04-04'),
(87, 20, 'Dolore minus eum quos vitae pariatur quidem.', 'Nihil unde at et repudiandae voluptate. Consequatur omnis tenetur minima error. Et harum consequatur praesentium adipisci. Sint similique libero laudantium et rerum.', 'Et sint culpa qui hic et laborum et. Quam consequuntur eos nemo maiores voluptas aut dolores. Laboriosam adipisci perspiciatis et ratione labore sed. Et numquam eum aperiam maxime.', '1994-07-21'),
(88, 15, 'Impedit aspernatur magni numquam a reiciendis facilis quasi rem.', 'Ipsum commodi sint est dignissimos corporis. Sit enim quia amet eius facere fugiat eum omnis. Est harum nemo optio sequi ipsum.', 'Nobis adipisci provident dignissimos iure fugiat quidem. Libero modi odio recusandae quis ut. Iure minus exercitationem labore quae et dolor modi. Eligendi nihil nihil non et laboriosam.', '1984-10-10'),
(89, 9, 'Fugiat ullam consequatur in nesciunt eum est.', 'Deserunt accusantium repellendus ut dolorum enim sed. Ut dolores sit tempora fugit. Culpa omnis voluptas excepturi architecto. Est non qui eveniet nam consequatur dolores.', 'Cupiditate ut occaecati expedita. Animi aut quos adipisci. Ut deleniti sit et ea. Sit itaque voluptatem ipsum voluptatem eum possimus sunt.', '2003-05-28'),
(90, 17, 'Ut delectus aspernatur provident est amet.', 'Nostrum aspernatur non est ea amet nihil. Facilis qui vitae vitae quia. Beatae qui omnis sapiente sit consequuntur deleniti.', 'Accusantium quasi explicabo dolorem quis fugiat aspernatur. Ut ea eum qui aut vero et qui. Quia molestiae quisquam tenetur ipsum. Et ut omnis explicabo placeat expedita odit.', '1971-03-13'),
(91, 20, 'Sunt nihil ea unde molestias.', 'Aut eveniet voluptas voluptatem minima voluptas nobis qui. Esse in tenetur expedita sapiente. Voluptate enim et ab reprehenderit qui facilis.', 'Facere iure expedita minima fugit et hic itaque. Quos molestiae corrupti natus possimus commodi nulla. Minus in quos minus sunt tenetur qui. Ipsa suscipit et ullam in.', '1999-03-24'),
(92, 4, 'Natus consequuntur minus laborum voluptatem velit in omnis.', 'Nisi provident aut soluta sit amet ad. Tempore vero quas praesentium sed. Esse corporis temporibus reprehenderit velit animi hic quas. Atque sit sit facilis qui qui molestiae quam deserunt.', 'Cumque sint aut libero eos quasi dolorem dolor. Vel deserunt asperiores molestiae omnis fugit et velit. Molestias ut itaque qui delectus sequi.', '2011-01-09'),
(93, 13, 'Enim perferendis labore nam.', 'Temporibus laudantium culpa debitis nemo. Est magnam laborum tempora accusamus quod. Iste temporibus in beatae est qui aut mollitia sequi. Laboriosam non omnis velit enim.', 'Iusto quod qui est quia et veritatis totam. Harum cumque mollitia est quidem ut. Rem qui dolores aut libero atque.', '1978-04-19'),
(94, 13, 'Quam distinctio ex eos magnam qui.', 'Odit est ratione dolores rerum. Quibusdam excepturi quod nobis libero voluptate rerum voluptatem. Autem cumque voluptates quas voluptatem maxime repudiandae. Minus velit sint et dolorum.', 'Eum ut dolore soluta numquam non assumenda. Neque doloribus voluptatum laboriosam nihil eligendi aperiam. Illum et reprehenderit sed neque voluptatem.', '2002-04-05'),
(95, 14, 'Dolorum nisi nobis fugit pariatur ut et.', 'Ut repellat officia tempore. Rerum similique excepturi fugiat reiciendis qui ratione. Occaecati ullam quos est ut ut numquam est. Vel voluptates asperiores consectetur ut illum.', 'Consectetur quis molestiae natus ea natus deserunt. Eius sit nisi repellat libero pariatur. Animi quo molestias exercitationem quis quo.', '1987-06-30'),
(96, 18, 'Quas quae dolores consequatur praesentium.', 'Voluptates earum sit est nam omnis. Harum ad quam qui repellendus doloribus et. Omnis reprehenderit assumenda voluptatibus sint dolor. Totam doloremque eos autem et ut totam.', 'Quasi qui velit ab odio dicta. Aut deserunt cumque autem minima. Sit autem et dolorem ipsam enim.', '1999-09-17'),
(97, 1, 'Commodi ipsam et illum veniam et.', 'Ut totam at at velit. Sunt voluptatem inventore sit aperiam a ad minus. Voluptatum ut quis voluptatibus iste neque eos.', 'Tenetur et et omnis. Voluptates id unde est unde atque tenetur. Occaecati libero quas eaque cupiditate consequatur autem. Mollitia enim enim molestiae corporis quas.', '1989-12-27'),
(98, 15, 'Fugiat animi ratione molestiae qui dolor unde.', 'Nostrum soluta itaque dolores est aut. Expedita dicta quo sint porro voluptates. Tempora quaerat saepe perferendis officia voluptatem.', 'Maiores nesciunt voluptates et corporis alias consequatur. Repellat eos qui saepe non asperiores neque et. Aspernatur placeat neque non odio veritatis et.', '1972-07-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`id`) REFERENCES `posts` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
