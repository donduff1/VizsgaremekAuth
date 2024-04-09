-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 19. 11:36
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `movies_database`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `backdrop_path` varchar(255) DEFAULT NULL,
  `belongs_to_collection` varchar(255) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `imdb_id` varchar(255) DEFAULT NULL,
  `original_language` varchar(10) DEFAULT NULL,
  `original_title` varchar(255) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `popularity` float DEFAULT NULL,
  `poster_path` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `revenue` bigint(20) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tagline` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video` tinyint(1) DEFAULT NULL,
  `vote_average` float DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `movies`
--

INSERT INTO `movies` (`id`, `adult`, `backdrop_path`, `belongs_to_collection`, `budget`, `homepage`, `imdb_id`, `original_language`, `original_title`, `overview`, `popularity`, `poster_path`, `release_date`, `revenue`, `runtime`, `status`, `tagline`, `title`, `video`, `vote_average`, `vote_count`, `created_at`, `updated_at`) VALUES
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', NULL, '/5weKu49pzJCt06OPpjvT80efnQj.jpg', '2021-12-15', NULL, NULL, NULL, NULL, 'Spider-Man: No Way Home', NULL, NULL, NULL, '2024-03-19 09:10:49', '2024-03-19 09:10:49'),
(26, 0, '/92PG1J4gvxjTRLXTqDzPqjpe6fp.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman', 'Batman must face his most ruthless nemesis when a deformed madman calling himself \"The Joker\" seizes control of Gotham\'s criminal underworld.', 51.135, '/cij4dd21v2Rk2YtUQbV5kW69WB2.jpg', '1989-06-21', NULL, NULL, NULL, NULL, 'Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(27, 0, '/bxxupqG6TBLKC60M6L8iOvbQEr6.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman', 'The Dynamic Duo faces four super-villains who plan to hold the world for ransom with the help of a secret invention that instantly dehydrates people.', 23.271, '/zzoPxWHnPa0eyfkMLgwbNvdEcVF.jpg', '1966-07-30', NULL, NULL, NULL, NULL, 'Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(28, 0, '/bHxJA9rllKF2jhb11ARAwZJYSp6.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman', 'Japanese master spy Daka operates a covert espionage-sabotage organization located in Gotham City\'s now-deserted Little Tokyo, which turns American scientists into pliable zombies. The great crime-fighters Batman and Robin, with the help of their allies, are in pursuit.', 11.602, '/AvzD3mrtokIzZOiV6zAG7geIo6F.jpg', '1943-07-16', NULL, NULL, NULL, NULL, 'Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(29, 0, NULL, NULL, NULL, NULL, NULL, 'en', 'Batman', 'It\'s Bruce Wayne’s first year as Batman. He must get used to his double life in order to protect Gotham from criminals, some have already rose among the city.', 10.598, '/4dxOZrE1JhN0jdeCTvmfBBcpTKf.jpg', '2024-01-09', NULL, NULL, NULL, NULL, 'Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(30, 0, '/b0PlSFdDwbyK0cf5RxwDpaOJQvQ.jpg', NULL, NULL, NULL, NULL, 'en', 'The Batman', 'In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.', 161.667, '/74xTEgt7R36Fpooo50r9T25onhq.jpg', '2022-03-01', NULL, NULL, NULL, NULL, 'The Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(31, 0, '/8pOUmMgVnl1tYNtTRTE5TeyGBGD.jpg', NULL, NULL, NULL, NULL, 'ja', 'ニンジャバットマン', 'Batman, along with many of his allies and adversaries, finds himself transported to feudal Japan by Gorilla Grodd\'s time displacement machine.', 28.204, '/5xSB0Npkc9Fd9kahKBsq9P4Cdzp.jpg', '2018-06-15', NULL, NULL, NULL, NULL, 'Batman Ninja', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(32, 0, '/doiUtOHzcxXFl0GVQ2n8Ay6Pirx.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman v Superman: Dawn of Justice', 'Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.', 91.864, '/5UsK3grJvtQrtzEgqNlDljJW96w.jpg', '2016-03-23', NULL, NULL, NULL, NULL, 'Batman v Superman: Dawn of Justice', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(33, 0, '/lh5lbisD4oDbEKgUxoRaZU8HVrk.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman Begins', 'Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City.  Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld - The Batman.', 66.56, '/4MpN4kIEqUjW8OPtOQJXlTdHiJV.jpg', '2005-06-10', NULL, NULL, NULL, NULL, 'Batman Begins', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(34, 0, '/8UHbmR3WP86BspfwZZPgsVxxCFJ.jpg', NULL, NULL, NULL, NULL, 'en', 'Scooby-Doo! & Batman: The Brave and the Bold', 'Scooby-Doo and the Mystery Inc. gang meet up with Batman and other friends to defeat evil villains and save the day.', 45.429, '/hSPeF1zoYH8kCOhFMu7x3B55zu6.jpg', '2018-01-31', NULL, NULL, NULL, NULL, 'Scooby-Doo! & Batman: The Brave and the Bold', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(35, 0, '/eoMushgujydxFplE9yPZ54lwOvo.jpg', NULL, NULL, NULL, NULL, 'en', 'The Lego Batman Movie', 'A cooler-than-ever Bruce Wayne must deal with the usual suspects as they plan to rule Gotham City, while discovering that he has accidentally adopted a teenage orphan who wishes to become his sidekick.', 58.548, '/snGwr2gag4Fcgx2OGmH9otl6ofW.jpg', '2017-02-08', NULL, NULL, NULL, NULL, 'The Lego Batman Movie', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(36, 0, '/bNMw3onveTYU7PpLQRK0HQK8JRb.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman: Year One', 'A wealthy playboy named Bruce Wayne and a Chicago cop named Jim Gordon both return to Gotham City where their lives unexpectedly intersect.', 33.59, '/mLZRhulJcDsxZWTdfx0trtk6y07.jpg', '2011-09-27', NULL, NULL, NULL, NULL, 'Batman: Year One', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(37, 0, '/3WP0RObZ2t7ShHfqQpKPljF9B22.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman Returns', 'While Batman deals with a deformed man calling himself the Penguin, an employee of a corrupt businessman transforms into the Catwoman.', 48.667, '/jKBjeXM7iBBV9UkUcOXx3m7FSHY.jpg', '1992-06-19', NULL, NULL, NULL, NULL, 'Batman Returns', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(38, 0, '/snlu32RmjldF9b068UURJg8sQtn.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman Forever', 'Batman must battle a disfigured district attorney and a disgruntled former employee with help from an amorous psychologist and a young circus acrobat.', 39.091, '/mzzNBVwTiiY94xAXDMWJpNPW2US.jpg', '1995-06-16', NULL, NULL, NULL, NULL, 'Batman Forever', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(39, 0, '/a21obwG9qMSf1qa6oG4ZgpOyMaA.jpg', NULL, NULL, NULL, NULL, 'en', 'Merry Little Batman', 'This Christmas, Damian Wayne wants to be a superhero like his dad – the one and only Batman. When Damian is left home alone while Batman takes on Gotham’s worst supervillains on Christmas Eve, he stumbles upon a villainous plot to steal Christmas and leaps at the chance to save the day.', 45.925, '/2J70guF8wcErbYbRgZUBcvShgI1.jpg', '2023-12-08', NULL, NULL, NULL, NULL, 'Merry Little Batman', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(40, 0, '/tgPFZxhDuxWd4VXYaz8eAUznGTF.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman & Robin', 'Batman and Robin deal with relationship issues while preventing Mr. Freeze and Poison Ivy from attacking Gotham City.', 38.279, '/cGRDufDDSrFrv7VI4YnmWnslne0.jpg', '1997-06-20', NULL, NULL, NULL, NULL, 'Batman & Robin', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(41, 0, '/7eccX0xay9pDj6ZQvU4cu3whw18.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman: The Doom That Came to Gotham', 'Explorer Bruce Wayne accidentally unleashes an ancient evil, and returns to Gotham after being away for two decades. There, Batman battles Lovecraftian supernatural forces and encounters allies and enemies such as Green Arrow, Ra\'s al Ghul, Mr. Freeze, Killer Croc, Two-Face and James Gordon.', 42.117, '/dzPNQXI8FlpXTGGp1082RJ8OQoT.jpg', '2023-03-10', NULL, NULL, NULL, NULL, 'Batman: The Doom That Came to Gotham', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(42, 0, '/sA50fD5aLbYPRU0fMCHIZ88gc5g.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman vs Teenage Mutant Ninja Turtles', 'Batman, Batgirl and Robin forge an alliance with the Teenage Mutant Ninja Turtles to fight against the Turtles\' sworn enemy, The Shredder, who has apparently teamed up with Ra\'s Al Ghul and The League of Assassins.', 30.912, '/yP3h0Pu8htyb9450mWJ9Vu1rU.jpg', '2019-03-31', NULL, NULL, NULL, NULL, 'Batman vs Teenage Mutant Ninja Turtles', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(43, 0, '/niRgVCgvDVxD67u6gjKZnkBO1AD.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman: Gotham Knight', 'A chronicle of Bruce Wayne\'s establishment and progression into Gotham City’s legendary caped crusader through 6 standalone episodes.', 37.325, '/3i1o0sHBP0VUpuSVmkdCRKYoDBC.jpg', '2008-07-08', NULL, NULL, NULL, NULL, 'Batman: Gotham Knight', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(44, 0, '/4xFlvdymCBqyBN8Ab5i69Sgqk7m.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman vs. Two-Face', 'Former Gotham City District Attorney Harvey Dent, one side of his face scarred by acid, goes on a crime spree based on the number \'2\'. All of his actions are decided by the flip of a defaced, two-headed silver dollar.', 27.978, '/yTbj8Kcp4WFwMRdEejnn55KIsfH.jpg', '2017-11-14', NULL, NULL, NULL, NULL, 'Batman vs. Two-Face', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16'),
(45, 0, '/iQJ1gC2p6yn5wnBEklhPaEFJ3n1.jpg', NULL, NULL, NULL, NULL, 'en', 'Batman and Superman: Battle of the Super Sons', 'After discovering he has powers, 11-year-old Jonathan Kent and assassin-turned-Boy-Wonder Damian Wayne must join forces to rescue their fathers (Superman & Batman) and save the planet from the malevolent alien force known as Starro.', 31.719, '/mvffaexT5kA3chOnGxwBSlRoshh.jpg', '2022-10-17', NULL, NULL, NULL, NULL, 'Batman and Superman: Battle of the Super Sons', NULL, NULL, NULL, '2024-03-19 09:28:16', '2024-03-19 09:28:16');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'ErikAdmin', '1erikmark@gmail.com', NULL, '$2y$12$e8Opsfntm37pGS1VncH/4eQfvCycTFNJCwmwdo9/JTVQdmBmSUWd.', NULL, '2024-03-14 08:30:25', '2024-03-14 08:30:25');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
