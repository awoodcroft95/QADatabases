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

insert into book (Title, ISBN, Description, publishDate, genre) values ('est phasellus', '393639981-6', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus', '2017-09-20', 'Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('molestie sed', '674836502-3', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', '2018-09-23', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('luctus et ultrices', '631780952-6', 'lacus at turpis donec posuere metus vitae ipsum aliquam non', '2018-07-18', 'Action|Drama|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('suspendisse potenti in', '423022835-X', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', '2017-02-27', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('posuere nonummy integer non velit donec diam neque', '768455211-2', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '2017-08-02', 'Animation|Horror|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', '744581312-8', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', '2018-07-28', 'Action|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('integer tincidunt ante vel ipsum praesent', '550841034-1', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue', '2016-12-24', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('hac', '441726915-7', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed', '2018-01-20', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quis turpis sed ante vivamus tortor duis mattis', '190040153-3', 'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', '2019-02-20', 'Drama|Western');
insert into book (Title, ISBN, Description, publishDate, genre) values ('odio in hac habitasse platea', '322272808-9', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', '2017-10-13', 'Drama|Horror|Thriller|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ipsum primis in faucibus orci', '509055965-1', 'bibendum morbi non quam', '2017-06-14', 'Action|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sed augue aliquam', '515359494-7', 'magnis dis parturient montes nascetur', '2018-09-14', 'Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('praesent blandit lacinia erat', '809614244-5', 'elementum eu interdum eu tincidunt in', '2018-12-04', 'Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('augue vel accumsan tellus nisi', '941914262-0', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', '2018-03-29', 'Action|Comedy|Fantasy|Horror|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eget massa', '633585230-6', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', '2018-12-17', 'Comedy|Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vulputate', '342260701-3', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', '2017-09-27', 'Comedy|Western');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ut', '464724972-7', 'neque duis bibendum morbi', '2017-04-13', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('justo etiam pretium iaculis justo in hac habitasse platea', '081430953-4', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', '2017-10-30', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sapien urna pretium', '671747642-7', 'velit id pretium iaculis diam erat fermentum justo nec', '2017-08-18', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('justo eu massa donec dapibus duis at', '630246705-5', 'rutrum at lorem integer tincidunt', '2019-03-24', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('et magnis dis', '349823281-9', 'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus', '2017-12-11', 'Action|Adventure|Comedy|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ante vel ipsum praesent blandit lacinia', '717263289-3', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', '2018-07-11', 'Adventure|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('turpis enim blandit', '402534536-6', 'molestie sed justo pellentesque viverra pede ac', '2017-01-06', 'Action|Western');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nulla justo aliquam quis turpis eget elit', '759691944-8', 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', '2017-02-06', 'Comedy|Musical');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mauris ullamcorper purus sit amet nulla quisque arcu libero', '140652262-7', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', '2017-02-22', 'Drama|Fantasy|Horror|Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('tempus sit amet sem fusce consequat nulla nisl nunc nisl', '213260245-X', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2019-02-24', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mi sit amet lobortis sapien sapien non', '988996368-X', 'dui luctus rutrum nulla tellus in sagittis dui', '2018-12-06', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('magna vulputate luctus cum sociis', '303655817-9', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', '2018-01-19', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('rhoncus sed vestibulum sit amet cursus id turpis integer', '196292908-6', 'dolor sit amet', '2018-07-08', 'Action|Crime|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('odio porttitor id consequat in consequat ut nulla', '195975351-7', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', '2019-02-23', 'Adventure|Animation|Children|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('interdum', '191573919-5', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', '2017-11-20', 'Adventure|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('quisque porta', '020691369-9', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', '2017-09-17', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('habitasse', '588080981-1', 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent', '2017-09-16', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('integer ac neque duis bibendum morbi', '271885158-9', 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2019-03-17', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('volutpat convallis morbi odio odio elementum eu', '547077778-2', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2019-03-29', 'Comedy|Musical');
insert into book (Title, ISBN, Description, publishDate, genre) values ('habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '000912565-5', 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', '2018-09-14', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vitae mattis nibh', '358740189-6', 'gravida sem praesent id', '2018-04-04', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mauris sit amet eros suspendisse accumsan', '920815667-2', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', '2017-06-02', 'Comedy|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('faucibus orci luctus et ultrices posuere cubilia curae nulla', '843425181-7', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', '2017-07-26', 'Action|Adventure|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('odio', '741938696-X', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '2016-12-22', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec vitae nisi nam', '770212246-3', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', '2018-08-12', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec quis orci eget orci vehicula', '101566720-1', 'nullam porttitor lacus at turpis donec posuere metus', '2018-05-13', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('in ante vestibulum', '978567805-9', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean', '2017-03-28', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sapien', '999555680-4', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', '2017-02-09', 'Comedy|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('etiam pretium iaculis justo in hac habitasse platea', '630522057-3', 'ut mauris eget massa tempor convallis', '2018-05-15', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('morbi non quam nec dui luctus rutrum', '954861684-X', 'a ipsum integer', '2019-02-06', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('at lorem integer', '925533427-1', 'interdum mauris ullamcorper', '2017-06-03', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('justo', '657587409-6', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', '2017-09-18', 'Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('neque duis bibendum', '518948696-6', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer', '2017-01-09', 'Comedy|Crime');
insert into book (Title, ISBN, Description, publishDate, genre) values ('in felis donec', '090266910-9', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', '2017-08-18', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('semper rutrum', '055739645-X', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', '2018-08-12', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mus vivamus vestibulum sagittis sapien cum sociis natoque', '453088893-2', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', '2019-01-21', 'Action|Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('integer ac neque duis bibendum morbi non quam nec', '619914567-4', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', '2018-09-12', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sit amet sem fusce consequat nulla', '945861082-6', 'elementum eu interdum eu tincidunt in', '2018-10-22', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vestibulum', '335244997-X', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', '2017-12-01', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('curae mauris viverra diam vitae', '844373141-9', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '2017-12-10', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pellentesque volutpat dui', '195798282-9', 'turpis elementum ligula vehicula consequat morbi', '2019-04-05', 'Action|Sci-Fi|Thriller|IMAX');
insert into book (Title, ISBN, Description, publishDate, genre) values ('augue luctus tincidunt nulla mollis molestie lorem quisque ut', '539056797-8', 'tellus semper interdum mauris ullamcorper purus sit amet', '2017-01-07', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('elementum in', '268643192-X', 'nisl nunc rhoncus dui vel sem sed sagittis', '2018-07-27', 'Action|Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('natoque penatibus et magnis dis parturient montes nascetur', '416303198-7', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis', '2017-07-19', 'Horror|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('auctor gravida', '436123401-9', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', '2017-12-14', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('amet eleifend', '104571684-7', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', '2017-01-09', 'Drama|Musical');
insert into book (Title, ISBN, Description, publishDate, genre) values ('duis bibendum felis sed interdum venenatis turpis', '799800245-X', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', '2017-11-06', 'Action|Horror|Sci-Fi');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ipsum primis in faucibus orci', '470908616-8', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2019-02-22', 'Drama|Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nulla sed accumsan felis', '073368298-7', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', '2017-03-02', 'Comedy|Fantasy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('massa volutpat convallis morbi odio odio elementum', '286723858-7', 'odio donec vitae nisi', '2017-06-06', 'Comedy|Drama|Romance|War');
insert into book (Title, ISBN, Description, publishDate, genre) values ('lectus pellentesque at nulla suspendisse potenti', '922903702-8', 'mi in porttitor pede justo eu massa', '2018-11-15', 'Comedy|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('et ultrices posuere', '945152915-2', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', '2017-02-21', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('nunc donec quis orci eget', '044608861-7', 'cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', '2018-12-15', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('pede ullamcorper augue a suscipit nulla elit', '010928462-3', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', '2017-05-13', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ligula in lacus curabitur at ipsum ac', '049671638-7', 'sapien dignissim vestibulum vestibulum ante ipsum primis', '2017-02-15', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '592131280-0', 'sit amet justo morbi ut odio cras mi pede', '2018-06-30', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sit amet eleifend pede libero', '369767233-9', 'metus aenean fermentum donec ut mauris eget massa', '2017-12-19', 'Western');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vel nulla eget eros elementum pellentesque quisque porta volutpat', '449089212-8', 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2017-09-20', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('a libero nam dui proin leo odio porttitor id', '991223217-8', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', '2019-01-19', 'Adventure|Animation|Children|Comedy|Fantasy|IMAX');
insert into book (Title, ISBN, Description, publishDate, genre) values ('aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed', '399996287-9', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', '2017-06-23', 'Documentary');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sit amet eleifend pede', '391889625-0', 'feugiat non pretium quis lectus', '2018-06-17', 'Drama|Mystery|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('cras non velit nec', '921176631-1', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '2017-11-05', 'Animation|Children|Musical');
insert into book (Title, ISBN, Description, publishDate, genre) values ('dui vel', '776721499-0', 'et magnis dis parturient montes nascetur ridiculus', '2018-10-18', 'Crime|Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('porta volutpat', '267568102-4', 'non mauris morbi non lectus aliquam sit amet diam', '2017-04-17', 'Drama|Sci-Fi|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('augue luctus tincidunt nulla mollis molestie lorem', '655947132-2', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam', '2018-08-17', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('tellus semper interdum mauris ullamcorper purus', '448415692-X', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', '2017-10-01', 'Western');
insert into book (Title, ISBN, Description, publishDate, genre) values ('est congue elementum in hac habitasse platea dictumst morbi', '401365626-4', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2017-02-18', 'Comedy');
insert into book (Title, ISBN, Description, publishDate, genre) values ('eu mi nulla ac enim in tempor turpis nec euismod', '525401399-0', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '2017-03-14', 'Crime|Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('fusce posuere felis sed lacus', '843637021-X', 'sit amet justo morbi', '2018-01-13', 'Horror|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('sit amet', '602874193-0', 'scelerisque quam turpis adipiscing', '2018-01-22', 'Action|Drama|Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('penatibus et magnis dis parturient montes nascetur ridiculus mus', '104782739-5', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', '2017-05-18', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('luctus tincidunt nulla mollis molestie lorem quisque ut', '572454594-2', 'lacus morbi quis tortor id nulla ultrices', '2017-05-19', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('turpis enim blandit mi in porttitor pede', '724225465-5', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in', '2017-09-04', 'Thriller');
insert into book (Title, ISBN, Description, publishDate, genre) values ('dui proin leo odio porttitor id consequat in consequat', '927210669-9', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', '2018-12-17', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('donec ut dolor morbi vel lectus in quam fringilla rhoncus', '415720839-0', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', '2017-10-22', 'Comedy|Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('in blandit ultrices enim', '788976355-7', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio', '2019-01-15', 'Comedy|Musical');
insert into book (Title, ISBN, Description, publishDate, genre) values ('massa tempor convallis', '757634417-2', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', '2017-12-28', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('a odio in hac habitasse platea dictumst maecenas', '259626220-7', 'blandit lacinia erat vestibulum sed magna at', '2017-03-19', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('mattis odio donec vitae nisi nam ultrices', '014009320-6', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '2019-02-20', 'Drama|Mystery|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('dui proin leo odio porttitor id consequat in', '266028032-0', 'consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis', '2017-11-06', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('et', '525193846-2', 'erat tortor sollicitudin mi sit', '2017-11-26', 'Drama|Romance');
insert into book (Title, ISBN, Description, publishDate, genre) values ('auctor gravida sem praesent id massa', '739985568-4', 'libero convallis eget eleifend luctus ultricies eu nibh', '2018-02-19', 'Drama');
insert into book (Title, ISBN, Description, publishDate, genre) values ('dolor quis odio', '794326170-4', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', '2017-04-28', 'Horror');
insert into book (Title, ISBN, Description, publishDate, genre) values ('vitae mattis nibh ligula nec', '542753143-2', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '2017-09-17', 'Comedy|Crime');

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