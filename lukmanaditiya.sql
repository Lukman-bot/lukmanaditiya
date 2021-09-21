-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2021 pada 09.35
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lukmanaditiya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lagu`
--

CREATE TABLE `lagu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lagu`
--

INSERT INTO `lagu` (`id`, `title`, `seo_title`, `content`, `photo`, `is_active`, `date`) VALUES
(1, 'Akon - Lonely', 'akon-lonely', 'lonely, I\'m Mr. Lonely<br>\r\nI have nobody for my own<br>\r\nI\'m so lonely, I\'m Mr. Lonely<br>\r\nI have nobody for my own<br>\r\nI\'m so lonely<br>\r\n<br>\r\nYo! This one here<br>\r\nGoes out to all my players out there man, ya know<br>\r\nThat got that one good girl who\'s always been there man, like<br>\r\nTook all the bullshit<br>\r\nBut then one day she can\'t take it no more and decide to leave<br>\r\nYeah<br>\r\n<br>\r\nI woke up in the middle of the night<br>\r\nAnd I noticed my girl wasn\'t by my side<br>\r\nCoulda sworn I was dreaming, for her I was feenin\'<br>\r\nSo I had to take a little ride<br>\r\n<br>\r\nBack tracking over these few years<br>\r\nTryna figure out what I do to make it go bad<br>\r\n\'Cause ever since my girl left me<br>\r\nMy whole life came crashing and I\'m so<br>\r\n<br>\r\nLonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own girl (To call my own girl)<br>\r\nI\'m so lonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own girl)<br>\r\n<br>\r\nCan\'t believe I had girl like you<br>\r\nAnd I just let you walk right outta my life<br>\r\nAfter all I put you through<br>\r\nYou still stuck around and stayed by my side<br>\r\n<br>\r\nWhat really hurt me is i broke your heart<br>\r\nBaby you a good girl<br>\r\nAnd I had no right<br>\r\nI really wanna make things right<br>\r\n\'Cause without tou in my life girl I\'m so<br>\r\n<br>\r\nLonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own girl)<br>\r\nI\'m so lonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own baby)<br>\r\n<br>\r\nBeen all about the world ain\'t never met a girl<br>\r\nThat could take the things that you been through<br>\r\nNever thought the day would come where you would get up and run<br>\r\nAnd I would be out chasing you<br>\r\n<br>\r\n\'Cause ain\'t nowhere in the globe I\'d rather be<br>\r\nAin\'t no one in the globe I\'d rather see<br>\r\nThan the girl of my dreams that made me be<br>\r\nSo happy but now so lonely<br>\r\n<br>\r\nLonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own no)<br>\r\nI\'m so lonely (So Lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own girl)<br>\r\nLonely<br>\r\n<br>\r\nNever thought that I\'d be alone (Be alone)<br>\r\nI didn\'t think you\'d be gone this long (Gone so long)<br>\r\nI just want you to call my phone<br>\r\nStop playing girl and come on home (Come on home)<br>\r\nBaby girl, I didn\'t mean to shout<br>\r\nI want me and you yo work it out (Work it out baby)<br>\r\nI\'d never wish to ever hurt my baby<br>\r\nAnd it\'s driving me crazy \'cause I\'m so<br>\r\n<br>\r\nLonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own no)<br>\r\nI\'m so lonely (So lonely)<br>\r\nI\'m Mr. Lonely (Mr. Lonely)<br>\r\nI have nobody (I have nobody)<br>\r\nFor my own (To call my own girl)<br>\r\n<br>\r\nI am so lonely<br>\r\nSo lonely (Lonely)<br>\r\nSo lonely (So lonely)<br>\r\nMr. Lonely (Lonely)<br>\r\nSo lonely (So lonely)<br>\r\nSo lonely (Lonely)<br>\r\nSo lonely (So lonely)<br>\r\nSo lonely<br>\r\nMr. Lonely', 'akon-lonely-20210627213915.jpg', 'Y', '2021-06-27'),
(2, 'Take Me to Church', 'take-me-to-church', 'My lover\'s got humor<br>\r\nShe\'s the giggle at a funeral<br>\r\nKnows everybody\'s disapproval<br>\r\nI should\'ve worshiped her sooner<br>\r\nIf the Heavens ever did speak<br>\r\nShe\'s the last true mouthpiece<br>\r\nEvery Sunday\'s getting more bleak<br>\r\nA fresh poison each week<br>\r\n\"We were born sick\", you heard them say it<br>\r\nMy church offers no absolutes<br>\r\nShe tells me, \"Worship in the bedroom\"<br>\r\nThe only Heaven I\'ll be sent to<br>\r\nIs where I\'m alone with you<br>\r\nI was born sick, but I love it<br>\r\nCommand me to be well<br>\r\nA-, Amen, Amen, Amen<br>\r\n<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins and you can sharpen your knife<br>\r\nOffer me that deathless death<br>\r\nGood God, let me give you my life<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins and you can sharpen your knife<br>\r\nOffer me that deathless death<br>\r\nGood God, let me give you my life<br>\r\n<br>\r\nIf I\'m a pagan of the good times<br>\r\nMy lover\'s the sunlight<br>\r\nTo keep the Goddess on my side<br>\r\nShe demands a sacrifice<br>\r\nDrain the whole sea<br>\r\nGet something shiny<br>\r\nSomething meaty for the main course<br>\r\nThat\'s a fine looking high horse<br>\r\nWhat you got in the stable?<br>\r\nWe\'ve a lot of starving faithful<br>\r\nThat looks tasty<br>\r\nThat looks plenty<br>\r\nThis is hungry work<br>\r\n<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins so you can sharpen your knife<br>\r\nOffer me my deathless death<br>\r\nGood God, let me give you my life<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins so you can sharpen your knife<br>\r\nOffer me my deathless death<br>\r\nGood God, let me give you my life<br>\r\n<br>\r\nNo masters or kings when the ritual begins<br>\r\nThere is no sweeter innocence than our gentle sin<br>\r\nIn the madness and soil of that san earthly scene<br>\r\nOnly then I am human<br>\r\nOnly then I am clean<br>\r\nOh, oh, Amen, Amen, Amen<br>\r\n<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins and you can sharpen your knife<br>\r\nOffer me that deathless death<br>\r\nGood God, let me give you my life<br>\r\nTake me to church<br>\r\nI\'ll worship like a dog at the shrine of your lies<br>\r\nI\'ll tell you my sins and you can sharpen your knife<br>\r\nOffer me that deathless death<br>\r\nGood God, let me give you my life', 'take-me-to-church-20210627220208.jpeg', 'Y', '2021-06-27'),
(3, 'bruno mars - it will rain', 'bruno-mars-it-will-rain', 'If you ever leave me, baby<br>\r\nLeave some morphine at my door<br>\r\n\'Cause it would take a whole lot of medication<br>\r\nTo realize what we used to have<br>\r\nWe don\'t have it anymore<br>\r\n<br>\r\nThere\'s no religion that could save me<br>\r\nNo matter how long my knees are on the floor (oh)<br>\r\nSo keep in mind all the sacrifices I\'m makin\'<br>\r\nTo keep you by my side<br>\r\nTo keep you from walkin\' out the door<br>\r\n<br>\r\n\'Cause there\'ll be no sunlight<br>\r\nIf I lose you, baby<br>\r\nThere\'ll be no clear skies<br>\r\nIf I lose you, baby<br>\r\nJust like the clouds<br>\r\nMy eyes will do the same if you walk away<br>\r\nEveryday it\'ll rain, rain, ra-a-a-ain<br>\r\n<br>\r\nI\'ll never be your mother\'s favorite<br>\r\nUh, your daddy can\'t even look me in the eye<br>\r\nOoh, if I was in their shoes, I\'d be doing the same thing<br>\r\nSayin\', \"There goes my little girl<br>\r\nWalkin\' with that troublesome guy\"<br>\r\n<br>\r\nBut they\'re just afraid of something they can\'t understand<br>\r\nOoh, but little darlin\' watch me change their minds<br>\r\nYeah for you I\'ll try, I\'ll try, I\'ll try, I\'ll try<br>\r\nAnd pick up these broken pieces \'til I\'m bleeding<br>\r\nIf that\'ll make you mine<br>\r\n<br>\r\n\'Cause there\'ll be no sunlight<br>\r\nIf I lose you, baby<br>\r\nThere\'ll be no clear skies<br>\r\nIf I lose you baby<br>\r\nJust like the clouds<br>\r\nMy eyes will do the same if you walk away<br>\r\nEveryday it\'ll rain, rain, ra-a-a-ain<br>\r\n<br>\r\nOh, don\'t you say (don\'t you say) goodbye (goodbye)<br>\r\nDon\'t you say (don\'t you say) goodbye (goodbye)<br>\r\nI\'ll pick up these broken pieces \'tll I\'m bleeding<br>\r\nIf that\'ll make it right<br>\r\n<br>\r\n\'Cause there\'ll be no sunlight<br>\r\nIf I lose you, baby<br>\r\nAnd there\'ll be no clear skies<br>\r\nIf I lose you, baby<br>\r\nAnd just like the clouds<br>\r\nMy eyes will do the same if tou walk away<br>\r\nEveryday it\'ll rain, rain, ra-a-a-ain', 'bruno-mars-it-will-rain-20210627222331.jpeg', 'Y', '2021-06-27'),
(4, 'Saybia - The Second You Sleep', 'saybia-the-second-you-sleep', 'You close your eyes<br>\r\nAnd leave me naked by your side<br>\r\nYou close the door so I can\'t see<br>\r\nThe love you keep inside<br>\r\nThe love you keep for me<br>\r\n<br>\r\nIt fills me up<br>\r\nIt feels like living in a dream<br>\r\nIf fills me up so I can\'t see<br>\r\nThe love you keep inside<br>\r\nThe love you keep for me<br>\r\n<br>\r\nI stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\nIt gives me time to stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\nI wish by God you\'d stay<br>\r\n<br>\r\nI stay awake<br>\r\nI stay awake and watch you breathe<br>\r\nI stay awake and watch you fly<br>\r\nAway into the night<br>\r\nEscaping through a dream<br>\r\n<br>\r\nI stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\nIt gives me time to stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\nI wish by God you\'d stay<br>\r\n<br>\r\nHey<br>\r\nStay<br>\r\n<br>\r\nI stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\n<br>\r\nIt gives me time to stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\n<br>\r\nIt gives me time to stay<br>\r\nTo watch you fade away<br>\r\nI dream of you tonight<br>\r\nTomorrow you\'ll be gone<br>\r\nI wish by God you\'d stay<br>\r\n<br>\r\nStay awake<br>\r\nStay<br>\r\nStay<br>\r\nI wish by God you\'d stay', 'saybia-the-second-you-sleep-20210628123520.jpeg', 'Y', '2021-06-28'),
(5, 'My Chemical Romance - I Don\'t Love You', 'my-chemical-romance-i-don-t-love-you', 'Well, when you go<br>\r\nDon\'t ever think I\'ll make you try to stay<br>\r\nAnd maybe when you get back<br>\r\nI\'ll be off to find another way<br>\r\n<br>\r\nAnd after all this time that you still owe<br>\r\nYou\'re still the good-for-nothing, I don\'t know<br>\r\nSo take your gloves and get out<br>\r\nBetter get out<br>\r\nWhile you can<br>\r\n<br>\r\nWhen you go<br>\r\nAnd would you even turn ti say<br>\r\nI don\'t love you<br>\r\nLike I did<br>\r\nYesterday<br>\r\n<br>\r\nSometimes I cry so hard from pleading<br>\r\nSo sick and tired of all the needless beating<br>\r\nBut baby when they knock you<br>\r\nDown and out<br>\r\nIt\'s where you oughta stay<br>\r\n<br>\r\nAnd after all the blood that you still owe<br>\r\nAnother dollar\'s just another blow<br>\r\nSo fix your eyes and get up<br>\r\nBetter get up<br>\r\nWhile you can<br>\r\nWhoa, whoa<br>\r\n<br>\r\nWhen you go<br>\r\nAnd would you even turn to say<br>\r\nI don\'t love you<br>\r\nLike I did<br>\r\nYesterday<br>\r\nWell come on, come on<br>\r\n<br>\r\nWhen you go<br>\r\nWould you have the guts to say<br>\r\nI don\'t love you<br>\r\nLike I loved you yesterday<br>\r\n<br>\r\nI don\'t love you<br>\r\nLike I loved you<br>\r\nYesterday<br>\r\nI don\'t love you<br>\r\nLike I loved you<br>\r\nYesterday', 'my-chemical-romance-i-dont-love-you-20210628153500.jpeg', 'Y', '2021-06-28'),
(6, 'My Chemical Romance - Welcome to the Black Parade', 'my-chemical-romance-welcome-to-the-black-parade', 'When I was a young boy<br>\r\nMy father took me into the city<br>\r\nTo see a marching band<br>\r\n<br>\r\nHe said, \"Son, when you grow up<br>\r\nWould you be the savior of the broken<br>\r\nThe beaten and the dammed?\"<br>\r\n<br>\r\nHe said, \"Will you defeat them?<br>\r\nYour demons, and all the non-believers<br>\r\nThe plans that they have made?\"<br>\r\n<br>\r\n\"Because one day, I\'ll leave you a phantom<br>\r\nTo lead you in the summer<br>\r\nTo join the black parade\"<br>\r\n<br>\r\nWhen I was a young boy<br>\r\nMy father took me into the city<br>\r\nTo see a marching band<br>\r\n<br>\r\nHe said, \"Son, when you grow up<br>\r\nWould you be the savior of the broken<br>\r\nThe beaten and the dammed?\"<br>\r\n<br>\r\nSometimes I get feelin\'<br>\r\nShe\'s watchin\' over me<br>\r\nAnd other times I feel like I should go<br>\r\nAnd through it all, the rise and fall<br>\r\nThe bodies in the streets<br>\r\nAnd when you\'re gone, we want you all to know<br>\r\n<br>\r\nWe\'ll carry on, we\'ll carry on<br>\r\nAnd though you\'re dead and gone, believe me<br>\r\nYour memory will carry on<br>\r\nWe\'ll carry on<br>\r\nAnd in my heart, I can\'t contain it<br>\r\nThe anthem won\'t explain it<br>\r\n<br>\r\nA world that sends you reelin\'<br>\r\nFrom decimated dreams<br>\r\nYour misery and hate will kill us all<br>\r\nSo paint it black and take it back<br>\r\nLet\'s shout it loud and clear<br>\r\nDefiant to the end, we hear the call<br>\r\n<br>\r\nTo carry on, we\'ll carry on<br>\r\nAnd though you\'re dead and gone, believe me<br>\r\nYour memory will carry on<br>\r\n<br>\r\nWe\'ll carry on<br>\r\nAnd though you\'re broken and defeated<br>\r\nYour weary widow marches<br>\r\n<br>\r\nOn and on, we carry through the fears<br>\r\nOh, oh, oh<br>\r\nDisappointed faces of your peers<br>\r\nOh, oh, oh<br>\r\nTake a look at me, \'cause I could not care at all<br>\r\n<br>\r\nDo or die, you\'ll never make me<br>\r\nBecause the world will never take my heart<br>\r\nGo and try, you\'ll never break me<br>\r\nWe want it all, we wanna play this part<br>\r\n<br>\r\nI won\'t explain or say I\'m sorry<br>\r\nI\'m unashamed, I\'m gonna show my scars<br>\r\nGive a cheer for all the broken<br>\r\nListen here, because it\'s who we are<br>\r\n<br>\r\nI\'m just a man, I\'m not a hero<br>\r\nJust a boy, who had to sing this song<br>\r\nI\'m just a man, I\'m not a hero<br>\r\nI don\'t care<br>\r\n<br>\r\nWe\'ll carry on, we\'ll carry on<br>\r\nAnd though you\'re dead and gone, believe me<br>\r\nYour memory will carry on<br>\r\n<br>\r\nYou\'ll carry on<br>\r\nAnd though you\'re broken and defeated<br>\r\nYour weary widow marches, oh<br>\r\n<br>\r\nDo or die, you\'ll never make me<br>\r\nBecause the world will never take my heart<br>\r\nGo and try, you\'ll never break me<br>\r\n<br>\r\nWe want it all, we wanna play this part (we\'ll carry on!)<br>\r\nDo or die, you\'ll never make me<br>\r\nBecause the world will never take my heart<br>\r\n<br>\r\nGo and try, you\'ll never break me<br>\r\nWe want it all, we wanna play this part (we\'ll carry on!)', 'my-chemical-romance-welcome-to-the-black-parade-20210628155611.jpeg', 'Y', '2021-06-28'),
(7, 'My Chemical Romance - Disenchanted', 'my-chemical-romance-disenchanted', 'Well I was there on the day<br>\r\nThey sold the cause for the queen<br>\r\nAnd when the lights all went out<br>\r\nWe watched our lives on the screen<br>\r\nI hate the ending myself<br>\r\nBut it started with an alright scene<br>\r\n<br>\r\nIt was the roar of the crowd<br>\r\nThat gave me heartache to sing<br>\r\nIt was a lie when they smiled<br>\r\nAnd said, you won\'t feel a thing<br>\r\nAnd as we ran from the cops<br>\r\nWe laughed so hard it would sting<br>\r\n<br>\r\nYeah yeah, oh<br>\r\n<br>\r\nIf I\'m so wrong (so wrong, so wrong)<br>\r\nHow can you listen all night log? (night long, night long)<br>\r\nNow will it mater after I\'m gone?<br>\r\nBecause you never learn a goddam thing<br>\r\n<br>\r\nYou\'re just a sad song with nothing to say<br>\r\nAbout a life long wait for a hospital stay<br>\r\nAnd if you think that I\'m wrong<br>\r\nThis never meant nothing to ya<br>\r\n<br>\r\nSo go, go away, just go, run away<br>\r\nBut where did you run to, and where did you hide?<br>\r\nGo find another way, price you pay<br>\r\n<br>\r\nWhoa, whoa, whoa, whoa, whoa, whoa<br>\r\n<br>\r\nYou\'re just a sad song with nothing to say<br>\r\nAbout a life long wait for hospital stay<br>\r\nAnd if you think that I\'m wrong<br>\r\nThis never meant nothing to ya<br>\r\n<br>\r\nYou\'re just a sad song with nothing to say<br>\r\nAbout a life long wait for a hospital stay<br>\r\nAnd if you think that I\'m wrong<br>\r\nThis never meant nothing to ya<br>\r\n<br>\r\nAt all, at all, at all, at all', 'my-chemical-romance-disenchanted-20210628162806.png', 'Y', '2021-06-28'),
(8, 'My Chemical Romance - Na Na Na', 'my-chemical-romance-na-na-na', 'The future is bulletproof<br>\r\nThe aftermath is secondary<br>\r\nIt\'s time to do it now and do it loud<br>\r\nKilljoys, make some noise<br>\r\nNa, na-na, na-na, na-na, na-na<br>\r\nNa, na-na, na-na, na-na<br>\r\nNa-na, na-na, na-na<br>\r\n<br>\r\nDrugs, gimme drugs, gimme drugs<br>\r\nI don\'t need it, but I\'ll sell what you got<br>\r\nTake the cash and I\'ll keep it<br>\r\nEight legs to the wall<br>\r\nHit the gas, kill \'em all<br>\r\nAnd we crawl, and we crawl, and we crawl<br>\r\nYou be my detonator<br>\r\n<br>\r\nLove, gimme love, gimme love<br>\r\nI don\'t need it, but I\'ll take what I want from your heart<br>\r\nAnd I\'ll keep it in a bag, in a box<br>\r\nPut an \"X\" on the floor<br>\r\nGimme more, gimme more, gimme more<br>\r\nShut up and sing it with me<br>\r\n<br>\r\nFrom mall security<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nTo every enemy<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nWe\'re on your property<br>\r\nStanding in V formation<br>\r\n<br>\r\nLet\'s blow an artery<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nEat plastic surgery<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nKeep your apology<br>\r\nGive us more detonation<br>\r\nMore, gimme more, gimme more<br>\r\n<br>\r\nOh, let me tell you \'bout the sad man<br>\r\nShut up and let me see your jazz hands<br>\r\nRemember when you were a madman<br>\r\nThought you was Batman<br>\r\nAnd hit the party wit a gas can<br>\r\nKiss me. you animal<br>\r\n<br>\r\nYou run the company<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nFuck like a Kennedy<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nI think we\'d rather be<br>\r\nBurning your information<br>\r\n<br>\r\nLet\'s blow an artery<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nEat plastic surgery<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nKeep your apology<br>\r\nGive us more detonation<br>\r\n<br>\r\nAnd right here<br>\r\nRight now<br>\r\nAll the way in Battery City<br>\r\nThe little children<br>\r\nRaise their open filthy palms<br>\r\nLike tiny daggers up to heaven<br>\r\n<br>\r\nAnd all the juvie halls<br>\r\nAnd the Ritalin rats<br>\r\nAsk angels made from neon<br>\r\nAnd fucking garbage<br>\r\nScream out, \"What will save us?\"<br>\r\nAnd the sky opened up<br>\r\n<br>\r\nEverybody wants to change the world<br>\r\nEverybody wants to change the world<br>\r\nBut no one, no one wants to die<br>\r\nWanna try, wanna try, wanna try<br>\r\nWanna try, wanna try, now<br>\r\nI\'ll be your detonator<br>\r\n<br>\r\nMake no apology<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nIt\'s death or victory<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nOn my authority<br>\r\nCrash and burn, young and loaded<br>\r\n<br>\r\nDrop like a bullet shell<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nDress like a sleeper cell<br>\r\n(Na, na-na, na-na, na-na)<br>\r\nI\'d rather go to hell<br>\r\n<br>\r\nThan be in purgatory<br>\r\nCut my hair<br>\r\nGag and bore me<br>\r\nPull this pin<br>\r\nLet this world explode', 'my-chemical-romance-na-na-na-20210628193720.jpeg', 'Y', '2021-06-28'),
(9, 'Green Day - 21 Guns', 'green-day-21-guns', 'Do you know what\'s worth fighting fur<br>\r\nWhen it\'s not worth dying for?<br>\r\nDoes it take your breath away<br>\r\nAnd you feel yourself suffocating?<br>\r\nDoes the pain weigh out the pride?<br>\r\nAnd you look for place to hide?<br>\r\nDid someone break your heart inside?<br>\r\nYou\'re in ruins<br>\r\n<br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br>\r\n<br>\r\nWhen you\'re at the end of the road<br>\r\nAnd you lost all sense of control<br>\r\nAnd your thoughts have taken their toll<br>\r\nWhen your mind breaks the spirit or your soul<br>\r\nYour faith walks on broken glass<br>\r\nAnd the hangover doesn\'t pass<br>\r\nNothing\'s ever built to last<br>\r\nYou\'re in ruins<br>\r\n<br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br>\r\n<br>\r\nDid you try to live on your own<br>\r\nWhen you burned down the house and home?<br>\r\nDid you stand too close to the fire?<br>\r\nLike a liar looking for forgiveness from a stone<br>\r\n<br>\r\nWhen it\'s time to live and let die<br>\r\nAnd you can\'t get another try<br>\r\nSomething inside this heart has died<br>\r\nYou\'re in ruins<br>\r\n<br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\n<br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I', 'green-day-21-guns-20210628195401.jpeg', 'Y', '2021-06-28'),
(10, 'Ricky Montgomery - Line Without a Hook', 'ricky-montgomery-line-without-a-hook', 'I don\'t really give a damn about the way you touch me<br>\r\nWhen we\'re alone<br>\r\nYou can hold my hand<br>\r\nIf no one\'s home<br>\r\nDo you like it when I\'m away?<br>\r\nIf I went and hurt my body, baby<br>\r\nWould you love me the same?<br>\r\nI can feel all my bones coming back<br>\r\nAnd I\'m craving motion<br>\r\nMama never really learns how to live by herself<br>\r\nIt\'s a curse<br>\r\nAnd it\'s growing<br>\r\nYou\'re a pond and I\'m an ocean<br>\r\nOh, all my emotions<br>\r\nFeel like explosions when you are around<br>\r\nAnd I\'ve found a way to kill the sounds, oh<br>\r\n<br>\r\nOh, baby, I am a wreck when I\'m without you<br>\r\nI need you here to stay<br>\r\nI broke all my bones that day I found you<br>\r\nCrying at the lake<br>\r\nWas it something I said to make you feel like you\'re a burden?<br>\r\nOh, and if I could take it all back<br>\r\nI swear that I would pull you from the tide<br>\r\n<br>\r\nOh, whoa, whoa, whoa<br>\r\nI said no (I said no), I said no (I said no)<br>\r\nListen close, it\'s a no<br>\r\nThe wind is a-pounding on my back<br>\r\nAnd I found hope in a heart attack<br>\r\nOh at last, it is past<br>\r\nNow I\'ve got it, and you can\'t have it<br>\r\n<br>\r\nBaby, I am wreck when I\'m without you<br>\r\nI need you here to stay<br>\r\nI broke all my bones that day I found you<br>\r\nCrying at the lake<br>\r\nWas it something I said to make you feel like you\'re a burden, oh<br>\r\nAnd if I could take it all back<br>\r\nI swear that I would pull you from the tide<br>\r\n<br>\r\nDarling, when I\'m fast asleep<br>\r\nI\'ve seen this person watching me<br>\r\nSaying, \"Is it worth it? Is it worth it? Tell me, is it worth it?\" Oh<br>\r\nGuess there is something, and there is nothing<br>\r\nThere is nothing in between<br>\r\nAnd in my eyes, there is a tiny dancer<br>\r\nWatching over me, he\'s singing, \"She\'s a, she\'s a lady, and I am just a boy\"<br>\r\nHe\'s singing, \"She\'s a, she\'s a lady, and I am just a line without a hook\"<br>\r\n<br>\r\nBaby, I am a wreck when I\'m without you<br>\r\nI need you here to stay<br>\r\nI broke all my bones that day I found you<br>\r\nCrying at the lake<br>\r\nWas it something I said to make you feel like you\'re a burden, oh<br>\r\nAnd if I could take it all back<br>\r\nI swear that I would pull you from the tide', 'ricky-montgomery-line-without-a-hook-20210628200927.jpeg', 'Y', '2021-06-28'),
(11, 'The Script - The Man Who Can\'t Be Moved', 'the-script-the-man-who-can-t-be-moved', 'Going back to the corner where I first saw you<br>\r\nGonna camp in my sleeping bag I\'m not gonna move<br>\r\nGot some words on cardboard, got your picture in my hand<br>\r\nSaying, \"If you see this girl can you tell her where I am?\"<br>\r\n<br>\r\nSome try to hand me money, they don\'t understand<br>\r\nI\'m not broke - I\'m just a broken-hearted man<br>\r\nI know it makes no sense but what else can I do?<br>\r\nHow can I move on when I\'m still in love with you?<br>\r\n<br>\r\n\'Cause if one day you wake up and find that you\'re missing me<br>\r\nAnd your heart starts to wonder where on this earth I could be<br>\r\nThinking maybe you\'ll come back here to the place that we\'d meet<br>\r\nAnd you\'ll see me waiting for you on the corner of the street<br>\r\n<br>\r\nSo I\'m not moving, I\'m not moving<br>\r\n<br>\r\nPoliceman says, \"Son, you can\'t stay here.\"<br>\r\nI said, \"There\'s someone I\'m waiting for if it\'s a day, a month, a year.<br>\r\nGotta stand my ground even if it rains or snows.<br>\r\nIf she changes her mind this is the first place she will go.\"<br>\r\n<br>\r\n\'Cause if one day you wake up and find that you\'re missing me<br>\r\nAnd your heart starts to wonder where on this earth I could be<br>\r\nThinking maybe you\'ll come back here to the place that we\'d meet<br>\r\nAnd you\'ll see me waiting for you on the corner of the street<br>\r\n<br>\r\nSo I\'m not moving, I\'m not moving,<br>\r\nI\'m not moving, I\'m not moving<br>\r\n<br>\r\nPeople talk about the guy that\'s waiting on a girl, oh ohh<br>\r\nThere are no holes in his shoes but a big hole in his world, hmm<br>\r\n<br>\r\nAnd maybe I\'ll get famous as the man can\'t be moved<br>\r\nMaybe you won\'t mean to but you\'ll see me on the news<br>\r\nAnd you\'ll come running to the corner<br>\r\n\'Cause you\'ll know it\'s just for you<br>\r\nI\'m the man who can\'t be moved<br>\r\nI\'m the man who can\'t be moved<br>\r\n<br>\r\n\'Cause if one day you wake up and find that you\'re missing me<br>\r\nAnd your heart starts to wonder where on this earth I could be<br>\r\nThinking maybe you\'ll come back here to the place that we\'d meet<br>\r\nAnd you\'ll see me waiting for you on the corner of the street<br>\r\n<br>\r\n\'Cause if one day you wake up and find that you\'re missing me<br>\r\n(So I\'m not moving)<br>\r\nAnd your heart starts to wonder where on this earth I could be<br>\r\n(I\'m not moving)<br>\r\nThinking maybe you\'ll come back here to the place that we\'d meet<br>\r\n(I\'m not moving)<br>\r\nAnd you\'ll see me waiting for you on the corner of the street<br>\r\n(I\'m not moving)<br>\r\n<br>\r\nGoing back to the corner where I first saw you<br>\r\nGonna camp in my sleeping bag, I\'m not gonna move', 'the-script-the-man-who-cant-be-moved-20210628204806.jpeg', 'Y', '2021-06-28'),
(12, 'The Script - Hall of Fame', 'the-script-hall-of-fame', 'Yeah, you can be the greatest, you can be the best<br>\r\nYou can be the King Kong bangin\' on your chest<br>\r\nYou can beat the world, you can beat the war<br>\r\nYou can talk to God, go bangin\' on his door<br>\r\n<br>\r\nYou can throw your hands up, you can beat the clock (Yeah)<br>\r\nYou can move a mountain, you can break rocks<br>\r\nSome will call it practice, some will call it luck<br>\r\nBut either way you\'re going to the history book<br>\r\n<br>\r\nStandin\' in the Hall of Fame (Yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah)<br>\r\n\'Cause you burn with the brightest flame (Yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah)<br>\r\nAnd you\'ll be on the walls of the Hall of Fame<br>\r\n<br>\r\nYou can go the distance, you can run the mile<br>\r\nYou can walk straight through hell with a smile<br>\r\nYou can be a hero, you can get the gold<br>\r\nBreakin\' all the records they thought never could be broke (Yeah)<br>\r\n<br>\r\nDo it for your people, do it for your pride<br>\r\nHow you ever gonna know if you never even try?<br>\r\nDo it for your country, do it for your name<br>\r\n\'Cause there\'s gon\' be a day, when you\'re<br>\r\n<br>\r\nStandin\' in the Hall of Fame (Yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah)<br>\r\n\'Cause you burn with the brightest flame (Yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah)<br>\r\nAnd you\'ll be on the walls of the Hall of Fame<br>\r\n<br>\r\nOn the wall of the Hall of Fame<br>\r\n<br>\r\nBe students, be teachers<br>\r\nBe politicians, be preachers<br>\r\nYeah<br>\r\n<br>\r\nBe believers, be leaders<br>\r\nBe astronauts, be champions<br>\r\nBe truth-seekers<br>\r\n<br>\r\nBe students, be teachers<br>\r\nBe politician, be preachers<br>\r\nYeah<br>\r\n<br>\r\nBe believers, be leaders<br>\r\nBe astronauts, be champions<br>\r\n<br>\r\nStanding in the Hall of Fame (Yeah, yeah, yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah, yeah, yeah)<br>\r\n\'Cause you burn with the brightest flame (Yeah, yeah, yeah)<br>\r\nAnd the world\'s gonna know your name (Yeah, yeah, yeah)<br>\r\nAnd you\'ll be on the walls of the hall of fame<br>\r\n<br>\r\nYou could be the greatest, you can be the best<br>\r\nYou can be the King Kong bangin on your chest<br>\r\n<br>\r\nYou could beat the world, you could beat the war<br>\r\nYou could talk to God, go banging on his door<br>\r\nYou can throw your hands up, you can beat the clock<br>\r\nYou can move a mountain, you can break rocks<br>\r\n<br>\r\nSome will call it practice, some will call it luck<br>\r\nBut either way you\'re going to the history books<br>\r\n<br>\r\nStanding in the Hall of Fame', 'the-script-hall-of-fame-20210628210503.jpeg', 'Y', '2021-06-28'),
(13, 'Scorpions - Always Somewhere', 'scorpions-always-somewhere', 'Arrive at seven the place feels good<br>\r\nNo time to call you today<br>\r\nEncores till eleven then Chinese food<br>\r\nBack to the hotel again<br>\r\n<br>\r\nI call your number the line ain\'t free<br>\r\nI like to tell you come to me<br>\r\nA night without you seems like a lost dream<br>\r\nLove I can\'t tell you how I feel<br>\r\n<br>\r\nAlways somewhere<br>\r\nMiss you where I\'ve been<br>\r\nI\'ll be back to love you again<br>\r\n<br>\r\nAlways somewhere<br>\r\nMiss you where I\'ve been<br>\r\nI\'ll be back to love you again<br>\r\n<br>\r\nAnother morning another place<br>\r\nThe only day off is far away<br>\r\nBut every city has seen me in the end<br>\r\nAnd brings me to you again<br>\r\n<br>\r\nAlways somewhere<br>\r\nMiss you where I\'ve been<br>\r\nI\'ll be back to love you again<br>\r\n<br>\r\nAlways somewhere<br>\r\nMiss you where I\'ve been<br>\r\nI\'ll be back to love you again<br>', 'scorpions-always-somewhere-20210628211414.jpeg', 'Y', '2021-06-28'),
(14, 'Scorpions - Still Loving You', 'scorpions-still-loving-you', 'Time<br>\r\nIt needs time<br>\r\nTo win back your love again<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nLove<br>\r\nOnly love<br>\r\nCan bring back your love someday<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nFight<br>\r\nBabe, I\'ll fight<br>\r\nTo win back your love again<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nLove<br>\r\nOnly love<br>\r\nCan bring down the wall someday<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nIf we\'d go again<br>\r\nAll the way from the start<br>\r\nI would try to change<br>\r\nThe things that killed our love<br>\r\nPride has built a wall, so strong<br>\r\nThat I can\'t get through<br>\r\nIs there really no chance<br>\r\nTo start once again?<br>\r\nI\'m loving you<br>\r\n<br>\r\nTry<br>\r\nBaby, try<br>\r\nTo trust in my love again<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nLove<br>\r\nOur love<br>\r\nJust shouldn\'t be thrown away<br>\r\nI will be there<br>\r\nI will be there<br>\r\n<br>\r\nIf we\'d go again<br>\r\nAll the way from the start<br>\r\nI would try to change<br>\r\nThe things that killed our love<br>\r\nPride has built a wall, so strong<br>\r\nThat I can\'t get through<br>\r\nIs there really no chance<br>\r\nTo start one again?<br>\r\n<br>\r\nIf we\'d go again<br>\r\nAll the way from the start<br>\r\nI would try to change<br>\r\nThe things that killed our love<br>\r\nYes, I\'ve hurt your pride and I know<br>\r\nWhat you\'ve been through<br>\r\nYou should give me a chance<br>\r\nThis can\'t be the end<br>\r\n<br>\r\nI\'m still loving you<br>\r\nI\'m still loving you<br>\r\nI\'m still loving you<br>\r\nI need your love<br>\r\nI\'m still loving you<br>\r\nStill loving you, baby<br>\r\n<br>\r\nI\'m still loving you<br>\r\nI need your love<br>\r\nI\'m still loving you<br>\r\nI need your love<br>\r\nHoo!<br>\r\n<br>\r\nI\'m still loving you<br>\r\nI need your love<br>\r\nHoo!<br>\r\n<br>\r\nI need your love', 'scorpions-still-loving-you-20210628212604.jpeg', 'Y', '2021-06-28'),
(15, 'Scorpions - Wind Of Change', 'scorpions-wind-of-change', 'Follow the Moskva<br>\r\nDown to Gorky Park<br>\r\nListening to the wind of change<br>\r\nAn August summer night<br>\r\nSoldiers passing by<br>\r\n<br>\r\nListening to the wind of change<br>\r\nThe world is closing in<br>\r\nDid you ever think<br>\r\nThat we could be so close, like brothers<br>\r\n<br>\r\nThe future\'s in the air<br>\r\nCan feel it everywhere<br>\r\nBlowing with the wind of change<br>\r\n<br>\r\nTake me to the magic of the moment<br>\r\nOn a glory night<br>\r\nWhere the children of tomorrow dream away<br>\r\nIn the wind of change<br>\r\n<br>\r\nWalking down the street<br>\r\nDistant memories<br>\r\nAre buried in the past, forever<br>\r\n<br>\r\nI follow the Moskva<br>\r\nDown to Gorky Park<br>\r\nListening to the wind of change<br>\r\n<br>\r\nTake me to the magic of the moment<br>\r\nOn a glory night<br>\r\nWhere the children of tomorrow share their dreams<br>\r\n<br>\r\nWith you and me<br>\r\nTake me to the magic of the moment<br>\r\nOn a glory night<br>\r\nWhere the children of tomorrow dream away<br>\r\nIn the wind of change<br>\r\n<br>\r\nThe wind of change<br>\r\nBlows straight into the face of time<br>\r\nLike a storm wind that will ring the freedom bell<br>\r\nFor peace of mind<br>\r\nLet your balalaika sing<br>\r\nWhat my guitar wants to say<br>\r\n<br>\r\nTake me to the magic of the moment<br>\r\nOn a glory night<br>\r\nWhere the children of tomorrow share their dreams<br>\r\nWith you and me<br>\r\n<br>\r\nTake me to the magic of the moment<br>\r\nOn a glory night<br>\r\nWhere the children of tomorrow dream away<br>\r\nIn the wind of change', 'scorpions-wind-of-change-20210628215913.jpeg', 'Y', '2021-06-28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Pengaturan Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 2, 'Lagu', 'index.php/lagu', 'fas fa-fw fa-song', 'Y'),
(3, 1, 'Manajemen User', 'index.php/user', 'fas fa-fw fa-user', 'Y'),
(4, 2, 'Profile', '', 'fas fa-fw fa-home', 'Y'),
(5, 2, 'Manajemen Media', '', 'fas fa-fw fa-school', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `submenus`
--

INSERT INTO `submenus` (`id`, `menu_id`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 5, 'Banner', 'index.php/banner', 'Y'),
(2, 5, 'Lirik Lagu', 'index.php/liriklagu', 'Y'),
(3, 5, 'Postingan', 'index.php/postingan', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lagu`
--
ALTER TABLE `lagu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lagu`
--
ALTER TABLE `lagu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `submenus`
--
ALTER TABLE `submenus`
  ADD CONSTRAINT `submenus_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
