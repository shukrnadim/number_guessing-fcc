--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 21);
INSERT INTO public.games VALUES (2, 4, 668);
INSERT INTO public.games VALUES (3, 4, 728);
INSERT INTO public.games VALUES (4, 5, 196);
INSERT INTO public.games VALUES (5, 5, 322);
INSERT INTO public.games VALUES (6, 4, 119);
INSERT INTO public.games VALUES (7, 4, 382);
INSERT INTO public.games VALUES (8, 4, 570);
INSERT INTO public.games VALUES (9, 1, 11);
INSERT INTO public.games VALUES (10, 6, 807);
INSERT INTO public.games VALUES (11, 6, 659);
INSERT INTO public.games VALUES (12, 7, 426);
INSERT INTO public.games VALUES (13, 7, 229);
INSERT INTO public.games VALUES (14, 6, 242);
INSERT INTO public.games VALUES (15, 6, 32);
INSERT INTO public.games VALUES (16, 6, 774);
INSERT INTO public.games VALUES (17, 1, 9);
INSERT INTO public.games VALUES (18, 8, 843);
INSERT INTO public.games VALUES (19, 8, 189);
INSERT INTO public.games VALUES (20, 9, 270);
INSERT INTO public.games VALUES (21, 9, 68);
INSERT INTO public.games VALUES (22, 8, 597);
INSERT INTO public.games VALUES (23, 8, 487);
INSERT INTO public.games VALUES (24, 8, 317);
INSERT INTO public.games VALUES (25, 1, 6);
INSERT INTO public.games VALUES (26, 10, 112);
INSERT INTO public.games VALUES (27, 10, 441);
INSERT INTO public.games VALUES (28, 11, 196);
INSERT INTO public.games VALUES (29, 11, 785);
INSERT INTO public.games VALUES (30, 10, 759);
INSERT INTO public.games VALUES (31, 10, 132);
INSERT INTO public.games VALUES (32, 10, 387);
INSERT INTO public.games VALUES (33, 12, 15);
INSERT INTO public.games VALUES (34, 12, 92);
INSERT INTO public.games VALUES (35, 13, 254);
INSERT INTO public.games VALUES (36, 13, 64);
INSERT INTO public.games VALUES (37, 12, 79);
INSERT INTO public.games VALUES (38, 12, 45);
INSERT INTO public.games VALUES (39, 12, 140);
INSERT INTO public.games VALUES (40, 14, 10);
INSERT INTO public.games VALUES (41, 15, 698);
INSERT INTO public.games VALUES (42, 15, 680);
INSERT INTO public.games VALUES (43, 16, 908);
INSERT INTO public.games VALUES (44, 16, 46);
INSERT INTO public.games VALUES (45, 15, 217);
INSERT INTO public.games VALUES (46, 15, 196);
INSERT INTO public.games VALUES (47, 15, 132);
INSERT INTO public.games VALUES (48, 1, 8);
INSERT INTO public.games VALUES (49, 17, 315);
INSERT INTO public.games VALUES (50, 17, 865);
INSERT INTO public.games VALUES (51, 18, 629);
INSERT INTO public.games VALUES (52, 18, 841);
INSERT INTO public.games VALUES (53, 17, 522);
INSERT INTO public.games VALUES (54, 17, 69);
INSERT INTO public.games VALUES (55, 17, 692);
INSERT INTO public.games VALUES (56, 1, 18);
INSERT INTO public.games VALUES (57, 19, 416);
INSERT INTO public.games VALUES (58, 19, 964);
INSERT INTO public.games VALUES (59, 20, 196);
INSERT INTO public.games VALUES (60, 20, 171);
INSERT INTO public.games VALUES (61, 19, 834);
INSERT INTO public.games VALUES (62, 19, 445);
INSERT INTO public.games VALUES (63, 19, 156);
INSERT INTO public.games VALUES (64, 21, 923);
INSERT INTO public.games VALUES (65, 21, 690);
INSERT INTO public.games VALUES (66, 22, 603);
INSERT INTO public.games VALUES (67, 22, 925);
INSERT INTO public.games VALUES (68, 21, 91);
INSERT INTO public.games VALUES (69, 21, 555);
INSERT INTO public.games VALUES (70, 21, 84);
INSERT INTO public.games VALUES (71, 1, 12);
INSERT INTO public.games VALUES (72, 23, 990);
INSERT INTO public.games VALUES (73, 23, 508);
INSERT INTO public.games VALUES (74, 24, 869);
INSERT INTO public.games VALUES (75, 24, 434);
INSERT INTO public.games VALUES (76, 23, 643);
INSERT INTO public.games VALUES (77, 23, 635);
INSERT INTO public.games VALUES (78, 23, 619);
INSERT INTO public.games VALUES (79, 25, 268);
INSERT INTO public.games VALUES (80, 25, 126);
INSERT INTO public.games VALUES (81, 26, 688);
INSERT INTO public.games VALUES (82, 26, 932);
INSERT INTO public.games VALUES (83, 25, 837);
INSERT INTO public.games VALUES (84, 25, 955);
INSERT INTO public.games VALUES (85, 25, 280);
INSERT INTO public.games VALUES (86, 1, 9);
INSERT INTO public.games VALUES (87, 27, 901);
INSERT INTO public.games VALUES (88, 27, 278);
INSERT INTO public.games VALUES (89, 28, 366);
INSERT INTO public.games VALUES (90, 28, 112);
INSERT INTO public.games VALUES (91, 27, 975);
INSERT INTO public.games VALUES (92, 27, 403);
INSERT INTO public.games VALUES (93, 27, 23);
INSERT INTO public.games VALUES (94, 29, 165);
INSERT INTO public.games VALUES (95, 29, 816);
INSERT INTO public.games VALUES (96, 30, 84);
INSERT INTO public.games VALUES (97, 30, 357);
INSERT INTO public.games VALUES (98, 29, 788);
INSERT INTO public.games VALUES (99, 29, 8);
INSERT INTO public.games VALUES (100, 29, 961);
INSERT INTO public.games VALUES (101, 31, 558);
INSERT INTO public.games VALUES (102, 31, 875);
INSERT INTO public.games VALUES (103, 32, 983);
INSERT INTO public.games VALUES (104, 32, 79);
INSERT INTO public.games VALUES (105, 31, 803);
INSERT INTO public.games VALUES (106, 31, 871);
INSERT INTO public.games VALUES (107, 31, 18);
INSERT INTO public.games VALUES (108, 33, 347);
INSERT INTO public.games VALUES (109, 33, 535);
INSERT INTO public.games VALUES (110, 34, 235);
INSERT INTO public.games VALUES (111, 34, 371);
INSERT INTO public.games VALUES (112, 33, 215);
INSERT INTO public.games VALUES (113, 33, 571);
INSERT INTO public.games VALUES (114, 33, 813);
INSERT INTO public.games VALUES (115, 35, 339);
INSERT INTO public.games VALUES (116, 35, 860);
INSERT INTO public.games VALUES (117, 36, 172);
INSERT INTO public.games VALUES (118, 36, 832);
INSERT INTO public.games VALUES (119, 35, 252);
INSERT INTO public.games VALUES (120, 35, 540);
INSERT INTO public.games VALUES (121, 35, 22);
INSERT INTO public.games VALUES (122, 1, 7);
INSERT INTO public.games VALUES (123, 37, 63);
INSERT INTO public.games VALUES (124, 37, 3);
INSERT INTO public.games VALUES (125, 38, 139);
INSERT INTO public.games VALUES (126, 38, 329);
INSERT INTO public.games VALUES (127, 37, 346);
INSERT INTO public.games VALUES (128, 37, 678);
INSERT INTO public.games VALUES (129, 37, 475);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'nadim');
INSERT INTO public.users VALUES (2, 'NADIM');
INSERT INTO public.users VALUES (3, 'AHMAD');
INSERT INTO public.users VALUES (4, 'user_1740855693936');
INSERT INTO public.users VALUES (5, 'user_1740855693935');
INSERT INTO public.users VALUES (6, 'user_1740855972570');
INSERT INTO public.users VALUES (7, 'user_1740855972569');
INSERT INTO public.users VALUES (8, 'user_1740856454960');
INSERT INTO public.users VALUES (9, 'user_1740856454959');
INSERT INTO public.users VALUES (10, 'user_1740856505625');
INSERT INTO public.users VALUES (11, 'user_1740856505624');
INSERT INTO public.users VALUES (12, 'user_1740856512735');
INSERT INTO public.users VALUES (13, 'user_1740856512734');
INSERT INTO public.users VALUES (14, 'ahmad');
INSERT INTO public.users VALUES (15, 'user_1740857727835');
INSERT INTO public.users VALUES (16, 'user_1740857727834');
INSERT INTO public.users VALUES (17, 'user_1740857886812');
INSERT INTO public.users VALUES (18, 'user_1740857886811');
INSERT INTO public.users VALUES (19, 'user_1740858270673');
INSERT INTO public.users VALUES (20, 'user_1740858270672');
INSERT INTO public.users VALUES (21, 'user_1740858531398');
INSERT INTO public.users VALUES (22, 'user_1740858531397');
INSERT INTO public.users VALUES (23, 'user_1740858886774');
INSERT INTO public.users VALUES (24, 'user_1740858886773');
INSERT INTO public.users VALUES (25, 'user_1740859011719');
INSERT INTO public.users VALUES (26, 'user_1740859011718');
INSERT INTO public.users VALUES (27, 'user_1740859090880');
INSERT INTO public.users VALUES (28, 'user_1740859090879');
INSERT INTO public.users VALUES (29, 'user_1740859352155');
INSERT INTO public.users VALUES (30, 'user_1740859352154');
INSERT INTO public.users VALUES (31, 'user_1740859488108');
INSERT INTO public.users VALUES (32, 'user_1740859488107');
INSERT INTO public.users VALUES (33, 'user_1740859662727');
INSERT INTO public.users VALUES (34, 'user_1740859662726');
INSERT INTO public.users VALUES (35, 'user_1740859818828');
INSERT INTO public.users VALUES (36, 'user_1740859818827');
INSERT INTO public.users VALUES (37, 'user_1740859897328');
INSERT INTO public.users VALUES (38, 'user_1740859897327');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 129, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

