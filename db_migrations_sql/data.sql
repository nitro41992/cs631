--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

-- Started on 2019-04-28 19:37:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2999 (class 0 OID 38289)
-- Dependencies: 204
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authors VALUES (1, 'Cicero Lowe', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (2, 'Dominic Breitenberg', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (3, 'Modesta Douglas', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (4, 'Aurelia Sporer', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (5, 'Dexter Smith', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (6, 'Earlene Morar', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (7, 'Blake Funk', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (8, 'Pierce Stoltenberg', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (9, 'Lewis Langosh', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (10, 'Pasquale Stehr', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (11, 'Fausto Moen', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (12, 'Deborah Hickle', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (13, 'Cynthia Ledner', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (14, 'Sister Kozey', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (15, 'Cyrus Heidenreich', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (16, 'Meta Rowe', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (17, 'Amir Cassin', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (18, 'Mabel Schimmel', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (19, 'Dariana Schulist', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (20, 'Alexys Reichert', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (21, 'German Mayer', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (22, 'Colleen Schmeler', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (23, 'Allene Lang', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (24, 'Elena Kessler', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (25, 'Xzavier Pollich', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (26, 'Merritt Dach', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (27, 'Isabel Nicolas', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.authors VALUES (28, 'Emmet Wintheiser', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (29, 'Abdullah Pacocha', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (30, 'Addie Hayes', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (31, 'Noe Rohan', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (32, 'Clair Ferry', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (33, 'Emory Purdy', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (34, 'Roslyn Lang', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (35, 'Abel McGlynn', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (36, 'Bethany Langworth', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (37, 'Arlene Simonis', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (38, 'Sydnee Wolff', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (39, 'Genesis Hand', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (40, 'Meredith Jenkins', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (41, 'Trey Weissnat', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (42, 'Allen Langworth', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (43, 'Jacynthe Turner', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (44, 'Bill Wiza', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (45, 'Issac Watsica', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (46, 'Evangeline McClure', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (47, 'Juanita Franecki', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (48, 'Hilton Ferry', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (49, 'Walton Collier', '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.authors VALUES (50, 'Christian Romaguera', '2019-04-28 23:36:43', '2019-04-28 23:36:43');


--
-- TOC entry 3015 (class 0 OID 38407)
-- Dependencies: 220
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publishers VALUES (1, 'Gina', '1155 Moen Mountain Suite 659
Haleymouth, SD 00818', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (2, 'Isobel', '8768 Annie Light Suite 715
Deondreberg, CT 53647-9625', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (3, 'Amie', '6236 Breanne Forges Apt. 235
South Barton, IN 80790-9921', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (4, 'Taylor', '647 Durgan Unions Apt. 564
Glovertown, FL 12523', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (5, 'Brennon', '684 Larkin Shoal Apt. 521
West Blanca, SC 41052-2994', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (6, 'Marcia', '427 Satterfield Crest Suite 735
Port Maggieburgh, DE 76366-5328', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (7, 'Daisy', '47164 Abbie Rapid Suite 793
North Josieborough, WA 22418-6916', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (8, 'Jaycee', '283 Kayley Valley
West Barrett, KS 97122-5454', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (9, 'Lucienne', '280 Jacobs Curve
South Ubaldofurt, AK 57681', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (10, 'Rex', '9101 Peyton Radial Apt. 579
New Leanne, WA 83860-1562', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (11, 'Roma', '79118 Ava Crossing
South Delbert, OH 48858', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (12, 'Kylee', '2013 Lavinia Ports
Wittingborough, NH 82386-7238', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (13, 'Erna', '672 Coy Curve Apt. 789
North Wendyberg, MD 47490', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (14, 'Ernie', '799 Rice Orchard Apt. 673
Stephenberg, AK 40172-6954', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (15, 'Doyle', '94350 Woodrow Mews
Jeromyberg, VA 11124-9693', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (16, 'Christopher', '77458 Ruby Estate Apt. 976
Port Elsa, KY 79387', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (17, 'Lillian', '232 Yasmine Road
Alexysberg, WY 65042-7901', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (18, 'Makenzie', '6899 Cole Isle
South Javon, DE 03648', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (19, 'Linda', '189 Orn Road Apt. 114
Terrenceside, AK 40160-6977', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (20, 'Renee', '48218 Beth Squares
Lake Katharina, MS 91177-7693', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (21, 'Woodrow', '48340 Schmeler Springs Suite 636
Port Emilieport, MA 39477', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (22, 'Kellen', '1579 Robel Wall Apt. 753
Hodkiewiczburgh, MO 12782', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (23, 'Magnus', '4021 Bednar Fields
Lake Malvinamouth, MD 72737', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (24, 'Myrtice', '748 Franecki Skyway Apt. 804
North Leola, VT 79312', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (25, 'Shirley', '92010 Jarred Prairie
Mauricioton, NC 13660', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (26, 'Brett', '15519 Samara Lakes
Dasiaberg, IA 09611-7807', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (27, 'Roman', '3453 Perry Wall
Leschton, TN 99040-9754', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (28, 'Vada', '6155 Connie Point
Rueckerland, WV 14800', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (29, 'Rose', '610 Kiehn Street Apt. 284
East Carletonmouth, HI 62968-3173', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (30, 'Allie', '140 Margaret Harbors
North Baileeberg, MN 70031-2557', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (31, 'Alex', '757 Ryleigh Land
East Celine, NV 37862', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (32, 'Virgil', '84164 Kelly River Apt. 192
Auerfurt, WY 30787-2058', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (33, 'Dana', '54560 Macejkovic Drives
South Kasandra, IA 14411-6141', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (34, 'Donny', '3689 Keeling Flats Apt. 931
Bartholometon, WY 43908', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (35, 'Eveline', '16674 Petra Via
Bergehaven, TX 36963', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (36, 'Janis', '391 Asha Lock Suite 102
East Demondland, KS 19341-0107', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (37, 'Mable', '1594 Howell Summit
New Graciela, WA 22140-7476', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (38, 'Juana', '59205 Durgan Village
Mosesmouth, RI 11749-0904', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (39, 'Brenna', '4906 Leannon Mountains
Cesarburgh, MO 99604', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (40, 'Murray', '58264 Karli Extensions
Ronnytown, ME 66277', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (41, 'Linwood', '81950 Jenkins Camp Apt. 173
Schillerbury, ME 75251-2288', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (42, 'Zola', '67394 Kub Corner Apt. 642
Wilfredoview, UT 06857', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (43, 'Rosie', '49591 Kiehn Shore Suite 592
Pfannerstillport, AR 12891', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (44, 'Delaney', '2658 West Ville
New Vickyfort, AZ 73187', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (45, 'Kale', '6163 Rau Parkways
South Candelario, GA 80853', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (46, 'Isabella', '13503 Prosacco Bridge
Mozellberg, ID 97447', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (47, 'Verdie', '49785 Freda Lodge
East Devynville, GA 66202-6111', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (48, 'Margarita', '828 Gregoria Manors Suite 569
Lake Tyreefurt, NC 58115', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (49, 'Aliya', '8330 Pouros Inlet
New Elena, NE 48004', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.publishers VALUES (50, 'Eliseo', '866 Andreane Trace
Hesselbury, WI 06758', '2019-04-28 23:36:37', '2019-04-28 23:36:37');


--
-- TOC entry 2997 (class 0 OID 38281)
-- Dependencies: 202
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.documents VALUES (1, 'Optio modi nobis veritatis architecto aliquid.', '1979-05-23 14:03:25', 38, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (2, 'Quasi dolorem eos reprehenderit at et.', '1990-10-08 16:53:55', 39, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (3, 'Dolor aliquid qui praesentium eum necessitatibus.', '2003-05-01 21:43:31', 19, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (4, 'Minus velit dolore autem voluptatem libero iure.', '1971-06-19 18:13:56', 12, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (5, 'Autem doloribus ea quis non qui quae.', '2011-03-23 00:53:45', 5, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (6, 'Voluptas ratione consequatur error aliquam.', '1978-03-15 07:13:50', 2, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (7, 'Beatae id omnis quia totam.', '1971-02-07 06:33:18', 43, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (8, 'Aut dolorum in eos eligendi maiores sit.', '1996-06-15 22:47:34', 28, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (9, 'Dolor ipsa ipsa at rerum distinctio atque.', '1989-01-29 17:41:48', 38, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (10, 'Reprehenderit nihil veritatis corrupti.', '2001-09-18 16:59:54', 23, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (11, 'Facilis officiis dolorem ut in aut ab.', '1976-08-05 09:35:04', 26, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (12, 'Atque incidunt dolor recusandae in.', '1982-03-13 04:20:54', 28, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (13, 'Rem et reiciendis quibusdam quod minus error aut.', '2014-08-20 01:06:13', 31, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (14, 'Laboriosam nam sit omnis quibusdam voluptas et.', '2015-04-23 01:01:51', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (15, 'A pariatur illum vel quis vel natus maxime.', '1995-05-15 13:25:17', 24, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (16, 'Voluptatibus ut nulla et aut. Et at vel ut cum.', '2010-05-05 13:44:20', 28, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (17, 'Aut assumenda ut eum in sint porro.', '2014-05-19 20:47:32', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (18, 'Soluta sit non quis reiciendis ut.', '1991-07-23 04:36:17', 10, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (19, 'Voluptas cumque quia temporibus.', '1986-05-10 01:57:48', 39, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (20, 'Dolor quis dicta quia accusantium doloribus.', '2014-03-18 10:52:55', 17, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (21, 'Non vel blanditiis et repellendus ullam debitis.', '2018-05-17 20:20:20', 30, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (22, 'Fuga voluptatibus quo ut ipsa soluta.', '1985-11-17 04:12:51', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (23, 'Non explicabo non eum omnis qui nulla.', '1998-11-18 10:07:10', 30, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (24, 'Aut praesentium soluta et aut qui ut dolores.', '2002-04-29 10:57:30', 47, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (25, 'Aut possimus minima optio est velit.', '2008-12-16 14:17:03', 34, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (26, 'Ipsum vel ut voluptatem suscipit error possimus.', '2016-02-16 16:58:15', 49, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (27, 'Fuga corporis possimus illo.', '1972-05-26 11:50:54', 21, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (28, 'Iste et ullam aut sit et sunt.', '1988-06-10 17:01:19', 30, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (29, 'Rem quos iusto vel enim dicta maiores adipisci.', '1989-06-15 05:29:49', 30, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (30, 'Quo voluptate natus quo iste.', '1994-11-24 05:09:58', 16, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (31, 'Aspernatur iste repellat magni aut.', '2008-11-03 10:07:04', 48, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (32, 'Neque atque quidem accusantium.', '2010-11-08 16:10:24', 34, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (33, 'Autem laboriosam quod atque deleniti earum.', '1982-03-11 22:14:23', 33, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (34, 'Quis incidunt eum velit iusto ut vel in.', '2008-07-14 17:34:32', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (35, 'Dolorem aut voluptatem facilis ullam.', '1970-03-16 04:02:24', 13, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (36, 'Ea ullam optio non nulla.', '2007-07-25 22:15:39', 10, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (37, 'Repellendus ut qui nihil qui distinctio.', '1972-06-03 07:19:05', 25, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (38, 'Aut aut et magnam accusantium non.', '1989-05-30 19:21:48', 48, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (39, 'Est aut nesciunt placeat numquam et in.', '1974-11-30 23:09:33', 11, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (40, 'Modi nisi labore soluta omnis.', '1974-07-04 12:27:32', 7, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (41, 'Dolorem non ut corrupti.', '1977-05-04 05:09:11', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (42, 'Soluta voluptas numquam ut.', '2015-06-13 06:03:16', 44, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (43, 'Est sapiente sit tenetur eius.', '2009-04-15 15:12:40', 25, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (44, 'Ut et sed corrupti eveniet architecto quis.', '1979-12-29 23:47:52', 24, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (45, 'Eum similique animi aut vel.', '1989-01-21 01:36:36', 6, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (46, 'Voluptas error aut dolore esse in asperiores.', '1981-01-17 21:07:09', 22, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (47, 'Ut quo placeat et sapiente dolorum nesciunt est.', '1999-02-01 13:39:14', 20, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (48, 'Nisi magnam quibusdam ut illum id repellendus.', '2002-12-12 09:56:58', 26, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (49, 'Quis nobis rem libero dignissimos quia harum.', '1991-09-23 10:05:31', 10, '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.documents VALUES (50, 'Sed aut et ab soluta aliquid.', '1984-03-19 00:02:42', 5, '2019-04-28 23:36:37', '2019-04-28 23:36:37');


--
-- TOC entry 3003 (class 0 OID 38312)
-- Dependencies: 208
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books VALUES (1, 12, '9783977393955', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (2, 23, '9786491408761', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (3, 27, '9793139279157', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (4, 34, '9796968005805', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (5, 8, '9794977936813', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (6, 15, '9799359139547', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (7, 29, '9788146882742', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (8, 19, '9797338535854', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (9, 5, '9781773154589', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (10, 10, '9788558030885', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (11, 24, '9797572622679', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (12, 33, '9780894470028', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (13, 48, '9785364686213', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (14, 4, '9780488713715', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (15, 43, '9781003250210', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (16, 2, '9795719494950', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (17, 7, '9794400647644', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (18, 13, '9781307554380', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (19, 46, '9798471124356', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (20, 6, '9790665920843', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (21, 41, '9793922653065', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (22, 21, '9790015055157', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (23, 3, '9797567197649', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (24, 28, '9790105323548', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (25, 9, '9788618155251', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (26, 37, '9783993969653', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (27, 38, '9796691597066', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (28, 20, '9795676295188', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (29, 47, '9791370666712', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (30, 45, '9783139892821', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (31, 18, '9799563687995', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (32, 14, '9787605637695', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (33, 16, '9782082348652', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (34, 25, '9793426737889', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (35, 1, '9799281878637', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (36, 50, '9795240155504', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (37, 22, '9796914723357', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (38, 44, '9780141202440', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (39, 32, '9788442509787', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (40, 39, '9795458060850', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (41, 36, '9793969709831', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (42, 31, '9786514507884', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (43, 26, '9794804680735', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (44, 40, '9788849492811', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (45, 49, '9787068024346', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (46, 30, '9788712839897', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (47, 42, '9799755392836', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (48, 35, '9785059431173', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (49, 17, '9786401353310', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.books VALUES (50, 11, '9793246611901', '2019-04-28 23:36:42', '2019-04-28 23:36:42');


--
-- TOC entry 3017 (class 0 OID 38423)
-- Dependencies: 222
-- Data for Name: branches; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.branches VALUES (1, 'Quam.', '4947 Gilbert Heights Suite 422
Handfurt, SD 91910-1714', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.branches VALUES (2, 'Quia.', '48044 Graham Loaf
Lubowitzberg, OH 25325', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.branches VALUES (3, 'Omnis ut.', '55645 McLaughlin Spring
Port Stan, NJ 69308-6975', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.branches VALUES (4, 'Eos iste.', '295 Boehm Plaza
Port Effiehaven, SC 93052-7745', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.branches VALUES (5, 'Velit eos.', '9973 Roberts Highway
Claudinemouth, AZ 82375-6084', '2019-04-28 23:36:37', '2019-04-28 23:36:37');


--
-- TOC entry 3019 (class 0 OID 38434)
-- Dependencies: 224
-- Data for Name: copies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.copies VALUES (1, 17, 55, 5, '172U09', '2019-04-28 23:36:39', '2019-04-28 23:36:39');
INSERT INTO public.copies VALUES (2, 4, 9, 1, '071G88', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (3, 5, 18, 3, '132F91', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (4, 25, 23, 2, '130I47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (5, 44, 66, 4, '020B46', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (6, 14, 13, 1, '010J47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (7, 19, 18, 3, '161D22', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (8, 15, 84, 1, '030M32', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (9, 25, 96, 2, '044T64', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (10, 45, 39, 1, '152M08', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (11, 35, 23, 3, '126W20', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (12, 11, 98, 4, '083Y06', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (13, 31, 46, 5, '020F08', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (14, 41, 70, 5, '089K20', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (15, 48, 40, 3, '197J07', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (16, 44, 82, 1, '008P03', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (17, 9, 58, 3, '033H23', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (18, 34, 40, 3, '027Z59', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (19, 10, 53, 1, '133F22', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (20, 20, 9, 1, '076K81', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (21, 2, 68, 3, '184Y33', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (22, 28, 34, 1, '015A70', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (23, 35, 55, 2, '052G39', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (24, 2, 24, 2, '174V75', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (25, 48, 55, 3, '129B90', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (26, 25, 31, 5, '125X28', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (27, 50, 60, 1, '034J50', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (28, 28, 59, 3, '179H69', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (29, 3, 28, 2, '049L82', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (30, 10, 28, 2, '046D87', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (31, 21, 63, 3, '030E45', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (32, 50, 34, 1, '163R97', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (33, 50, 85, 2, '070O05', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (34, 34, 75, 5, '058B94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (35, 13, 22, 5, '107K79', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (36, 45, 20, 5, '133K84', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (37, 40, 31, 2, '065Q08', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (38, 27, 17, 2, '048J17', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (39, 3, 49, 4, '136O00', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (40, 28, 73, 4, '184X98', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (41, 20, 37, 1, '043J34', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (42, 19, 61, 4, '011R85', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (43, 35, 40, 2, '109U56', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (44, 17, 3, 3, '086G07', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (45, 37, 65, 5, '002A73', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (46, 17, 32, 5, '152E52', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (47, 46, 5, 4, '045N64', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (48, 7, 53, 2, '189V80', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (49, 2, 39, 1, '146A44', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (50, 17, 43, 1, '141V38', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (51, 21, 92, 1, '091E63', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (52, 19, 46, 3, '023M54', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (53, 21, 53, 1, '149U04', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (54, 48, 24, 4, '050U32', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (55, 42, 88, 2, '122Z38', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (56, 36, 69, 2, '039W38', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (57, 45, 12, 1, '065T36', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (58, 23, 97, 1, '195U65', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (59, 34, 79, 3, '023O12', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (60, 49, 67, 2, '112L54', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (61, 8, 41, 3, '072C69', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (62, 6, 38, 3, '136A89', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (63, 4, 44, 2, '074X82', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (64, 30, 34, 3, '148D60', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (65, 45, 73, 3, '187Y08', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (66, 39, 94, 2, '036F37', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (67, 40, 14, 2, '032B75', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (68, 40, 94, 5, '027C42', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (69, 44, 36, 2, '179M94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (70, 36, 100, 5, '027N16', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (71, 45, 38, 1, '077W16', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (72, 36, 63, 4, '112Q32', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (73, 4, 31, 2, '068G72', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (74, 11, 2, 4, '164W99', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (75, 26, 50, 5, '134M19', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (76, 50, 14, 3, '184W32', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (77, 33, 85, 5, '027Q50', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (78, 22, 94, 1, '130P60', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (79, 14, 21, 4, '185T13', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (80, 32, 65, 4, '187V62', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (81, 5, 44, 4, '146I83', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (82, 7, 61, 5, '136B74', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (83, 40, 35, 3, '147N23', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (84, 46, 48, 2, '188N45', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (85, 17, 18, 5, '038V33', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (86, 39, 2, 1, '143J12', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (87, 15, 86, 1, '091R65', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (88, 4, 10, 1, '034Z22', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (89, 21, 79, 5, '131S50', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (90, 47, 75, 3, '130C15', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (91, 34, 17, 5, '153K47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (92, 17, 27, 5, '015H37', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (93, 30, 33, 2, '040X47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (94, 20, 83, 1, '150S87', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (95, 20, 21, 1, '174Y67', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (96, 2, 60, 2, '119E51', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (97, 29, 16, 3, '172M98', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (98, 16, 16, 3, '110B44', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (99, 21, 30, 4, '118G89', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (100, 35, 76, 4, '130X11', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (101, 46, 66, 2, '020B43', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (102, 44, 41, 4, '106M04', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (103, 16, 37, 4, '123A84', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (104, 33, 80, 4, '040B04', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (105, 1, 94, 3, '161Z29', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (106, 4, 62, 3, '068E69', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (107, 11, 81, 3, '011G30', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (108, 19, 73, 1, '025O31', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (109, 27, 78, 3, '131I16', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (110, 50, 9, 3, '169Q20', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (111, 45, 1, 2, '162P49', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (112, 2, 22, 5, '033J47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (113, 6, 5, 5, '160W65', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (114, 15, 92, 3, '061K62', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (115, 46, 88, 3, '006R36', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (116, 46, 79, 4, '008F91', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (117, 20, 47, 2, '014I62', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (118, 37, 78, 5, '119R58', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (119, 20, 60, 1, '014P94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (120, 43, 2, 4, '045B52', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (121, 45, 60, 4, '126J28', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (122, 10, 70, 5, '061I78', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (123, 9, 25, 4, '093Q76', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (124, 48, 68, 2, '055L90', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (125, 25, 46, 3, '117S48', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (126, 3, 80, 3, '175P01', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (127, 43, 35, 3, '125I94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (128, 44, 49, 2, '037B52', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (129, 48, 29, 5, '193P48', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (130, 23, 67, 4, '181Z02', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (131, 20, 76, 5, '052O90', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (132, 43, 5, 1, '058R53', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (133, 17, 71, 2, '070G62', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (134, 24, 26, 1, '133X70', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (135, 48, 9, 5, '068L89', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (136, 2, 28, 4, '056S64', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (137, 40, 27, 1, '023L12', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (138, 28, 6, 4, '129C46', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (139, 7, 59, 5, '103E17', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (140, 39, 15, 3, '126Q52', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (141, 5, 85, 1, '163B73', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (142, 21, 11, 3, '130B61', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (143, 17, 52, 4, '121H12', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (144, 50, 65, 4, '059S78', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (145, 18, 56, 3, '159B92', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (146, 26, 56, 5, '081W15', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (147, 9, 96, 5, '114N11', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (148, 23, 40, 3, '077Z10', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (149, 1, 28, 2, '021W72', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (150, 44, 85, 3, '116H21', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (151, 42, 40, 4, '119R63', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (152, 10, 54, 2, '149X32', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (153, 4, 99, 1, '002Q22', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (154, 29, 86, 2, '166U98', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (155, 42, 78, 4, '030M66', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (156, 44, 2, 5, '028U63', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (157, 45, 15, 5, '083X85', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (158, 22, 29, 4, '079U94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (159, 12, 19, 4, '039Q77', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (160, 39, 14, 2, '165H54', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (161, 34, 21, 1, '126T16', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (162, 34, 97, 3, '174N15', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (163, 50, 46, 4, '167R84', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (164, 30, 9, 1, '151O87', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (165, 37, 57, 1, '044V43', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (166, 43, 93, 4, '076L00', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (167, 28, 95, 3, '172C04', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (168, 6, 82, 5, '058Q41', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (169, 14, 41, 2, '086Z15', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (170, 29, 37, 5, '081M79', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (171, 30, 41, 4, '173Y35', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (172, 44, 69, 4, '116K26', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (173, 20, 26, 2, '053Z03', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (174, 11, 93, 1, '136F85', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (175, 4, 45, 3, '034Z76', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (176, 11, 67, 4, '168O96', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (177, 2, 42, 4, '198S33', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (178, 12, 48, 2, '162R26', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (179, 42, 83, 4, '190Z36', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (180, 4, 95, 3, '011T78', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (181, 5, 76, 2, '119L47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (182, 31, 17, 3, '198R52', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (183, 48, 100, 4, '111R94', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (184, 48, 92, 3, '003P74', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (185, 16, 53, 4, '102K28', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (186, 38, 45, 3, '077Y92', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (187, 11, 4, 2, '139D10', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (188, 17, 93, 4, '097T44', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (189, 14, 55, 3, '120V29', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (190, 46, 7, 2, '127E69', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (191, 1, 78, 1, '155F66', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (192, 14, 59, 1, '086C71', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (193, 50, 54, 2, '168Q47', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (194, 20, 52, 1, '168R83', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (195, 49, 76, 3, '109J33', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (196, 9, 84, 5, '129S07', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (197, 47, 32, 1, '110K81', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (198, 10, 28, 4, '038C75', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (199, 45, 79, 1, '087A33', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.copies VALUES (200, 4, 99, 2, '046T71', '2019-04-28 23:36:40', '2019-04-28 23:36:40');


--
-- TOC entry 3021 (class 0 OID 38449)
-- Dependencies: 226
-- Data for Name: readers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.readers VALUES (1, 'staff', 'Shania Wintheiser', '778 Amos Ford
Dagmarberg, NY 79679', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (2, 'student', 'Cyrus Hill', '36490 Auer Islands Apt. 330
Clevelandhaven, TN 50134-7556', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (3, 'other', 'Moses Schroeder', '92423 Deckow Land Suite 302
Schmidttown, ME 04614', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (4, 'student', 'Jarvis Ondricka', '386 Williamson Parks
Weldonmouth, NY 06996-2586', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (5, 'student', 'Larissa Bauch', '823 Trevion Field
Aufderharshire, NC 65234-9652', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (6, 'student', 'Lempi Ruecker', '7735 Russel Tunnel Apt. 459
Lake Sid, RI 30579', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (7, 'student', 'Zakary Ankunding', '2150 Harris Pass
Kavonborough, PA 57009-5354', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (8, 'student', 'Mikayla Runolfsson', '847 Jacky Hills Suite 522
North Rosetta, AL 04917-6593', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (9, 'senior citizen', 'Diana Schoen', '7684 Lowe Ranch Suite 615
Connfurt, HI 26312-9475', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (10, 'staff', 'Cassidy Funk', '3183 Anderson Lodge Apt. 065
Port Dock, KY 22056-9253', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (11, 'other', 'Ozella Trantow', '9534 Sipes Locks
West Dandre, IL 88511-1724', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (12, 'student', 'Kelley Fritsch', '98366 Greenholt Common Apt. 368
Port Alysahaven, NC 46171', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (13, 'senior citizen', 'Carmela Stokes', '8728 Johnston Summit Suite 909
New Marjorie, KY 18226-8556', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (14, 'staff', 'Jamel Mueller', '4586 Osinski Walk
Laurettashire, OR 06026-8000', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (15, 'student', 'Susan Becker', '339 Jacobson Lane Apt. 054
New Queen, AZ 17163-2239', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (16, 'other', 'Barry Ullrich', '6535 Florine Bridge
South Howellberg, MT 68441', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (17, 'other', 'Moises Lowe', '88604 Auer Lane Apt. 311
Batzport, UT 83419', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (18, 'student', 'Erin Hilpert', '7962 Mateo Views
Port Damion, AK 83285-1415', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (19, 'student', 'Reva Dickens', '36502 Karlie Falls Suite 527
Hettingerbury, CA 28499-4342', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (20, 'senior citizen', 'Vita Rodriguez', '76712 Alford Stream
Lake Laurabury, NV 96118', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (21, 'student', 'Jude Purdy', '43960 Renner Extensions Suite 151
Port Janisport, TX 21954-8851', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (22, 'staff', 'Estrella Dare', '5855 Strosin Views Apt. 425
Sigridhaven, NY 69683', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (23, 'staff', 'Luna Hickle', '28955 Sauer Islands Suite 276
Lorenzville, OK 86498', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (24, 'other', 'Laverna Hammes', '2810 Mafalda Canyon Suite 739
Walshland, OR 29911', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (25, 'other', 'Cade Heathcote', '40144 Destiney Freeway
Donnellyberg, WY 23695', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (26, 'staff', 'Unique Farrell', '185 Jeff Inlet Apt. 133
East Clemmieville, CO 50655-0824', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (27, 'student', 'Mauricio Weber', '5316 Ward Grove
Zanderview, NY 83325-4651', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (28, 'student', 'Adolphus Jaskolski', '97336 Yesenia Ville
Leuschkemouth, UT 11700-8878', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (29, 'senior citizen', 'Martin Schneider', '17096 Stiedemann Inlet
Lake Braedenport, ND 21456-9570', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (30, 'other', 'Dorothea Brekke', '687 Stanton Motorway
Spinkaside, DE 89101', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (31, 'senior citizen', 'Cecil Jaskolski', '196 Marques Cliff
South Joana, FL 68380', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (32, 'student', 'Adele Klein', '19088 Bechtelar Stravenue Suite 607
Port Georgianna, MN 01543', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (33, 'other', 'Cleta Carroll', '56262 Mario Lights Suite 637
North Johann, GA 61887-2316', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (34, 'other', 'Carole Windler', '389 Roob Green
Treutelmouth, ME 43145-0110', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (35, 'student', 'Jonatan Bosco', '1905 Josh Tunnel
Hilperthaven, VT 22314-4662', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (36, 'student', 'Audreanne Fadel', '8395 Armstrong Ports
Reynoldside, GA 30433-0990', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (37, 'student', 'Kylee Jenkins', '68827 Beth Viaduct
North Friedrich, ME 65818', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (38, 'senior citizen', 'Zoila Wilderman', '64971 Kling Lodge Apt. 367
Ratkeland, UT 88794-9218', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (39, 'senior citizen', 'Jennyfer Kunze', '7801 Bergnaum Plaza
Assuntafurt, FL 53616-8234', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (40, 'other', 'Frank Cormier', '4029 Murphy Ridge Suite 463
Lake Leopoldoborough, NJ 27394', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (41, 'student', 'Judson Farrell', '46028 Leffler Walks
West Wilbertfort, GA 32602-2518', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (42, 'senior citizen', 'Anahi Bruen', '572 Betsy Mount Apt. 614
Port Mandybury, WI 90561-6807', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (43, 'student', 'Lois Rogahn', '781 Ferry Ways Apt. 725
Huelston, WV 04605', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (44, 'student', 'Jadon Ankunding', '1945 Alberto Well Apt. 324
Lake Flavio, VT 08192-0131', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (45, 'staff', 'Patrick Hamill', '6646 Jewell Mills Suite 246
Port Katarina, MS 62664', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (46, 'student', 'Lazaro Abshire', '3205 Koss Glens Apt. 167
New Macyfort, SC 75031-3866', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (47, 'student', 'Elinore Fritsch', '35953 Walsh Forks Suite 947
Tatyanaside, MI 79384', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (48, 'senior citizen', 'Vivianne Moen', '96475 Jennie Knolls
Blandashire, AR 81459', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (49, 'student', 'Eldred Baumbach', '32831 Lucinda Island Suite 960
Gunnarburgh, HI 79165', '2019-04-28 23:36:40', '2019-04-28 23:36:40');
INSERT INTO public.readers VALUES (50, 'student', 'Constantin Mann', '41308 Miller Dale
West Ilianahaven, CO 61326-7103', '2019-04-28 23:36:40', '2019-04-28 23:36:40');


--
-- TOC entry 3025 (class 0 OID 38478)
-- Dependencies: 230
-- Data for Name: borrows; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.borrows VALUES (1, 12, 44, 36, 2, '2019-04-28 23:36:41', '2020-02-16 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (2, 35, 39, 94, 2, '2019-04-28 23:36:41', '2020-01-05 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (3, 19, 31, 17, 3, '2019-04-28 23:36:41', '2019-11-17 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (4, 26, 30, 41, 4, '2019-04-28 23:36:41', '2019-08-18 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (5, 12, 11, 4, 2, '2019-04-28 23:36:41', '2019-08-04 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (6, 41, 44, 41, 4, '2019-04-28 23:36:41', '2020-01-19 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (7, 43, 5, 18, 3, '2019-04-28 23:36:41', '2019-06-30 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (8, 43, 44, 2, 5, '2019-04-28 23:36:41', '2019-06-30 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (9, 23, 14, 55, 3, '2019-04-28 23:36:41', '2019-12-01 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (10, 22, 1, 94, 3, '2019-04-28 23:36:41', '2019-06-09 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (11, 48, 8, 41, 3, '2019-04-28 23:36:41', '2019-12-08 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (12, 39, 46, 66, 2, '2019-04-28 23:36:41', '2020-03-01 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (13, 12, 47, 75, 3, '2019-04-28 23:36:41', '2019-09-15 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (14, 29, 34, 17, 5, '2019-04-28 23:36:41', '2019-12-29 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (15, 1, 6, 82, 5, '2019-04-28 23:36:41', '2019-06-16 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (16, 48, 48, 24, 4, '2019-04-28 23:36:41', '2019-12-15 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (17, 20, 17, 27, 5, '2019-04-28 23:36:41', '2019-11-10 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (18, 2, 13, 22, 5, '2019-04-28 23:36:41', '2019-09-22 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (19, 44, 42, 88, 2, '2019-04-28 23:36:41', '2019-10-13 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (20, 3, 40, 35, 3, '2019-04-28 23:36:41', '2019-12-22 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (21, 27, 37, 65, 5, '2019-04-28 23:36:41', '2019-11-17 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (22, 45, 1, 78, 1, '2019-04-28 23:36:41', '2019-10-06 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (23, 14, 23, 97, 1, '2019-04-28 23:36:41', '2020-02-23 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (24, 34, 2, 22, 5, '2019-04-28 23:36:41', '2019-05-26 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (25, 36, 47, 32, 1, '2019-04-28 23:36:41', '2019-12-08 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (26, 43, 36, 69, 2, '2019-04-28 23:36:41', '2019-10-27 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (27, 47, 48, 55, 3, '2019-04-28 23:36:41', '2020-01-19 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (28, 24, 2, 68, 3, '2019-04-28 23:36:41', '2019-05-26 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (29, 7, 45, 20, 5, '2019-04-28 23:36:41', '2020-01-12 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (30, 9, 4, 99, 2, '2019-04-28 23:36:41', '2019-06-16 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (31, 35, 50, 46, 4, '2019-04-28 23:36:41', '2019-10-20 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (32, 49, 29, 37, 5, '2019-04-28 23:36:41', '2019-10-06 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (33, 38, 42, 88, 2, '2019-04-28 23:36:41', '2020-02-09 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (34, 10, 23, 67, 4, '2019-04-28 23:36:41', '2019-05-05 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (35, 7, 44, 82, 1, '2019-04-28 23:36:41', '2019-11-24 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (36, 8, 40, 27, 1, '2019-04-28 23:36:41', '2019-07-28 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (37, 8, 10, 28, 2, '2019-04-28 23:36:41', '2019-06-02 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (38, 1, 36, 69, 2, '2019-04-28 23:36:41', '2020-02-09 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (39, 13, 45, 39, 1, '2019-04-28 23:36:41', '2019-09-01 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (40, 12, 6, 82, 5, '2019-04-28 23:36:41', '2019-09-29 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (41, 48, 25, 96, 2, '2019-04-28 23:36:41', '2020-04-05 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (42, 8, 48, 29, 5, '2019-04-28 23:36:41', '2019-05-05 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (43, 14, 24, 26, 1, '2019-04-28 23:36:41', '2020-01-26 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (44, 28, 1, 28, 2, '2019-04-28 23:36:41', '2019-07-21 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (45, 31, 19, 18, 3, '2019-04-28 23:36:41', '2020-01-19 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (46, 17, 8, 41, 3, '2019-04-28 23:36:41', '2020-02-23 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (47, 28, 3, 49, 4, '2019-04-28 23:36:41', '2019-11-03 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (48, 18, 50, 46, 4, '2019-04-28 23:36:41', '2020-04-12 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (49, 33, 28, 59, 3, '2019-04-28 23:36:41', '2019-06-16 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.borrows VALUES (50, 16, 23, 40, 3, '2019-04-28 23:36:41', '2020-03-01 23:36:41', '2019-04-28 23:36:41', '2019-04-28 23:36:41');


--
-- TOC entry 3009 (class 0 OID 38358)
-- Dependencies: 214
-- Data for Name: chief_editors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.chief_editors VALUES (1, 'Filiberto', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.chief_editors VALUES (2, 'Zetta', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.chief_editors VALUES (3, 'Koby', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.chief_editors VALUES (4, 'Niko', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.chief_editors VALUES (5, 'Sandra', '2019-04-28 23:36:41', '2019-04-28 23:36:41');


--
-- TOC entry 3007 (class 0 OID 38340)
-- Dependencies: 212
-- Data for Name: journal_issues; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.journal_issues VALUES (1, 41, 1, 'Illo nihil beatae dicta eveniet nobis modi. Aut ut veniam quia vel. Necessitatibus ratione aut nobis molestiae incidunt. Qui non fugiat voluptas. Dolorem ad qui dolorum est provident. Ea tempore et voluptate et ab qui. Quia optio dicta magni. Quis qui qui dignissimos ut. Ea suscipit laborum nam rem. Tenetur beatae explicabo voluptas cumque et perferendis dolor. Aut quibusdam maxime voluptatem numquam occaecati. Quia optio velit cum hic exercitationem harum ut.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (2, 14, 7, 'Aut placeat minus libero doloribus rerum. Est consequatur rerum quis quidem eos reiciendis. Sed magnam consequuntur dolore commodi tempore eius ipsam. Et dolor facilis numquam culpa minus. Voluptates repudiandae et eaque nemo nobis officia. Et cum veniam laudantium eos rem consequuntur. Quis deserunt qui soluta. Molestias explicabo iusto quidem mollitia. Velit qui et quam et fugit recusandae.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (3, 14, 8, 'Ut tenetur omnis est esse beatae. Fuga quisquam voluptatem fugit occaecati recusandae. Quo quae sed iste suscipit minima nihil quia. Velit deleniti in ea ut consequuntur. Veniam omnis non sed sed porro magnam. Suscipit in distinctio voluptas minus placeat qui aut. Id molestias praesentium aspernatur doloribus voluptas quasi. Nemo ducimus accusamus vel pariatur ex ducimus. Et praesentium expedita deserunt. Dolor cumque vitae culpa pariatur id. Animi veniam odio corrupti laudantium.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (4, 36, 3, 'Quis distinctio laudantium natus et et. Odio aut qui aut praesentium nulla itaque aliquam dolores. Commodi est et quidem. Repellat ut accusamus ad nulla quidem. Rerum qui quia quia optio voluptates. Placeat animi corporis eligendi necessitatibus exercitationem cum illo. Quis voluptatem placeat eius doloribus necessitatibus. Dolor occaecati debitis ratione quo.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (5, 41, 2, 'Nihil debitis qui tenetur voluptatem. Voluptas non molestiae dignissimos eos veniam aliquid non quas. Tenetur eligendi iure quos ratione repellat. Ut non ut unde occaecati. Ipsum cumque voluptas quidem placeat necessitatibus aut. Eligendi aut quam quis provident quo quia. Voluptas vitae eius ea fuga qui facere. Incidunt autem quia id. Et repellat ducimus harum aut aliquid. Exercitationem et fugiat sed voluptates excepturi accusamus. Beatae quos sequi dolores.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (6, 10, 6, 'Voluptatem dolore voluptate rem possimus nobis officia. Illo eos et veritatis placeat sunt fugiat reprehenderit. Voluptatibus aliquam culpa quam dicta omnis dignissimos velit. Similique cum dolorem perspiciatis. Ratione quae at delectus laboriosam. Sed cum esse sit nihil incidunt. Voluptatem nam sint iste. Velit ab omnis nostrum sequi dolorem exercitationem. Assumenda eaque enim et. Rerum vero cupiditate qui dolorem est id consectetur cupiditate. Voluptas hic voluptatem fuga temporibus.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (7, 6, 1, 'Dolores aut ducimus accusamus expedita. Perferendis omnis laudantium et id. Et dignissimos ad asperiores voluptatem accusantium vel autem. Exercitationem aliquid non aliquam quo. Soluta aut qui molestiae sequi. Et soluta sit sunt dolorem explicabo quod ea. Quae illo facilis sint totam consequatur.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (8, 10, 7, 'Quos natus totam quasi facilis provident. Dolorem dolorem earum qui eligendi dolores. Et quos asperiores eum earum. Dignissimos voluptate maiores sapiente sunt nesciunt atque accusamus. Et fuga et eligendi aut id. Suscipit reprehenderit cupiditate dolores voluptates voluptatem impedit. Quo et atque delectus earum cum beatae. Alias asperiores aliquid unde ut nemo dicta. Ea occaecati iure animi asperiores tempore vitae libero quo.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (9, 36, 7, 'Vel aut tempore veniam aliquid quia labore. Necessitatibus ut odio enim nobis ex. Maiores illum vel et tempore alias consequuntur. Omnis laborum aut qui ut error dolorem dolor odit. Perspiciatis maxime earum earum molestias at. Autem optio aliquam adipisci sit officia praesentium unde. Sunt vel impedit sunt ipsum. Nam voluptatem est et dolorum eos. Qui occaecati beatae animi. Laboriosam est quisquam impedit quos itaque et dolorem nemo. Sunt velit velit amet et omnis.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (10, 45, 1, 'Ut dolores itaque aut est rerum laborum maiores a. Recusandae occaecati sint illum sunt nihil dolorem. Suscipit cumque rem et est ipsam nobis. Magnam sapiente et nisi et omnis excepturi vel. Enim nostrum repellat officia laborum quo eligendi. Et quam neque in rerum quo molestias. A molestias optio quo quam. Eos est fugit beatae et ex. Molestiae qui qui ut accusantium. Possimus et voluptatem dolorem nisi. Doloribus sed dolor est exercitationem labore.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (11, 41, 3, 'Molestiae voluptates delectus ab et unde. Quidem maxime corrupti adipisci exercitationem. Ducimus porro sunt dolor dolore exercitationem. Animi dolorum sit qui. Ut ut maiores ipsam et consequatur quis dolorum est. Modi quis earum velit culpa vero at. Cum voluptatibus dicta necessitatibus quae. Veniam qui minima et tempore minus corporis tempore. Earum repellat nobis aut voluptatem libero. Quia neque vel aliquid officia placeat eveniet eum.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (12, 45, 4, 'Quibusdam quis sit possimus amet dolor sunt repudiandae. Fugit quibusdam sunt recusandae dolores tenetur eum error. Nemo enim aliquam enim vitae laborum aliquam. Omnis occaecati illum commodi iure sit reprehenderit. Dolorem ratione et quas ea ducimus architecto. Laboriosam ipsum exercitationem animi numquam. Assumenda et voluptatem tempore culpa.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (13, 14, 2, 'Cumque consequatur possimus et vero cumque distinctio qui. Sunt consequatur culpa facilis omnis qui animi. Autem illo repellendus qui sunt perferendis. Velit officiis earum sint impedit est. Neque voluptates earum non sunt nemo labore quia. Libero vel cumque ab cum nulla nesciunt. Eos et cumque perspiciatis aspernatur deleniti dolorem excepturi.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (14, 49, 4, 'Sequi asperiores impedit et. Repellendus commodi delectus unde possimus. Quis autem qui quas assumenda a soluta nesciunt vero. Quia assumenda qui aut est. Nesciunt accusamus voluptates necessitatibus et aliquam. Sunt consequatur optio distinctio quaerat. Ut totam rerum distinctio sed est eum. Ab dolores illo recusandae id accusantium libero corrupti.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (15, 48, 6, 'Ab ducimus ex rem non corrupti. Saepe at aliquam iste recusandae nisi porro adipisci. Et nostrum adipisci facere nam. Quos sapiente et soluta nobis. Id assumenda aspernatur dolores. Ea molestiae consequatur voluptas reiciendis eum iusto at. Qui tenetur hic nulla voluptas voluptas assumenda. Qui magni ullam neque impedit nihil mollitia qui tenetur. Eligendi corporis consectetur nisi quo voluptatem et. Id doloremque non et maiores.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (16, 32, 3, 'Excepturi aspernatur vitae neque. Vitae ut dolore ut sit. Quisquam ut incidunt quidem laboriosam ut. Vel minima molestiae earum eaque veniam veritatis provident. Quos quis ab eum non. Consequuntur magnam molestiae voluptas in aperiam. Magni repellat fugiat dicta aut non aut. Quo deleniti harum excepturi explicabo incidunt. Qui ut cupiditate delectus autem molestiae ea sint. Vel tenetur omnis rerum itaque et in.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (49, 49, 10, 'Et et et cupiditate reprehenderit voluptatem porro. Sed et qui in dignissimos nesciunt. Rerum modi quaerat est repudiandae. Totam ut nobis vel occaecati et. Sit velit eius esse est eos consectetur qui est. Voluptas explicabo quas occaecati et nulla. Officiis aut ad velit et. Asperiores quidem voluptate est. Deserunt rerum quibusdam consequatur accusamus.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (17, 45, 10, 'Voluptas aspernatur saepe commodi nulla. Commodi recusandae reiciendis distinctio voluptatum iusto et. Totam non ipsum quidem aut quo debitis ut. Impedit vitae fuga ut cumque dolorum. Et nisi quae aliquam. Voluptates voluptate voluptatem eaque adipisci. Deleniti vel culpa est labore. Recusandae quia aut architecto sunt minus perspiciatis enim. Quia vel ipsum qui animi consequuntur corrupti similique iusto.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (18, 48, 3, 'Est pariatur repudiandae repellat aliquid. Enim nesciunt et quis neque minima. Aperiam consequuntur officia eos. Aliquam quas ipsa reprehenderit est. Sapiente laudantium tempora quia aperiam neque vel. Rerum nihil earum illo id sapiente quisquam. Necessitatibus officia ut ipsam aut et ut. Velit earum minima eos impedit vero. Error totam sit possimus ratione quia fugit temporibus. Laborum non non doloremque consectetur beatae dolorem. Et quo voluptatum et corporis sed cumque fugiat.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (19, 32, 4, 'Et aut et placeat quo labore eum quis ad. Rerum facilis ut ratione nemo fugit. Soluta vel placeat est consequatur molestiae. In ab esse nulla. Nihil qui quis quia nulla molestiae sit. Consectetur rerum ut aperiam quas nostrum mollitia autem. Est commodi ad itaque numquam nulla harum. Laudantium modi ducimus ad ipsa ipsa magni et. Provident deserunt consequatur ea explicabo corporis id. Eius recusandae illo omnis quae ut voluptatem eaque esse. Sunt repellendus qui repudiandae vitae.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (20, 49, 9, 'Suscipit praesentium est non. Quos est id velit ut. Soluta eum dicta animi repellendus architecto repellendus accusamus. Voluptatem sed repudiandae et enim perspiciatis voluptatibus est deleniti. Quis doloribus necessitatibus quidem animi suscipit. Tenetur assumenda magnam dolor quod voluptatem quae dolorem accusamus. Maxime et sed deleniti odit qui impedit.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (21, 10, 2, 'Dolore praesentium aliquam rerum nisi voluptatem sed praesentium. Qui minus sequi quo rerum. Et corporis repudiandae sunt. Magnam perferendis voluptatum modi beatae tempora nemo eos. Ratione vero vel magnam tenetur molestiae non iusto. Dolores aut sed unde omnis est laboriosam ducimus consequuntur. Earum qui dolores natus ea. Ea quas possimus illum nihil magni quidem consequatur dolorem.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (22, 32, 2, 'Cum nemo quo aliquid quia ut amet. Aut asperiores sed voluptas voluptas deserunt est. Iste consequuntur necessitatibus sunt et adipisci necessitatibus omnis. Ad architecto nihil aut eos illum vel. Praesentium suscipit excepturi et rerum. Qui provident nobis tenetur minima dolore aut et. Distinctio suscipit velit temporibus ut id iusto esse qui. Cupiditate error fugit perferendis. Provident earum corrupti alias consequuntur et.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (23, 48, 7, 'Laudantium qui ea aut error debitis id natus. Beatae molestiae aut amet assumenda omnis et. Sit voluptatum eos ratione quas. Natus rerum nihil ipsum enim. Dolor dicta veritatis incidunt vel consequatur autem eaque. Cupiditate doloremque earum fugit laborum. Qui velit quas qui excepturi. Recusandae harum in fugit voluptas vero eveniet sit. Hic aliquid itaque voluptas quibusdam corporis. Voluptatibus ut quo ullam quaerat sed repellendus natus.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (24, 32, 1, 'Quibusdam aperiam doloribus necessitatibus porro. Cupiditate voluptas voluptatem tempora dolore possimus accusamus beatae. Molestiae dolor doloribus harum voluptas odit rerum consequatur. Amet qui dolorem ut non. In reiciendis animi modi libero illo mollitia non. Facilis atque placeat vel rem esse porro in atque. Quos id eum explicabo quam vel a consequatur. Porro quia quam ut fugiat officiis. Dolorum tenetur voluptatem in tempore esse qui ea. Ut qui non atque ut assumenda dolorum.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (25, 10, 10, 'Facilis ducimus magni dignissimos. Ullam ut fugiat omnis omnis quis numquam. Quia et optio voluptas delectus voluptas eaque. Quo placeat et in incidunt rerum nihil. Omnis aut et laudantium consectetur inventore dolorum velit. Nulla et inventore aut et aut ipsam necessitatibus. Sint vel blanditiis qui. Qui officia ea dolorem sed et cumque. Incidunt occaecati aspernatur non repudiandae. Veniam non aut natus molestias non. Ex voluptatem quaerat harum ea. Voluptatibus voluptatem est quidem non.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (26, 14, 5, 'Cum atque eum adipisci voluptatem qui alias. Unde sit voluptas in vero ut et ratione. Laboriosam beatae doloremque similique accusamus vel. Sed fuga totam sunt sed sunt aut rem harum. Omnis et quia temporibus dolorem minima delectus. In culpa excepturi qui necessitatibus modi. Enim nobis eveniet nihil atque itaque quas atque facilis. Qui deleniti ut et commodi reprehenderit. Dolorem perferendis aut autem. Distinctio aut harum doloribus nobis.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (27, 48, 8, 'Tenetur harum excepturi esse sunt. Omnis fuga et nobis eligendi. Accusamus quis alias illum quas. Ut minima consequuntur tenetur quia quisquam aut laudantium. Debitis nihil in et recusandae fuga nam. Explicabo consequatur reiciendis quia perspiciatis. Ea ut asperiores eos nesciunt. Et ut inventore est distinctio. Provident temporibus dolores ut fugiat qui quis.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (28, 36, 8, 'Et alias vitae sint corrupti maiores velit. Fuga et suscipit aliquam doloribus soluta eos. Adipisci quibusdam voluptatem repellendus quo. Consectetur nihil et veritatis et. Non dolore culpa aperiam debitis ducimus. Autem sed voluptate ab reprehenderit eius quasi minima. Et impedit ut error cum. Ut id ullam repudiandae assumenda quia consequatur. Amet repellat vitae error natus eveniet repellendus dignissimos nam. Sed velit sit velit consectetur. Qui reprehenderit et aut labore.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (29, 41, 5, 'Optio fuga architecto molestias ut. Qui beatae harum veritatis ipsum nulla eum pariatur. Incidunt aspernatur excepturi et at vel omnis hic. Quas ea et facere aliquid sunt. Eum et qui molestias corporis quisquam et eaque. Iste id numquam animi. Earum consequatur quae vitae veniam eum voluptas excepturi aut. Dolorem nisi enim voluptas animi ut error. Eum distinctio commodi est quod. Voluptatem amet quod est distinctio. Velit iure voluptatibus eos.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (30, 49, 7, 'Exercitationem sed a molestias libero voluptatem incidunt et. Adipisci reprehenderit est animi iusto iure vel. Ipsum temporibus consequatur illo ut magnam. Eum in magni cum quos blanditiis. Consequatur eos aut sed qui et et enim. Iste eum suscipit consectetur sequi alias. Dolorem voluptatem dolorem amet nulla perferendis eius. Molestiae et quis quis sunt delectus molestiae sapiente. Et impedit possimus facere quam qui dicta quam. Velit dolores nihil ipsa.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (31, 41, 8, 'Aliquam et et quia nihil. Quia rerum ut totam dolores quis a. Quod qui ea corporis ipsa omnis corporis. Omnis enim eius quaerat saepe. Expedita quo numquam rerum animi tempore occaecati rerum aut. Aut consequatur impedit excepturi in doloribus delectus. Sed esse facilis sunt sapiente dolorem vel. Delectus alias veritatis enim occaecati aut dolores sunt. Sint omnis tempore et beatae perspiciatis deserunt qui incidunt. Est vel non magnam sapiente cupiditate necessitatibus eos.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (50, 10, 1, 'Est ut cum dolore aut quae. Unde ex sed quam id reiciendis neque. Reprehenderit aut qui eveniet reprehenderit quia fugit. Sunt eum repellendus ea. Quia et aut aut illum voluptate natus. Consequatur atque est omnis eum cum reprehenderit. Aut minima beatae sit esse quia. Quo vitae natus voluptas enim commodi distinctio temporibus. Eveniet adipisci ab iste incidunt repellat et.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (32, 48, 10, 'Sunt aliquam iure ducimus ut quod ipsa. Quae eum sapiente ratione nisi nisi placeat. Voluptas atque qui labore. Exercitationem repellat fugiat sapiente modi qui quam aliquam est. At non molestias ipsum nihil nihil fuga velit maxime. Hic illo aut id provident eos. Corporis labore deleniti autem et sit. Quam expedita cumque ipsum consequatur. Sed qui vel at dolorem optio quo. Consectetur ut sed nihil aut. Ea aspernatur tempora ipsa. Possimus voluptas id quas est qui porro.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (33, 6, 9, 'In consectetur adipisci et nihil. Quo est mollitia omnis sit est recusandae non laudantium. Beatae delectus hic minima est. Animi ut iure qui qui consequatur non incidunt est. Quisquam cum aut odit. Beatae impedit quis dolore ea in deleniti voluptatibus quos. Placeat et est quis tempora. Adipisci aspernatur quia vel beatae. Incidunt doloribus eligendi quod maxime sit rem itaque. Eveniet incidunt aut vero voluptates minus. Sit voluptas et provident ut et. Vero et illum debitis delectus optio in.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (34, 36, 10, 'Tenetur adipisci accusantium officia. Animi porro sit assumenda magnam quo ut. Quis nam deserunt doloribus quae qui laborum nemo. Qui ipsum nobis iste quidem beatae blanditiis asperiores. Eius assumenda et recusandae veniam dignissimos odio quaerat. Consequatur iure fugit facilis perspiciatis ea. Ipsa est rerum quam odio non.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (35, 7, 4, 'Sunt ducimus dolorem et distinctio sapiente voluptate distinctio sed. Quidem esse aliquam in totam blanditiis ut. Officiis labore accusamus ab debitis possimus provident cum. Quidem dolorem harum et architecto nisi. Quia praesentium et cum dolores ut doloremque. Sit ut voluptates et ipsa saepe ex hic. Tempore voluptates quo blanditiis officiis. Culpa ut a accusamus ea dignissimos quas. Et aut quia libero.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (36, 45, 6, 'Et dignissimos iusto neque nesciunt magni occaecati tenetur qui. Ipsa animi aut nihil rerum voluptates sed officiis. Ducimus voluptatem culpa dolor quibusdam vero in. Illum est quis tenetur voluptatem est perferendis. Voluptates qui placeat possimus. Qui corrupti voluptatem nobis debitis sint possimus vel praesentium. Placeat est ipsum totam ut consequatur. Magnam occaecati labore eius ullam officiis laborum voluptatem.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (37, 14, 4, 'Sed qui voluptas quasi et facere fuga quod commodi. Nulla quia enim unde quos nam sequi qui. Maxime voluptate nesciunt quis quaerat doloribus aliquid. Error tempora eius sequi nam architecto ex. Saepe quaerat eius consequatur magni omnis. Facilis perferendis aut eaque similique. Aut enim asperiores est voluptas numquam ullam et. Rerum quidem quia a et commodi cum magni. Voluptatibus vero excepturi placeat nam a quo aspernatur.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (38, 36, 4, 'Esse illum quisquam unde. Eos illum non quos ut fuga. Provident mollitia doloremque consequuntur animi. Labore aut quibusdam sit necessitatibus ad. Dolorem itaque dolores mollitia minus facilis. Nulla voluptatem ut repellendus tenetur iure aliquid sed et. Sed repellendus sed libero placeat. Laudantium omnis iste eaque accusantium dolor aut. Quaerat qui et qui facilis. Non molestiae labore esse numquam voluptatem nemo.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (39, 7, 6, 'Quis voluptas voluptas asperiores sapiente qui numquam. Nisi odio nulla repellendus nemo minus temporibus sit. Sed quia asperiores ipsa dolor illo. Vitae blanditiis dolores fuga rerum. Dolorum vel temporibus necessitatibus. Labore exercitationem hic dolorem deserunt. Vitae rerum suscipit quibusdam sunt. Nihil ut recusandae temporibus recusandae. Eum eum sint eum sunt fugit.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (40, 6, 4, 'Architecto recusandae ipsam vel eos ad dicta tenetur. Eaque magni sit rerum qui cum quo dolorem. Similique est esse quia laboriosam enim omnis. Alias eligendi magnam culpa nam. Aut saepe aut debitis praesentium beatae quis. Ipsum nostrum incidunt quia molestiae nihil necessitatibus et. Dolor consequatur dolor itaque ut quibusdam praesentium. Et eum voluptates et eum facere deserunt beatae voluptatum.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (41, 10, 9, 'Officia esse culpa id molestias vero vitae vel. Et voluptate est iure voluptatem rerum. Voluptates aliquam quisquam mollitia nostrum. Voluptatem dolor veritatis aut ut in magnam omnis. Enim quibusdam et repudiandae accusamus aut. Odit rerum sed natus amet eos. Expedita voluptates sit impedit et ut aut voluptatem officiis. Et cumque maxime deserunt et dolore.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (42, 49, 1, 'Voluptatem non nesciunt perferendis hic omnis iusto. Velit sapiente dolor in necessitatibus repellendus hic culpa. Quo voluptatum iure optio recusandae recusandae. Veritatis quas atque porro nihil voluptatibus quasi officiis. Ducimus nihil dicta nostrum placeat et atque animi provident. Repellat aut aperiam necessitatibus quia earum optio neque.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (43, 14, 10, 'Saepe molestiae quibusdam nesciunt dignissimos cupiditate. Velit odio assumenda et quo vel itaque. Assumenda odio velit corrupti veniam harum. Eveniet veritatis aut eum repellendus. Libero illum temporibus quibusdam possimus reprehenderit nostrum rerum. Ut ipsa earum nobis. Architecto reiciendis ipsam quo laboriosam. Ut facere tempore saepe non ut.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (44, 7, 7, 'Nisi et deleniti inventore est dolores ullam possimus. Exercitationem enim pariatur quia autem ea amet. Fugit et quia commodi quis officia. Suscipit est qui illo ut fugit voluptatem provident tenetur. Eaque laborum ut similique ut. A nulla illum vitae vel quisquam saepe voluptas. Quo et dolore voluptatum odit reprehenderit quas.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (45, 14, 3, 'Consequatur deleniti qui occaecati quis officia. Rem dignissimos aut dolores adipisci. Sint adipisci aspernatur eos aperiam. Qui ut deserunt ipsum nesciunt beatae aut. Consequatur quis sint sed tenetur autem occaecati consequatur nihil. Unde quo nemo id. Reprehenderit dolores autem molestiae aut ducimus architecto et voluptatibus. Dolorem ut qui velit quasi. Amet alias nam iure voluptate. Ipsam maiores et quis aut velit et iste.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (46, 36, 1, 'Rerum est qui minus mollitia voluptates. In quod ipsum qui velit. Adipisci placeat hic ut sit doloribus. Animi blanditiis libero consequuntur vel modi omnis magni voluptas. Architecto velit tempore officia. Et error illo fugiat corporis doloribus. Accusamus laudantium sint consequatur architecto culpa numquam sit. Laboriosam sequi officia commodi explicabo provident nulla. Vel culpa velit aut at voluptas accusamus dolorem ipsa. Architecto ut sed eum omnis aut.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (47, 6, 2, 'Itaque maxime ea distinctio voluptatum accusantium nihil. Est excepturi libero dolore aut dolor. Pariatur qui et minima veniam. Ex optio eos ad fugit provident repellendus. Aperiam nesciunt modi cumque error alias ad. Earum aut magnam at qui laboriosam ipsum corrupti. Ducimus voluptatem dolor eum id ex quis. Quis qui veniam non debitis blanditiis sint. Sequi dolores aut sapiente doloremque ut.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.journal_issues VALUES (48, 45, 7, 'Facere blanditiis quos sed est consequatur quia. Ut rerum fugiat enim deleniti a autem est alias. Delectus ipsam ut omnis veniam. Qui sunt qui temporibus quod sed laboriosam iste. Saepe laboriosam placeat natus molestias dolores dolorem beatae voluptate. Porro ducimus est delectus eum neque quibusdam. Sit sequi deleniti iusto. Voluptate reiciendis sunt id et.', '2019-04-28 23:36:42', '2019-04-28 23:36:42');


--
-- TOC entry 3011 (class 0 OID 38366)
-- Dependencies: 216
-- Data for Name: inv_editors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.inv_editors VALUES (1, 10, 10, 'Delmer Borer', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (2, 49, 10, 'Leonardo Luettgen', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (3, 49, 7, 'Reina Grady', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (4, 49, 10, 'Horace Wilderman', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (5, 32, 4, 'Dawson Feest', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (6, 10, 9, 'Humberto Nienow', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (7, 10, 10, 'Zula Hessel', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (8, 45, 4, 'Margot Wintheiser', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (9, 10, 1, 'Maximillia Waters', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (10, 45, 6, 'Wanda Schulist', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (11, 41, 8, 'Garett Hartmann', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (12, 14, 4, 'Savion Willms', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (13, 6, 1, 'Cecelia Leuschke', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (14, 41, 2, 'Wayne Buckridge', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (15, 48, 8, 'Jordon McDermott', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (16, 49, 7, 'Else Braun', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (17, 41, 3, 'Leone Hettinger', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (18, 10, 9, 'Esther Swaniawski', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (19, 48, 10, 'Rubye Douglas', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (20, 32, 1, 'Westley Kling', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (21, 10, 6, 'Antonia Bechtelar', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (22, 14, 3, 'Norbert Shanahan', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (23, 32, 2, 'Doug Spencer', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (24, 32, 2, 'Marge Kreiger', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (25, 6, 4, 'Vince Leuschke', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (26, 41, 1, 'Oliver Rutherford', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (27, 14, 3, 'Ike Jacobi', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (28, 32, 4, 'Sylvester Lueilwitz', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (29, 49, 7, 'Carmela Dicki', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (30, 7, 6, 'Athena Gleason', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (31, 48, 3, 'Eleonore Reynolds', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (32, 14, 5, 'Ana Thiel', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (33, 6, 9, 'Bethel Harvey', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (34, 45, 1, 'Morgan Luettgen', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (35, 45, 1, 'Ara Mertz', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (36, 10, 6, 'Syble Heidenreich', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (37, 45, 1, 'Cheyenne Bashirian', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (38, 49, 1, 'Annabelle VonRueden', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (39, 6, 9, 'Norris Brekke', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (40, 49, 10, 'Lucienne Sipes', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (41, 32, 4, 'Magnolia Ward', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (42, 41, 3, 'Manuel Kuvalis', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (43, 48, 7, 'Arnold Armstrong', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (44, 6, 4, 'Remington Murphy', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (45, 41, 5, 'Jalen Carter', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (46, 48, 10, 'Andreanne Kuphal', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (47, 49, 7, 'Rhiannon Windler', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (48, 49, 9, 'Lyla Koch', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (49, 41, 2, 'Delpha Smith', '2019-04-28 23:36:42', '2019-04-28 23:36:42');
INSERT INTO public.inv_editors VALUES (50, 6, 2, 'Naomie Prosacco', '2019-04-28 23:36:42', '2019-04-28 23:36:42');


--
-- TOC entry 3005 (class 0 OID 38327)
-- Dependencies: 210
-- Data for Name: journal_volumes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.journal_volumes VALUES (1, 14, 10, 3, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (2, 6, 1, 1, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (3, 32, 15, 4, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (4, 10, 4, 2, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (5, 48, 18, 4, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (6, 45, 13, 1, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (7, 36, 14, 4, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (8, 49, 6, 3, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (9, 7, 20, 2, '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.journal_volumes VALUES (10, 41, 20, 1, '2019-04-28 23:36:41', '2019-04-28 23:36:41');


--
-- TOC entry 2992 (class 0 OID 16396)
-- Dependencies: 197
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations VALUES (1885, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (1886, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations VALUES (1887, '2019_04_25_023153_create_documents_table', 1);
INSERT INTO public.migrations VALUES (1888, '2019_04_25_024014_create_authors_table', 1);
INSERT INTO public.migrations VALUES (1889, '2019_04_25_024133_create_writes_table', 1);
INSERT INTO public.migrations VALUES (1890, '2019_04_25_024232_create_books_table', 1);
INSERT INTO public.migrations VALUES (1891, '2019_04_25_024555_create_journal_volumes_table', 1);
INSERT INTO public.migrations VALUES (1892, '2019_04_25_024721_create_journal_issues_table', 1);
INSERT INTO public.migrations VALUES (1893, '2019_04_25_024919_create_chief_editors_table', 1);
INSERT INTO public.migrations VALUES (1894, '2019_04_25_025315_create_inv_editors_table', 1);
INSERT INTO public.migrations VALUES (1895, '2019_04_25_025405_create_proceedings_table', 1);
INSERT INTO public.migrations VALUES (1896, '2019_04_25_033224_alter_table_writes_add_foreign_tag_books_document_id', 1);
INSERT INTO public.migrations VALUES (1897, '2019_04_25_033939_alter_table_journal_volumes_add_foreign_tag_chief_editor_editor_id', 1);
INSERT INTO public.migrations VALUES (1898, '2019_04_25_040829_create_publishers_table', 1);
INSERT INTO public.migrations VALUES (1899, '2019_04_25_041014_alter_table_documents_add_foreign_tag_publisher_publisher_id', 1);
INSERT INTO public.migrations VALUES (1900, '2019_04_27_001357_create_branches_table', 1);
INSERT INTO public.migrations VALUES (1901, '2019_04_27_001458_create_copies_table', 1);
INSERT INTO public.migrations VALUES (1902, '2019_04_27_002029_create_readers_table', 1);
INSERT INTO public.migrations VALUES (1903, '2019_04_27_002142_create_reserves_table', 1);
INSERT INTO public.migrations VALUES (1904, '2019_04_27_002745_create_borrows_table', 1);


--
-- TOC entry 2995 (class 0 OID 38272)
-- Dependencies: 200
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3013 (class 0 OID 38381)
-- Dependencies: 218
-- Data for Name: proceedings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.proceedings VALUES (1, 11, '2015-04-09 13:27:29', '99919 Litzy Knolls
Lake Tessie, DC 97223-3237', 'WilburnSpinka', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.proceedings VALUES (2, 22, '2015-06-18 09:47:44', '9850 Evangeline Grove Apt. 594
Watersburgh, IL 76118', 'ElizaSchaden', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.proceedings VALUES (3, 40, '2000-05-18 13:48:08', '929 Gislason Mill Suite 891
Port Beth, OH 63391-7480', 'AgnesWill', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.proceedings VALUES (4, 36, '1970-10-01 19:44:11', '820 Mertie Junctions Suite 583
Port Mittie, MA 88476-2793', 'KarlMitchell', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.proceedings VALUES (5, 40, '1984-06-02 03:29:44', '33679 Camryn Manor Suite 716
West Maeganburgh, NH 32618', 'AlejandraKoepp', '2019-04-28 23:36:41', '2019-04-28 23:36:41');


--
-- TOC entry 3023 (class 0 OID 38460)
-- Dependencies: 228
-- Data for Name: reserves; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reserves VALUES (1, 21, 33, 80, 4, '1987-11-30 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (2, 17, 20, 83, 1, '1992-09-20 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (3, 22, 16, 16, 3, '1972-07-06 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (4, 46, 27, 17, 2, '1980-02-13 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (5, 4, 45, 1, 2, '1990-06-01 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (6, 21, 39, 14, 2, '1980-05-14 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (7, 42, 46, 7, 2, '1996-05-13 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (8, 49, 44, 66, 4, '2006-10-14 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (9, 34, 45, 39, 1, '2012-05-23 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (10, 36, 34, 17, 5, '1991-02-08 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (11, 6, 5, 44, 4, '2019-04-17 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (12, 38, 9, 96, 5, '1978-01-31 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (13, 47, 4, 44, 2, '1970-05-30 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (14, 39, 9, 96, 5, '2008-08-02 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (15, 21, 6, 5, 5, '1992-09-15 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (16, 4, 29, 37, 5, '1989-04-28 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (17, 18, 6, 82, 5, '1980-07-03 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (18, 17, 10, 53, 1, '2012-07-03 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (19, 42, 35, 23, 3, '2018-12-10 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (20, 24, 24, 26, 1, '1992-05-05 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (21, 40, 5, 85, 1, '1999-01-22 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (22, 10, 17, 18, 5, '1972-04-21 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (23, 35, 30, 34, 3, '1991-08-18 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (24, 2, 46, 7, 2, '2016-06-26 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (25, 26, 43, 93, 4, '1979-08-25 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (26, 34, 19, 46, 3, '2015-08-21 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (27, 45, 2, 24, 2, '1987-07-30 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (28, 38, 44, 69, 4, '1983-08-29 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (29, 41, 21, 53, 1, '1979-10-24 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (30, 15, 20, 52, 1, '1999-07-21 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (31, 14, 30, 34, 3, '1989-10-15 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (32, 26, 16, 16, 3, '1979-10-30 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (33, 42, 17, 18, 5, '1981-09-04 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (34, 42, 21, 79, 5, '2003-09-28 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (35, 49, 28, 6, 4, '1982-04-13 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (36, 7, 49, 67, 2, '2004-12-09 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (37, 20, 40, 27, 1, '2013-06-01 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (38, 47, 15, 84, 1, '1975-10-03 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (39, 50, 41, 70, 5, '2010-05-19 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (40, 15, 17, 27, 5, '1979-12-02 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (41, 13, 20, 37, 1, '1996-11-12 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (42, 45, 47, 32, 1, '1989-06-19 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (43, 31, 44, 2, 5, '1973-10-24 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (44, 17, 20, 37, 1, '2010-08-31 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (45, 18, 42, 78, 4, '1987-10-06 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (46, 38, 34, 79, 3, '1971-10-14 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (47, 18, 2, 68, 3, '1999-05-13 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (48, 2, 46, 5, 4, '1993-06-04 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (49, 7, 19, 61, 4, '2018-08-25 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');
INSERT INTO public.reserves VALUES (50, 17, 26, 50, 5, '2004-12-29 00:00:00', '2019-04-28 23:36:41', '2019-04-28 23:36:41');


--
-- TOC entry 2994 (class 0 OID 38261)
-- Dependencies: 199
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'Velda Orn', 'mitchell.clementine@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rfufLjJUl5', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (2, 'Royal Cummings', 'ucarter@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dMtPJS96dM', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (3, 'Mr. Gunnar Okuneva PhD', 'guadalupe.gibson@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZE4BSy5H9c', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (4, 'Dr. Amy Lehner Sr.', 'marvin.block@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uaXB5hNLYA', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (5, 'Dr. Leonardo Morissette', 'sincere52@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5l2VjWoCsq', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (6, 'Lela Hahn', 'lesch.wyatt@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hAnt55vUQI', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (7, 'Mr. Bo Mitchell MD', 'chris.medhurst@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0iJEDdmbLn', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (8, 'Favian Howe V', 'considine.claudie@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zb3CUTowmB', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (9, 'Judy Conn', 'jamar66@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i4ieZP4TuW', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (10, 'Saige Haley', 'joy.stanton@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PX2ThK23DZ', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (11, 'Clara Swift MD', 'vandervort.carolyne@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oiHKIYtjjU', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (12, 'Dr. Viviane Ziemann', 'eve01@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Jj7Td8EAnA', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (13, 'Katelyn Koepp V', 'lynch.athena@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5dZYypMItU', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (14, 'Ms. Fae Nader', 'addie22@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nGJiMHGBIX', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (15, 'Arturo Yost V', 'sally12@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0eRfkISwvv', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (16, 'Landen Dooley V', 'ryann72@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OdO4wcoPL6', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (17, 'Ms. Mabelle Muller', 'garett20@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '38OSza7dXm', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (18, 'Miss Audreanne Gorczany PhD', 'macejkovic.matteo@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1vEp2EKG3V', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (19, 'Mrs. Clotilde Mante', 'gaylord.tabitha@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gmYzwu0Xxw', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (20, 'Dariana Collier', 'macy70@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xvQAzRgh7a', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (21, 'Diego Veum', 'rex.welch@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l0RGO6XOnv', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (22, 'Arvel Ziemann', 'beatty.nicolette@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XxpeNVcWDL', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (23, 'Kamren Huels', 'adele86@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pMbWSElb9v', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (24, 'Prof. Georgette Ward', 'xpacocha@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fC7JEYHrSs', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (25, 'Emery McLaughlin', 'sandrine34@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '60UpbBlNmn', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (26, 'Jolie Pfeffer', 'marlon85@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sGezrFXYRQ', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (27, 'Dr. Fern Kertzmann', 'dante.herman@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MbT6DYaniC', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (28, 'Prof. Lisandro Maggio PhD', 'jaydon70@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QYSxPRZvE1', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (29, 'Miss Princess Klocko', 'rogahn.oda@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o56KeL5RLt', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (30, 'Dr. Leif Roberts Jr.', 'fay.newton@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lRiZRQz5TR', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (31, 'Miss Zula Johnson', 'denesik.miracle@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ChKncGPbXw', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (32, 'Verona Klein PhD', 'mgreen@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fonXJNjT6r', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (33, 'Pedro Goldner', 'helmer30@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SmPrXNQo0L', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (34, 'Elaina Mertz', 'leatha.botsford@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qhHDUTbu2j', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (35, 'Euna Feeney', 'duncan90@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T3IeqxntaP', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (36, 'Alvina Koch', 'daphne.muller@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'omtyVg60Aj', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (37, 'Dr. Madalyn Robel V', 'fking@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QiH5P0r6XS', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (38, 'Addison Hayes', 'conn.blaise@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HjosDCzNBl', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (39, 'Doug Boyle', 'oberbrunner.alejandrin@example.org', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q1AGYalcpa', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (40, 'Jacinto Will DVM', 'molly.thompson@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rfzJbBFpPK', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (41, 'Mackenzie Schumm', 'afton36@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'soluiG6GiL', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (42, 'Dexter Hayes', 'fjacobson@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'R7XCWKj0dT', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (43, 'Modesto Mayer', 'schimmel.margarita@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4xKvUNHmvA', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (44, 'Miss Rossie Mertz', 'isawayn@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O4bTkIvpzK', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (45, 'Genoveva Ebert', 'jerde.lonny@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yN6A52WAW2', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (46, 'Rick Ratke', 'bertram.friesen@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eyN3As24pM', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (47, 'Dashawn Mertz III', 'bgusikowski@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tGhzcFpoOa', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (48, 'Joanny Cartwright', 'ianderson@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'T8dHJ7LuMG', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (49, 'Crystal Hane', 'lillie90@example.net', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LWF1EgFGvS', '2019-04-28 23:36:37', '2019-04-28 23:36:37');
INSERT INTO public.users VALUES (50, 'Ms. Yessenia Kemmer II', 'ihegmann@example.com', '2019-04-28 23:36:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cye8AflUpb', '2019-04-28 23:36:37', '2019-04-28 23:36:37');


--
-- TOC entry 3001 (class 0 OID 38297)
-- Dependencies: 206
-- Data for Name: writes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.writes VALUES (1, 32, 21, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (2, 24, 26, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (3, 50, 38, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (4, 49, 5, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (5, 49, 33, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (6, 3, 5, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (7, 22, 22, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (8, 46, 25, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (9, 27, 26, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (10, 36, 39, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (11, 17, 14, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (12, 6, 32, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (13, 38, 43, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (14, 40, 43, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (15, 1, 20, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (16, 29, 18, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (17, 25, 19, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (18, 47, 7, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (19, 45, 17, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (20, 22, 34, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (21, 44, 40, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (22, 24, 4, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (23, 12, 12, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (24, 1, 28, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (25, 42, 12, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (26, 8, 23, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (27, 44, 41, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (28, 48, 44, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (29, 40, 24, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (30, 34, 49, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (31, 36, 31, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (32, 31, 15, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (33, 28, 45, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (34, 9, 50, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (35, 17, 38, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (36, 21, 49, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (37, 8, 35, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (38, 13, 5, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (39, 6, 9, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (40, 40, 25, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (41, 42, 21, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (42, 37, 45, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (43, 15, 28, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (44, 50, 23, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (45, 18, 13, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (46, 3, 6, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (47, 46, 21, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (48, 44, 19, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (49, 9, 13, '2019-04-28 23:36:43', '2019-04-28 23:36:43');
INSERT INTO public.writes VALUES (50, 42, 40, '2019-04-28 23:36:43', '2019-04-28 23:36:43');


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 203
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 50, true);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 207
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 50, true);


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 229
-- Name: borrows_bor_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.borrows_bor_number_seq', 50, true);


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 221
-- Name: branches_lib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branches_lib_id_seq', 5, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 213
-- Name: chief_editors_editor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chief_editors_editor_id_seq', 5, true);


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 223
-- Name: copies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.copies_id_seq', 200, true);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 201
-- Name: documents_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documents_document_id_seq', 50, true);


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 215
-- Name: inv_editors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inv_editors_id_seq', 50, true);


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 211
-- Name: journal_issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.journal_issues_id_seq', 50, true);


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 209
-- Name: journal_volumes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.journal_volumes_id_seq', 10, true);


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 196
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1904, true);


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 217
-- Name: proceedings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proceedings_id_seq', 5, true);


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 219
-- Name: publishers_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publishers_publisher_id_seq', 50, true);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 225
-- Name: readers_reader_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.readers_reader_id_seq', 50, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 227
-- Name: reserves_res_number_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserves_res_number_seq', 50, true);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 198
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 50, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 205
-- Name: writes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.writes_id_seq', 50, true);


-- Completed on 2019-04-28 19:37:48

--
-- PostgreSQL database dump complete
--

