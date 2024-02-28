INSERT INTO type(type)
VALUES("cafe");
INSERT INTO type(type)
VALUES("restaurant");
INSERT INTO type(type)
VALUES("museum");
INSERT INTO type(type)
VALUES("hotel");

INSERT into places(address, city, name, type_id, website, description)
VALUES("Mungi 7", "Tallinn", "goodcafe", 1, "goodcafe.ee", "Nestled in the heart of Tallinn, goodCafe beckons with its inviting ambiance and aromatic allure. This charming cafe, a local favorite, offers a delightful escape into the world of artisanal coffee and delectable pastries. The cozy interior, adorned with rustic decor and warm lighting, creates a welcoming atmosphere for patrons to unwind or catch up with friends. goodCafe prides itself on sourcing high-quality coffee beans and crafting each cup with precision, ensuring a rich and satisfying experience for coffee enthusiasts. Beyond beverages, their menu boasts an array of freshly baked treats, from flaky croissants to indulgent cakes. Whether seeking a quiet corner for contemplation or a vibrant social space, goodCafe stands as a testament to Tallinn's thriving coffee culture, where every sip tells a story of flavor and community.");
INSERT into places(address, city, name, type_id, website, description)
VALUES("Vabaduse 45", "Tallinn", "ITMuseum", 3, "itmuseum.ee", "Immerse yourself in the fascinating world of technology at Tallinn's ITMuseum. This unique institution stands as a tribute to the evolution of information technology, showcasing a diverse collection of vintage computers, retro gadgets, and interactive exhibits that trace the digital timeline. From ancient computing machinery to iconic devices that shaped the digital era, ITMuseum offers a captivating journey through the history of innovation. Visitors can engage with hands-on displays, exploring the transformation of communication, gaming, and computing. The museum's commitment to preserving technological heritage creates an educational and nostalgic experience, making ITMuseum a must-visit destination for tech enthusiasts and those curious about the roots of our digital age.");
INSERT into places(address, city, name, type_id, website, description)
VALUES("Pikk jalg 45", "Tallinn", "Klooster", 4, "klooster.ee", "Nestled in the heart of Tallinn's Old Town, Klooster, an old hotel with historical roots as a medieval monastery, exudes charm and elegance. Its well-preserved stone walls and vaulted ceilings offer guests a glimpse into the city's rich past. The rooms seamlessly blend historic ambiance with modern comfort, providing a unique and cozy haven. Klooster's restaurant invites culinary exploration with a menu inspired by local flavors, while the surrounding UNESCO World Heritage Old Town awaits outside. With warm hospitality and a commitment to preserving history, Klooster promises a memorable stay in the midst of Tallinn's enchanting atmosphere.");

INSERT into transport(comfort, type, firma, details)
VALUES(4, "bus", "Lux Express", "coffee, wi-fi, a/c");
INSERT into transport(comfort, type, firma)
VALUES(3, "bus", "Hansa Bus");

INSERT into guides(email, firstname, lastname, phone, bio)
VALUES("petrovguide@gmail.com", "Ivan", "Petrov", "+37245486945", "Greetings! I'm Ivan Petrov, a seasoned tour guide blending knowledge, charisma, and a love for cultural exploration. With a background in History and Anthropology, I bring a profound understanding to each destination.");
INSERT into guides(email, firstname, lastname, phone, bio)
VALUES("elenakotova@gmail.com", "Elena", "Kotova", "+37247593743", "Greetings, fellow wanderers! I'm Elena Kotova, your spirited tour guide on a journey of discovery. With a heart full of passion for travel and an insatiable curiosity for the world's wonders, I invite you to join me on an unforgettable adventure.");


INSERT into tours(guide_id, spots, free_spots, price, start, end_Date, transport_id, city, name)
VALUES(1, 50, 39, 70.99, '2024-02-24', '2024-02-25', 1, "Tallinn", "Weekend Tallinn tour");
INSERT into tours(guide_id, spots, free_spots, price, start, end_Date, transport_id, city, name)
VALUES(2, 25, 10, 20.99, '2024-05-24', '2024-05-24', 2, "Tallinn", "ITMuseum tour");

INSERT into tour_place(tour_id, place_id)
VALUES(1, 1);
INSERT into tour_place(tour_id, place_id)
VALUES(1, 2);
INSERT into tour_place(tour_id, place_id)
VALUES(1, 3);
INSERT into tour_place(tour_id, place_id)
VALUES(2, 1);
INSERT into tour_place(tour_id, place_id)
VALUES(2, 2);

insert into users(role, email, username, password, avatar, bio)
values('USER_ROLE', "mariamaeva@gmail.com", "marie", "12345", "https://ivkhk-my.sharepoint.com/:i:/g/personal/kristiina_parri_ivkhk_ee/Ec-W9TKZC_VLtefSKnoNNLgBs8pJhW-9gS2_ECEeb4v7_g?e=8wgpwG", "Adventurous soul with a passion for exploring the world and creating lasting memories. From bustling cityscapes to serene landscapes, I thrive on the thrill of new cultures, diverse cuisines, and the beauty of unique destinations. My journey is a tapestry of experiences, woven with curiosity, wanderlust, and a deep appreciation for the extraordinary moments that travel gifts us");

insert into user_tour
values(1, 1);

insert into reviews(tour_rating, tour_id, user_id, tour_comment)
values(5, 1, 1, "one of the best tours i've ever taken. the guide was very friendly and knowledgeable")

