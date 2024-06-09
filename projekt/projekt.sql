-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 07:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `igraci`
--

CREATE TABLE `igraci` (
  `id` int(10) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `opis` text NOT NULL,
  `full` text NOT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `igraci`
--

INSERT INTO `igraci` (`id`, `ime`, `opis`, `full`, `slika`) VALUES
(15, 'Neymar', 'Neymar, the Brazilian football star, captivates fans worldwide with his exceptional talent and flair on the field. Renowned for his skillful dribbling and goal-scoring ability, Neymar\'s impact transcends the game, solidifying his status as a global icon.', 'In the illustrious world of football, few names shine as brightly as Neymar Jr. Hailing from Brazil, Neymar\'s journey from a young boy kicking a ball on the streets of São Paulo to becoming one of the most celebrated athletes of his generation is nothing short of extraordinary.\r\n\r\nBorn on February 5, 1992, in Mogi das Cruzes, São Paulo, Neymar showed promise from a tender age. His remarkable talent caught the attention of scouts early on, leading to his enrollment in the youth academy of Santos FC, one of Brazil\'s most storied football clubs.\r\n\r\nIt didn\'t take long for Neymar to make his mark on the footballing world. Blessed with lightning-fast footwork, impeccable control, and a keen eye for goal, he quickly rose through the ranks at Santos, dazzling fans with his audacious skillset and scoring prowess.\r\n\r\nNeymar\'s breakthrough came in 2009 when he made his professional debut for Santos at just 17 years old. From that moment on, there was no looking back. With each match, Neymar\'s star continued to rise, earning him comparisons to Brazilian legends like Pelé and Ronaldinho.\r\n\r\nIn 2013, Neymar embarked on a new chapter in his career, joining the ranks of FC Barcelona, one of the most prestigious clubs in Europe. Teaming up with footballing giants like Lionel Messi and Andrés Iniesta, Neymar formed part of the famed \"MSN\" attacking trio, mesmerizing audiences with their telepathic understanding and breathtaking performances.\r\n\r\nDuring his spell at Barcelona, Neymar amassed an impressive collection of titles, including two La Liga titles, three Copa del Rey trophies, and the UEFA Champions League. Individually, he clinched the prestigious Ballon d\'Or nomination, cementing his status as one of the world\'s best players.\r\n\r\nIn 2017, Neymar made headlines around the globe with his record-breaking transfer to Paris Saint-Germain (PSG), becoming the most expensive footballer in history. Despite facing scrutiny for his decision, Neymar continued to shine in the French capital, leading PSG to numerous domestic triumphs while showcasing his unparalleled talent on the pitch.\r\n\r\nOff the field, Neymar\'s influence extends far beyond football. A philanthropist at heart, he actively supports various charitable initiatives, using his platform to make a positive impact on society. Additionally, Neymar\'s charismatic persona and larger-than-life presence have made him a sought-after brand ambassador, with endorsements ranging from sportswear giants to luxury fashion brands.\r\n\r\nAs Neymar continues to etch his name into the annals of football history, his journey serves as a testament to the power of talent, perseverance, and unwavering determination. With each flick of the ball and every goal scored, Neymar inspires millions around the world, proving that greatness knows no bounds.', 'neymar.jpg'),
(16, 'Luka Modrić', 'Luka Modrić, the Croatian midfield maestro, mesmerizes with his impeccable passing and tactical brilliance. Born on September 9, 1985, in Zadar, Croatia, Modrić has left an indelible mark on the football world, captivating fans with his elegant style of play.', 'Luka Modrić, hailed as one of the finest midfielders of his generation, embodies the epitome of football intelligence and finesse. Born on September 9, 1985, in Zadar, Croatia, Modrić\'s journey to football stardom is a testament to his unwavering determination and relentless pursuit of excellence. Rising through the ranks of Croatian football, he made his mark at Dinamo Zagreb before embarking on a remarkable career trajectory that saw him don the jerseys of prestigious clubs such as Tottenham Hotspur and Real Madrid.\r\n\r\nModrić\'s playing style is characterized by his impeccable technique, remarkable vision, and exceptional decision-making on the field. A true orchestrator of play, he orchestrates the tempo of the game with his precise passing and astute positional awareness. His ability to dictate proceedings from midfield has earned him widespread acclaim and admiration from fans and pundits alike.\r\n\r\nOn the international stage, Modrić is the linchpin of the Croatian national team, leading them to unprecedented success. His crowning achievement came in 2018 when he captained Croatia to the FIFA World Cup final, where they showcased resilience and skill, capturing the hearts of football fans worldwide. Modrić\'s stellar performances earned him the prestigious FIFA World Cup Golden Ball, recognizing him as the tournament\'s best player.\r\n\r\nOff the pitch, Modrić\'s humility and professionalism have endeared him to fans across the globe. He is a role model for aspiring footballers, embodying the values of hard work, perseverance, and sportsmanship. Modrić\'s journey from humble beginnings to footballing greatness serves as an inspiration to millions, illustrating the transformative power of passion and dedication in achieving one\'s dreams.\r\n\r\nAs Luka Modrić continues to grace the footballing stage with his elegance and mastery, his legacy as a true icon of the beautiful game is etched in history, leaving an indelible mark on the hearts and minds of football enthusiasts worldwide.', 'luka.jpeg'),
(17, 'Cristiano Ronaldo', 'Cristiano Ronaldo, the Portuguese football icon, dazzles with his exceptional skill and goal-scoring prowess. Born on February 5, 1985, in Funchal, Madeira, Ronaldo has redefined the standards of greatness in football, earning countless accolades and the adoration of fans worldwide.', 'Cristiano Ronaldo, the epitome of footballing greatness, transcends the sport with his extraordinary talent and unrivaled dedication. Born on February 5, 1985, in Funchal, Madeira, Ronaldo\'s journey from humble beginnings to global icon status is a testament to his unparalleled work ethic and relentless pursuit of excellence.\r\n\r\nFrom his early days at Sporting Lisbon to his record-breaking stints at Manchester United, Real Madrid, and Juventus, Ronaldo has consistently pushed the boundaries of what is possible on the football pitch. With his lightning speed, aerial prowess, and lethal finishing ability, he has shattered numerous records and captivated the hearts of fans worldwide.\r\n\r\nRonaldo\'s impact extends far beyond the football field. He is a symbol of perseverance and resilience, overcoming adversity to achieve greatness. His philanthropic efforts, including substantial donations to charitable causes and his vocal advocacy for social issues, further underscore his status as a role model and global ambassador.\r\n\r\nOn the international stage, Ronaldo has led the Portuguese national team to unprecedented success, winning the UEFA European Championship in 2016 and the inaugural UEFA Nations League in 2019. His leadership and unmatched skill have made him a talismanic figure for his country, inspiring a new generation of footballers to dream big and pursue their goals relentlessly.\r\n\r\nOff the pitch, Ronaldo\'s larger-than-life persona and global influence have transcended football, making him one of the most recognizable and influential athletes of all time. Whether breaking goal-scoring records or captivating audiences with his charisma and charm, Ronaldo\'s impact on the world of sports and beyond is truly unparalleled.\r\n\r\nAs Cristiano Ronaldo continues to etch his name in the annals of footballing history, his legacy as one of the greatest players to ever grace the pitch is secure. With each breathtaking goal and inspiring performance, he reminds us all of the boundless possibilities that come with unwavering dedication, passion, and belief in oneself.', 'ronaldo.jpg'),
(18, 'Lionel Messi', 'Lionel Messi, the Argentine football wizard, enchants with his extraordinary skills and unmatched finesse. Born on June 24, 1987, in Rosario, Argentina, Messi\'s mesmerizing talent has earned him a place among the greatest players in history.', 'Lionel Messi, the maestro of modern football, transcends the sport with his unparalleled talent and mesmerizing skill. Born on June 24, 1987, in Rosario, Argentina, Messi\'s journey from a young prodigy to a global icon is a testament to his innate brilliance and unwavering dedication to the beautiful game.\r\n\r\nFrom his early days at Barcelona\'s La Masia academy to becoming the heartbeat of the club\'s legendary team, Messi has redefined the art of playmaking and goal-scoring. With his lightning-quick dribbling, exquisite vision, and clinical finishing, he has captivated audiences worldwide and earned a place among the footballing elite.\r\n\r\nMessi\'s impact extends beyond individual accolades, as he has led Barcelona to numerous domestic and international titles, including multiple UEFA Champions League triumphs and La Liga titles. His ability to influence games and turn the tide in his team\'s favor is a testament to his unmatched talent and footballing intelligence.\r\n\r\nOn the international stage, Messi has carried the hopes of a nation, representing Argentina with distinction in multiple FIFA World Cups and Copa America tournaments. While the ultimate prize has eluded him at the international level, his commitment to his country and his unwavering determination to succeed continue to inspire millions around the world.\r\n\r\nOff the pitch, Messi\'s humility and philanthropic efforts have endeared him to fans globally. Through his foundation and charitable endeavors, he has made a positive impact on countless lives, embodying the values of empathy and compassion.\r\n\r\nAs Lionel Messi continues to mesmerize fans with his magical performances, his legacy as one of the greatest footballers of all time is secure. With each touch of the ball and every goal scored, he reminds us of the beauty and joy that football brings to the world, transcending borders and uniting people from all walks of life.', 'messi.jpg'),
(30, 'Kylian Mbappé', 'French forward celebrated for his speed, agility, and goal-scoring talent. A World Cup winner with France in 2018.', 'Kylian Mbappé Lottin, born on December 20, 1998, in Bondy, France, is considered one of the brightest talents in football. Known for his blistering pace, technical skills, and goal-scoring ability, Mbappé made his mark at AS Monaco, leading them to a Ligue 1 title in 2017. His subsequent move to PSG saw him develop into a world-class player, winning multiple domestic titles and scoring crucial goals in the Champions League. Mbappé\'s standout moment came during the 2018 World Cup, where he played a pivotal role in France\'s triumph, earning accolades and comparisons to legends like Pelé.', 'mbabe.jpeg'),
(31, 'Sergio Ramos', 'Spanish defender recognized for his defensive prowess, leadership, and goal-scoring from set-pieces. A long-time captain of Real Madrid.', 'Sergio Ramos García, born on March 30, 1986, in Camas, Spain, is known for his defensive skills, leadership, and knack for scoring crucial goals, especially in set-piece situations. Ramos spent the majority of his career at Real Madrid, where he won numerous La Liga titles and four Champions League trophies. As captain, he was instrumental in Real Madrid\'s dominance, known for his resilience and tenacity. Ramos\' international career with Spain includes winning the 2010 World Cup and two European Championships. In 2021, he moved to PSG, continuing to bring his experience and leadership to the team.', 'ramos.jpg'),
(32, 'Robert Lewandowski', 'Polish striker famed for his finishing ability, positioning, and consistency. A prolific goal-scorer for Bayern Munich.', 'Robert Lewandowski, born on August 21, 1988, in Warsaw, Poland, is renowned for his prolific goal-scoring record and clinical finishing. Starting his career in Poland, Lewandowski moved to Borussia Dortmund, where he won two Bundesliga titles and reached a Champions League final. In 2014, he joined Bayern Munich, where he has consistently been among the top scorers in Europe. Lewandowski\'s goal-scoring exploits include setting a record for the fastest five goals in a Bundesliga match and winning the FIFA Best Men\'s Player award. His consistency, positioning, and ability to score from various situations make him one of the most feared strikers in the world.', 'leva.webp');

-- --------------------------------------------------------

--
-- Table structure for table `klubovi`
--

CREATE TABLE `klubovi` (
  `id` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `opis` text NOT NULL,
  `full` text NOT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klubovi`
--

INSERT INTO `klubovi` (`id`, `ime`, `opis`, `full`, `slika`) VALUES
(2, 'Real Madrid', 'Real Madrid, founded in 1902, is one of the most successful and popular football clubs in the world, known for its numerous domestic and international titles. The club\'s iconic white kits and star-studded lineup have made it a symbol of excellence and prestige in football.', 'Real Madrid Club de Fútbol, commonly known as Real Madrid, is a professional football club based in Madrid, Spain. Established on March 6, 1902, the club has a storied history and is renowned for its unparalleled success in both domestic and international competitions. Real Madrid has won a record 14 UEFA Champions League titles, making it the most successful club in the history of the tournament. Additionally, the club has secured 35 La Liga titles, 19 Copa del Rey titles, and numerous other domestic and international trophies.\r\n\r\nThe team\'s home ground is the Santiago Bernabéu Stadium, which is one of the most famous and iconic football stadiums in the world. With a seating capacity of over 81,000, it hosts some of the most thrilling and high-stakes matches in football. Real Madrid\'s kit, traditionally all white, has earned them the nickname \"Los Blancos\" (The Whites).\r\n\r\nReal Madrid is also famous for its Galácticos era, characterized by the signing of world-class players such as Zinedine Zidane, Ronaldo, David Beckham, and Cristiano Ronaldo. This strategy of acquiring the best talents globally has not only bolstered the team\'s performance but also enhanced its global brand and marketability.\r\n\r\nOff the field, Real Madrid is a global powerhouse, boasting one of the largest fanbases worldwide and generating significant revenue through sponsorships, merchandise sales, and broadcast rights. The club\'s influence extends beyond football, contributing to various charitable activities and community projects.\r\n\r\nIn summary, Real Madrid\'s legacy is built on a century of excellence, star power, and a relentless pursuit of glory, making it a pillar of football heritage and a source of inspiration for fans around the globe.', 'rmadrid.jpg'),
(3, 'Manchester United', 'Manchester United, founded in 1878, is one of the most iconic and successful football clubs in the world, celebrated for its rich history and numerous trophies. Known as the Red Devils, the club\'s distinctive red jerseys and legendary players have cemented its place in football lore.', 'Manchester United Football Club, commonly known as Manchester United, is a professional football club based in Old Trafford, Greater Manchester, England. Established in 1878 as Newton Heath LYR Football Club, it changed its name to Manchester United in 1902. The club has a rich history and is one of the most successful and popular football teams globally.\r\n\r\nManchester United has won a record 20 English League titles, 12 FA Cups, 6 League Cups, and 3 UEFA Champions League titles, among other accolades. The club\'s home ground is Old Trafford, also known as the \"Theatre of Dreams,\" which has a capacity of approximately 74,000 and is known for its electrifying atmosphere.\r\n\r\nThe club experienced its most successful period under the management of Sir Alex Ferguson, who led the team from 1986 to 2013. Under his leadership, Manchester United dominated English football, winning numerous titles and achieving a historic treble in 1999, consisting of the Premier League, FA Cup, and UEFA Champions League. This era saw the emergence of legendary players such as Eric Cantona, Ryan Giggs, Paul Scholes, and Cristiano Ronaldo.\r\n\r\nManchester United\'s famous red jerseys have become a symbol of the club\'s identity, earning them the nickname \"The Red Devils.\" The club\'s passionate fanbase spans the globe, making it one of the most followed and supported football teams worldwide.\r\n\r\nBeyond the pitch, Manchester United is a commercial giant, boasting lucrative sponsorship deals, extensive merchandise sales, and a vast global fanbase. The club\'s influence extends into popular culture, with a significant presence in media, entertainment, and community initiatives.\r\n\r\nIn summary, Manchester United\'s storied legacy is characterized by its competitive spirit, memorable players, and a commitment to excellence. The club\'s contributions to football history and its enduring global appeal make it a cornerstone of the sport.', 'man.png'),
(4, 'inamo Zagreb', 'Dinamo Zagreb, established in 1945, is the most successful football club in Croatia, known for its dominance in the Croatian league and significant achievements in European competitions. The club\'s iconic blue kits and passionate fanbase make it a symbol of Croatian football pride.', 'GNK Dinamo Zagreb, commonly referred to as Dinamo Zagreb, is a professional football club based in Zagreb, Croatia. Founded on June 9, 1945, Dinamo Zagreb has become the most successful and influential club in Croatian football history. The club\'s home ground is Stadion Maksimir, which has a seating capacity of approximately 35,000 and is known for its vibrant atmosphere, especially during significant matches.\r\n\r\nDinamo Zagreb has won an impressive number of domestic titles, including over 20 Croatian First League championships, more than 15 Croatian Cups, and several Croatian Super Cups. The club\'s consistent domestic success has solidified its reputation as a powerhouse in Croatian football. Additionally, Dinamo Zagreb has made notable strides in European competitions, regularly participating in the UEFA Champions League and the UEFA Europa League. The club\'s European campaigns have brought international recognition and showcased the talents of its players on a larger stage.\r\n\r\nDinamo Zagreb is also renowned for its youth academy, which has produced numerous talented players who have gone on to have successful careers in top European leagues and the Croatian national team. Notable alumni include Luka Modrić, Zvonimir Boban, and Dejan Lovren, among others. The club\'s commitment to developing young talent has earned it a reputation as one of the best football academies in the region.\r\n\r\nThe club\'s traditional colors are blue, and its supporters are known as the \"Bad Blue Boys.\" This passionate fan group is known for their unwavering support, creating a formidable home advantage at Stadion Maksimir. The club\'s matches against rivals, particularly the Eternal Derby with Hajduk Split, are highly anticipated and fiercely contested, adding to the club\'s rich football culture.\r\n\r\nDinamo Zagreb\'s influence extends beyond the football pitch, as it plays a significant role in the community through various charitable initiatives and youth programs. The club\'s dedication to social responsibility and community engagement reflects its broader impact on Croatian society.\r\n\r\nIn summary, Dinamo Zagreb\'s legacy is built on a foundation of domestic dominance, international presence, and a commitment to nurturing young talent. The club\'s storied history, vibrant fanbase, and significant contributions to Croatian football make it a cornerstone of the sport in the region.', 'dinamo.png'),
(5, 'Borussia Dortmund', 'Borussia Dortmund, founded in 1909, is a renowned football club based in Dortmund, Germany, celebrated for its passionate fanbase and thrilling attacking style of play. The club\'s iconic yellow jerseys and electrifying atmosphere at Signal Iduna Park make it a symbol of German football passion.', 'Borussia Dortmund, commonly known as BVB or Dortmund, is a professional football club based in Dortmund, North Rhine-Westphalia, Germany. Established on December 19, 1909, the club has a rich history and is one of the most successful and popular football teams in Germany.\r\n\r\nBorussia Dortmund has won multiple Bundesliga titles, DFB-Pokal trophies, and other domestic honors throughout its history. The club\'s most significant success came in the 1990s when it won consecutive Bundesliga titles in 1995 and 1996 and clinched the UEFA Champions League trophy in 1997 under the guidance of manager Ottmar Hitzfeld. This period, known as the \"golden era,\" saw Dortmund rise to prominence both domestically and internationally.\r\n\r\nThe club\'s home matches are played at Signal Iduna Park, formerly known as Westfalenstadion, which is the largest football stadium in Germany and boasts a capacity of over 81,000 spectators. The stadium\'s famous \"Yellow Wall,\" a standing terrace behind one of the goals, creates a visually stunning and intimidating atmosphere, earning it recognition as one of the most iconic football venues in the world.\r\n\r\nBorussia Dortmund is known for its distinctive yellow and black home jerseys, which have earned the team the nickname \"Die Schwarzgelben\" (The Black and Yellows). The club\'s passionate fanbase, known as the \"Yellow Wall\" or \"Die Gelbe Wand,\" is renowned for its unwavering support and vibrant chants, creating an electric atmosphere at home matches.\r\n\r\nBeyond its success on the field, Borussia Dortmund is recognized for its commitment to youth development and innovative football strategies. The club\'s youth academy has produced several talented players who have gone on to have successful careers, both at Dortmund and in top European leagues. Additionally, Dortmund\'s attractive style of play, characterized by fast-paced attacking football, has garnered admiration from football fans worldwide.\r\n\r\nOff the pitch, Borussia Dortmund maintains a strong presence in the community through various social responsibility initiatives and charitable projects. The club\'s dedication to promoting inclusivity, diversity, and community engagement reflects its broader impact beyond football.\r\n\r\nIn summary, Borussia Dortmund\'s legacy is defined by its rich history, passionate fanbase, and commitment to excellence on and off the field. The club\'s enduring influence on German football culture and its global appeal make it a beloved institution in the football world.', 'bvb.png'),
(9, 'AC Milan', 'Italian club with a rich history, especially noted for its European Cup/Champions League successes. Known for legendary players and a defensive style.', 'Associazione Calcio Milan, commonly referred to as AC Milan or simply Milan, is one of the most successful and storied football clubs in Italy and Europe. Founded in 1899, Milan has won numerous Serie A titles and European Cups/Champions League titles, making them one of the most decorated clubs in football history. The club\'s home matches are played at the San Siro, one of the most iconic stadiums in the world. Milan is known for its strong defensive play, epitomized by legendary defenders like Franco Baresi and Paolo Maldini. The club has produced and attracted numerous world-class players, including Marco van Basten, Andriy Shevchenko, and Kaká. AC Milan\'s rich history and tradition of excellence continue to make it a revered name in football.', 'Milan-Logo.png'),
(10, 'Chelsea FC', 'English club with significant success in the Premier League and European competitions. Known for its financial backing and attracting top talents.', 'Chelsea Football Club, commonly referred to as Chelsea, is one of England\'s most successful and prominent football clubs. Founded in 1905, Chelsea has experienced significant success, particularly since the early 2000s following the acquisition by Roman Abramovich. The club has won multiple Premier League titles, FA Cups, and UEFA Champions League titles. Chelsea\'s home matches are played at Stamford Bridge, located in London. The club is known for its strong defensive play, tactical flexibility, and ability to attract top talents from around the world. Chelsea\'s recent successes, including Champions League triumphs, have cemented its status as a major force in both English and European football.', 'Chelsea-Logo.png'),
(12, 'Paris Saint-Germain (PSG)', 'French club known for its star-studded line-up and domestic dominance. Significant recent investment has elevated its status in European competitions.', 'Paris Saint-Germain Football Club, commonly referred to as PSG, is the most successful football club in France. Founded in 1970, PSG has experienced a meteoric rise in recent years, particularly after significant investment from Qatar Sports Investments in 2011. This financial backing has enabled PSG to attract world-class talents such as Neymar Jr., Kylian Mbappé, and Lionel Messi. The club has dominated Ligue 1, winning numerous titles and establishing itself as a major force in European competitions. PSG\'s home matches are played at the Parc des Princes, known for its vibrant atmosphere. The club\'s ambition and star-studded lineup make it one of the most exciting teams to watch in world football.', 'PSG-Logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(10) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `user`, `password`) VALUES
(1, 'Ivan', 'Bolješić', 'kvikipicogric', '$2y$10$5jRYNWyFlVot6MM7bFReX.vuYWHONq3FcupKrjqEZazUwGP9LM4lC'),
(4, 'Admin', 'Admin', 'Admin', '$2y$10$.wugqcPN/9bcf4qqgeTJUeuUwFc5AHXRTlZqQLFcpfqKuTyx3pySK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `igraci`
--
ALTER TABLE `igraci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klubovi`
--
ALTER TABLE `klubovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `igraci`
--
ALTER TABLE `igraci`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `klubovi`
--
ALTER TABLE `klubovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
