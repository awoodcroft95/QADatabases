create database if not exists bookpublication;

use bookpublication;

create table if not exists book (
    bookID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    ISBN VARCHAR(13),
    Description VARCHAR(200),
    publishDate DATE NOT NULL,
    Sales INT,
    CompletedStatus BOOLEAN DEFAULT 0,
    genre VARCHAR(45),
    PRIMARY KEY (bookID),
    UNIQUE INDEX bookID_UNIQUE (bookID ASC))
)

create table if not exists author (
    authorID INT NOT NULL AUTO_INCREMENT,
    First_Name VARCHAR(45),
    Last_Name VARCHAR(45)
    PRIMARY KEY (authorID),
    UNIQUE INDEX authorID_UNIQUE (authorID ASC)
)

create table if not exists book_author (
    pairID INT NOT NULL AUTO_INCREMENT,
    authorID INT NOT NULL,
    bookID INT NOT NULL,
    PRIMARY KET (pairID),
    CONSTRAINT bookID
    FOREIGN KEY (bookID)
    REFERENCES book (bookID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT authorID
    FOREIGN KEY (authorID)
    REFERENCES author (authorID)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    UNIQUE INDEX pairID_UNIQUE (pairID ASC)
)

insert into book (Title, ISBN, Description, publishDate, genre) values ('tellus in sagittis dui vel nisl duis ac nibh', 'Innman', 'minnman0@blinklist.com', '2019-07-28', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quis libero nullam', 'St. John', 'mstjohn1@github.com', '2020-03-05', 'Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('diam neque vestibulum eget vulputate', 'Loudwell', 'mloudwell2@unesco.org', '2018-04-09', 'Adventure|Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('aenean auctor gravida sem', 'Kuhnwald', 'pkuhnwald3@bizjournals.com', '2020-06-19', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec ut mauris eget massa tempor convallis', 'Lathe', 'klathe4@hubpages.com', '2018-11-01', 'Drama|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eros elementum pellentesque quisque', 'Swepstone', 'eswepstone5@weebly.com', '2017-08-17', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eu magna vulputate luctus cum sociis natoque penatibus', 'Tommasuzzi', 'vtommasuzzi6@arizona.edu', '2020-11-15', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('congue vivamus metus arcu', 'Petrosian', 'cpetrosian7@phpbb.com', '2020-09-05', 'Comedy|Crime|Mystery');
insert into book (Title, ISBN, Description, publishDate, genre) values ('risus praesent', 'Tomaszkiewicz', 'btomaszkiewicz8@webs.com', '2019-01-09', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('erat curabitur gravida nisi at nibh in', 'Vardie', 'lvardie9@xinhuanet.com', '2019-11-17', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 'Langman', 'blangmana@skyrock.com', '2017-12-19', 'Adventure|Children|Comedy|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('maecenas tincidunt lacus at velit vivamus vel nulla', 'Clair', 'mclairb@arstechnica.com', '2018-12-23', 'Comedy|Crime');
insert into book (Title, ISBN, Description, publishDate, genre) values ('morbi porttitor lorem', 'Beedom', 'mbeedomc@illinois.edu', '2020-01-29', 'Horror|Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('montes nascetur ridiculus mus etiam vel augue vestibulum', 'Ellissen', 'fellissend@seattletimes.com', '2020-07-11', 'Comedy|Crime');
insert into book (Title, ISBN, Description, publishDate, genre) values ('non quam nec dui', 'Millier', 'bmilliere@nytimes.com', '2017-12-31', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('etiam pretium iaculis justo in hac', 'Marns', 'kmarnsf@lycos.com', '2020-07-25', 'Comedy|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 'Place', 'dplaceg@chron.com', '2020-11-24', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sapien varius ut blandit non interdum', 'Kubala', 'skubalah@bloglines.com', '2019-12-14', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('praesent blandit lacinia erat vestibulum', 'Rolley', 'crolleyi@intel.com', '2018-02-04', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('praesent id massa id nisl venenatis', 'Iacopo', 'viacopoj@nifty.com', '2020-09-11', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pretium nisl ut volutpat sapien', 'O''Donohue', 'lodonohuek@phpbb.com', '2017-09-14', 'Action|Drama|Horror|Sci-Fi|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('platea dictumst aliquam augue', 'Maden', 'emadenl@mashable.com', '2019-03-28', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nisl venenatis lacinia aenean', 'Bartlam', 'jbartlamm@nydailynews.com', '2017-11-28', 'Comedy|Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('convallis duis consequat', 'Hymans', 'ehymansn@cbc.ca', '2019-10-12', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('lectus in est risus auctor sed tristique in', 'Allnatt', 'mallnatto@cloudflare.com', '2020-09-28', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('et commodo vulputate justo in blandit', 'Selby', 'cselbyp@java.com', '2017-10-30', 'Action|Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ultrices erat tortor sollicitudin mi', 'Dovinson', 'cdovinsonq@mediafire.com', '2017-12-31', 'Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('felis sed', 'Kingscote', 'tkingscoter@ucoz.ru', '2020-01-12', 'Adventure|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('amet justo morbi ut odio cras', 'MacCrosson', 'lmaccrossons@kickstarter.com', '2020-05-10', 'Comedy|Crime');
insert into book (Title, ISBN, Description, publishDate, genre) values ('amet eleifend pede libero quis orci nullam molestie', 'McCay', 'lmccayt@comsenz.com', '2020-10-05', 'Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('augue vestibulum rutrum', 'Cushion', 'pcushionu@cisco.com', '2017-10-31', 'Action|Comedy|Crime');
insert into book (Title, ISBN, Description, publishDate, genre) values ('adipiscing lorem vitae mattis nibh ligula', 'Jaycock', 'hjaycockv@newsvine.com', '2018-07-07', 'Comedy|Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pulvinar nulla pede ullamcorper augue', 'Kamall', 'skamallw@desdev.cn', '2018-12-29', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('primis in faucibus orci luctus et', 'Dunmore', 'gdunmorex@blog.com', '2018-04-04', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('condimentum neque sapien placerat ante nulla justo aliquam quis', 'Afield', 'eafieldy@amazon.co.uk', '2018-04-17', 'Adventure|Documentary|Drama|Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('enim sit amet nunc viverra dapibus nulla suscipit ligula in', 'Bing', 'rbingz@mediafire.com', '2020-04-12', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('enim in tempor', 'Woodrough', 'mwoodrough10@ed.gov', '2018-11-07', 'Action|Adventure|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('aenean lectus pellentesque eget', 'Service', 'cservice11@hatena.ne.jp', '2018-04-01', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('a suscipit nulla elit ac nulla', 'Beadles', 'bbeadles12@latimes.com', '2019-08-20', 'Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec vitae nisi nam', 'Bownes', 'lbownes13@thetimes.co.uk', '2019-05-19', 'Adventure|Animation|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ante ipsum primis in faucibus orci luctus et', 'Easen', 'teasen14@earthlink.net', '2020-05-13', 'Action|Crime|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('luctus ultricies eu nibh quisque id justo sit amet', 'Targetter', 'btargetter15@jiathis.com', '2019-05-23', 'Action|Crime|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('odio cras mi pede malesuada in imperdiet et commodo', 'Antley', 'kantley16@mit.edu', '2017-10-19', 'Comedy|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('cum sociis natoque penatibus', 'McAvin', 'fmcavin17@accuweather.com', '2018-04-22', 'Action|Crime|Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('aliquet ultrices erat tortor sollicitudin', 'Matusson', 'amatusson18@fema.gov', '2019-10-19', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quisque erat eros viverra eget congue', 'Handrick', 'fhandrick19@woothemes.com', '2020-12-09', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('montes nascetur', 'Noice', 'mnoice1a@fema.gov', '2019-10-27', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nullam molestie nibh in', 'Filimore', 'bfilimore1b@apple.com', '2020-02-08', 'Adventure|Children|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('in felis eu sapien', 'Wilmut', 'ewilmut1c@xrea.com', '2018-11-20', 'Action|Adventure|Animation|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pede justo eu massa donec dapibus duis', 'Cumbers', 'zcumbers1d@mapy.cz', '2020-04-06', 'Animation|Comedy|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('arcu sed augue aliquam erat volutpat in', 'Othen', 'aothen1e@ft.com', '2019-09-24', 'Animation|Children');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eget eros elementum pellentesque quisque porta', 'Scruby', 'bscruby1f@angelfire.com', '2019-03-17', 'Action|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eu orci mauris lacinia sapien quis libero nullam', 'Maddigan', 'nmaddigan1g@wired.com', '2020-09-17', 'Crime|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('integer a', 'Conkie', 'aconkie1h@fc2.com', '2017-11-13', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quisque arcu', 'Budibent', 'hbudibent1i@nhs.uk', '2019-09-18', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('condimentum curabitur in', 'Moggie', 'nmoggie1j@washingtonpost.com', '2019-10-25', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('posuere felis sed lacus morbi', 'Le-Good', 'jlegood1k@360.cn', '2017-12-27', 'Comedy|Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nibh in hac habitasse platea dictumst aliquam augue', 'Beldum', 'sbeldum1l@spotify.com', '2019-04-24', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Bellefonte', 'ebellefonte1m@google.com.au', '2018-02-19', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('fusce congue diam', 'Bazoche', 'abazoche1n@twitter.com', '2018-10-03', 'Animation|Children|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ultrices mattis odio donec vitae nisi nam ultrices', 'Larter', 'tlarter1o@merriam-webster.com', '2017-09-19', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('proin eu mi nulla ac enim', 'Cantero', 'lcantero1p@who.int', '2017-10-24', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('viverra dapibus nulla suscipit ligula', 'Malkinson', 'mmalkinson1q@economist.com', '2019-12-10', 'Documentary|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('natoque penatibus et magnis dis parturient', 'Mattis', 'bmattis1r@nature.com', '2020-04-07', 'Crime|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('fermentum donec ut mauris eget massa tempor convallis nulla', 'Carnegie', 'ecarnegie1s@ask.com', '2020-02-01', 'Horror|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('lectus aliquam sit amet diam in', 'Hincks', 'ahincks1t@squidoo.com', '2017-11-13', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('cum sociis natoque penatibus et magnis dis parturient', 'Seston', 'bseston1u@apple.com', '2020-03-11', 'Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nonummy integer non velit donec diam neque vestibulum', 'Semarke', 'lsemarke1v@umich.edu', '2017-08-08', 'Adventure|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('posuere felis sed lacus morbi sem mauris', 'Minichi', 'rminichi1w@statcounter.com', '2019-07-12', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sem mauris laoreet ut rhoncus aliquet', 'Littlejohns', 'alittlejohns1x@mysql.com', '2018-11-17', 'Drama|Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nisl nunc nisl duis', 'Metcalf', 'emetcalf1y@ted.com', '2020-08-01', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('porttitor lorem id ligula', 'Gendrich', 'vgendrich1z@sbwire.com', '2017-10-14', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('libero non mattis pulvinar', 'Edmondson', 'gedmondson20@nyu.edu', '2018-09-05', 'Action|Drama|Sci-Fi|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ante vel', 'Bloss', 'ebloss21@simplemachines.org', '2020-01-11', 'Comedy|Drama|Fantasy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pretium quis lectus suspendisse potenti in', 'Gasgarth', 'cgasgarth22@quantcast.com', '2020-04-29', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ante nulla justo aliquam quis turpis eget elit sodales', 'Temperton', 'ftemperton23@japanpost.jp', '2020-04-05', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quam nec dui luctus rutrum nulla tellus in sagittis dui', 'Connell', 'cconnell24@free.fr', '2020-10-23', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vestibulum proin eu mi nulla ac enim in', 'Wenderoth', 'swenderoth25@angelfire.com', '2020-12-12', 'Adventure|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'Tucknott', 'jtucknott26@seattletimes.com', '2018-02-08', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sed interdum venenatis turpis enim blandit', 'Verdon', 'lverdon27@smugmug.com', '2019-09-13', 'Comedy|Fantasy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('justo sit amet sapien dignissim vestibulum vestibulum', 'Geertje', 'mgeertje28@washingtonpost.com', '2020-11-03', 'Comedy|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nunc viverra dapibus', 'Moralas', 'emoralas29@e-recht24.de', '2020-02-06', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('duis mattis egestas metus aenean fermentum donec ut', 'Kiff', 'tkiff2a@bloglovin.com', '2018-08-02', 'Adventure|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec vitae nisi nam ultrices libero non mattis pulvinar', 'Rounce', 'erounce2b@slideshare.net', '2020-06-10', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sodales scelerisque mauris', 'Newlin', 'dnewlin2c@statcounter.com', '2020-02-19', 'Action|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mi pede malesuada in imperdiet et', 'Wiszniewski', 'jwiszniewski2d@cbsnews.com', '2018-05-20', 'Comedy|Fantasy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('et magnis dis parturient', 'Klimsch', 'bklimsch2e@reference.com', '2018-04-27', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eleifend quam a odio in hac habitasse platea', 'Lakenden', 'vlakenden2f@comsenz.com', '2020-08-22', 'Comedy|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('posuere cubilia curae mauris viverra diam vitae quam', 'Romeril', 'bromeril2g@ed.gov', '2018-04-23', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 'Mortlock', 'amortlock2h@eepurl.com', '2019-02-05', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('libero rutrum ac', 'Urch', 'aurch2i@berkeley.edu', '2020-12-21', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('faucibus orci luctus et', 'Say', 'lsay2j@ibm.com', '2019-04-16', 'Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('rhoncus mauris', 'Fulbrook', 'afulbrook2k@so-net.ne.jp', '2020-06-13', 'Action|Adventure|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 'Stocky', 'nstocky2l@over-blog.com', '2020-05-07', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 'Jodkowski', 'hjodkowski2m@amazonaws.com', '2019-01-20', 'Action|Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quis turpis sed ante', 'Thrift', 'bthrift2n@bandcamp.com', '2018-09-10', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eleifend quam a odio in hac habitasse platea dictumst', 'Keller', 'hkeller2o@gov.uk', '2020-10-24', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('in quis justo', 'Tayloe', 'ktayloe2p@tinyurl.com', '2018-01-17', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', 'Cusack', 'ecusack2q@geocities.jp', '2020-04-01', 'Action');
insert into book (Title, ISBN, Description, publishDate, genre) values ('leo rhoncus sed vestibulum sit amet cursus id turpis', 'Mayo', 'cmayo2r@ft.com', '2018-08-06', 'Comedy|Drama');

insert into author (first_name, last_name) values ('Johnna', 'Wayon');
insert into author (first_name, last_name) values ('Livvy', 'O''Caine');
insert into author (first_name, last_name) values ('Simmonds', 'Blewis');
insert into author (first_name, last_name) values ('Manny', 'Brownscombe');
insert into author (first_name, last_name) values ('Johannah', 'Ansteys');
insert into author (first_name, last_name) values ('Hashim', 'Sieghard');
insert into author (first_name, last_name) values ('Hedvige', 'Jesson');
insert into author (first_name, last_name) values ('Griswold', 'Sclanders');
insert into author (first_name, last_name) values ('Haleigh', 'La Torre');
insert into author (first_name, last_name) values ('Inessa', 'Del Dello');
insert into author (first_name, last_name) values ('Jonathan', 'Wickwarth');
insert into author (first_name, last_name) values ('Arie', 'Cobbold');
insert into author (first_name, last_name) values ('Jennifer', 'Dunnan');
insert into author (first_name, last_name) values ('Ignazio', 'Gurr');
insert into author (first_name, last_name) values ('Coretta', 'Thake');
insert into author (first_name, last_name) values ('Lutero', 'Brambell');
insert into author (first_name, last_name) values ('Mufi', 'Balsdon');
insert into author (first_name, last_name) values ('Roscoe', 'Culter');
insert into author (first_name, last_name) values ('Freedman', 'Bulfit');
insert into author (first_name, last_name) values ('Tamara', 'Negri');
insert into author (first_name, last_name) values ('Frederick', 'Luc');
insert into author (first_name, last_name) values ('Ardelis', 'Gutherson');
insert into author (first_name, last_name) values ('Morie', 'Roderighi');
insert into author (first_name, last_name) values ('Hanny', 'Royds');
insert into author (first_name, last_name) values ('Diahann', 'Switzer');
insert into author (first_name, last_name) values ('Michaeline', 'McPaik');
insert into author (first_name, last_name) values ('Renata', 'Sedgeworth');
insert into author (first_name, last_name) values ('Catharina', 'Pikesley');
insert into author (first_name, last_name) values ('Manda', 'Minelli');
insert into author (first_name, last_name) values ('Letti', 'Mc Caghan');
insert into author (first_name, last_name) values ('Tulley', 'Ardy');
insert into author (first_name, last_name) values ('Hortensia', 'Broadfield');
insert into author (first_name, last_name) values ('See', 'Naerup');
insert into author (first_name, last_name) values ('Enrico', 'Stubbert');
insert into author (first_name, last_name) values ('Lexis', 'Fontenot');
insert into author (first_name, last_name) values ('Siusan', 'Fantini');
insert into author (first_name, last_name) values ('Zita', 'Soggee');
insert into author (first_name, last_name) values ('Arin', 'Mortlock');
insert into author (first_name, last_name) values ('Carlie', 'Oakman');
insert into author (first_name, last_name) values ('Bengt', 'Jopling');
insert into author (first_name, last_name) values ('Reinwald', 'Ellcome');
insert into author (first_name, last_name) values ('Sophi', 'Kemball');
insert into author (first_name, last_name) values ('Noby', 'Darrell');
insert into author (first_name, last_name) values ('Kalinda', 'Semmence');
insert into author (first_name, last_name) values ('Charmion', 'Heigl');
insert into author (first_name, last_name) values ('Tammie', 'Suttle');
insert into author (first_name, last_name) values ('Tobi', 'Haylett');
insert into author (first_name, last_name) values ('Teriann', 'Iley');
insert into author (first_name, last_name) values ('Cody', 'Terrill');
insert into author (first_name, last_name) values ('Una', 'Ikringill');

insert into book_author (authorID, bookID) values (21, 4);
insert into book_author (authorID, bookID) values (37, 47);
insert into book_author (authorID, bookID) values (8, 33);
insert into book_author (authorID, bookID) values (2, 31);
insert into book_author (authorID, bookID) values (38, 95);
insert into book_author (authorID, bookID) values (27, 64);
insert into book_author (authorID, bookID) values (42, 22);
insert into book_author (authorID, bookID) values (45, 5);
insert into book_author (authorID, bookID) values (41, 2);
insert into book_author (authorID, bookID) values (45, 23);
insert into book_author (authorID, bookID) values (35, 56);
insert into book_author (authorID, bookID) values (49, 82);
insert into book_author (authorID, bookID) values (5, 99);
insert into book_author (authorID, bookID) values (33, 61);
insert into book_author (authorID, bookID) values (2, 56);
insert into book_author (authorID, bookID) values (31, 5);
insert into book_author (authorID, bookID) values (38, 3);
insert into book_author (authorID, bookID) values (7, 71);
insert into book_author (authorID, bookID) values (44, 33);
insert into book_author (authorID, bookID) values (16, 40);
insert into book_author (authorID, bookID) values (22, 14);
insert into book_author (authorID, bookID) values (38, 12);
insert into book_author (authorID, bookID) values (7, 64);
insert into book_author (authorID, bookID) values (46, 40);
insert into book_author (authorID, bookID) values (33, 69);
insert into book_author (authorID, bookID) values (38, 24);
insert into book_author (authorID, bookID) values (25, 65);
insert into book_author (authorID, bookID) values (2, 83);
insert into book_author (authorID, bookID) values (28, 24);
insert into book_author (authorID, bookID) values (12, 98);
insert into book_author (authorID, bookID) values (32, 15);
insert into book_author (authorID, bookID) values (16, 57);
insert into book_author (authorID, bookID) values (49, 9);
insert into book_author (authorID, bookID) values (25, 77);
insert into book_author (authorID, bookID) values (39, 75);
insert into book_author (authorID, bookID) values (28, 86);
insert into book_author (authorID, bookID) values (2, 71);
insert into book_author (authorID, bookID) values (5, 80);
insert into book_author (authorID, bookID) values (36, 27);
insert into book_author (authorID, bookID) values (13, 31);
insert into book_author (authorID, bookID) values (49, 65);
insert into book_author (authorID, bookID) values (24, 26);
insert into book_author (authorID, bookID) values (3, 36);
insert into book_author (authorID, bookID) values (46, 93);
insert into book_author (authorID, bookID) values (13, 65);
insert into book_author (authorID, bookID) values (39, 51);
insert into book_author (authorID, bookID) values (4, 82);
insert into book_author (authorID, bookID) values (33, 9);
insert into book_author (authorID, bookID) values (22, 24);
insert into book_author (authorID, bookID) values (8, 5);