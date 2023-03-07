--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: find_name; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.find_name (
    find_name_id integer NOT NULL,
    name character varying(255) NOT NULL,
    away integer NOT NULL,
    awake numeric NOT NULL,
    awaken integer
);


ALTER TABLE public.find_name OWNER TO freecodecamp;

--
-- Name: find_name_find_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.find_name_find_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.find_name_find_name_id_seq OWNER TO freecodecamp;

--
-- Name: find_name_find_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.find_name_find_name_id_seq OWNED BY public.find_name.find_name_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    description text,
    name character varying(60),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_type_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_type_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_type integer,
    is_spherical boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    name character varying(60),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    name character varying(60),
    radius numeric,
    has_atmosphere boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_type_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_type_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_type_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(60),
    distance_from_earth integer NOT NULL,
    name character varying(60),
    mass numeric NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: find_name find_name_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find_name ALTER COLUMN find_name_id SET DEFAULT nextval('public.find_name_find_name_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_type_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_type_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: find_name; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.find_name VALUES (1, 'dor', 635487, 456, 389464);
INSERT INTO public.find_name VALUES (2, 'por', 867399, 677, 673487);
INSERT INTO public.find_name VALUES (3, 'tor', 673838, 363, 373883);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 628655, 'yep', 'yao', true, true);
INSERT INTO public.galaxy VALUES (2, 467334, 'pep', 'pao', true, true);
INSERT INTO public.galaxy VALUES (3, 736837, 'dep', 'dao', true, true);
INSERT INTO public.galaxy VALUES (4, 678494, 'fep', 'rao', true, true);
INSERT INTO public.galaxy VALUES (5, 897448, 'gep', 'mao', true, true);
INSERT INTO public.galaxy VALUES (6, 764478, 'lep', 'hao', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26734, 1, true, 379024, 'tao', NULL);
INSERT INTO public.moon VALUES (326523, 2, false, 873223, 'bao),
;
\d moon
', NULL);
INSERT INTO public.moon VALUES (165125, 3, true, 679867, 'cao', NULL);
INSERT INTO public.moon VALUES (465763, 4, true, 71255, 'sao', NULL);
INSERT INTO public.moon VALUES (753873, 5, false, 793673, 'fao', NULL);
INSERT INTO public.moon VALUES (564242, 6, false, 639409, 'jao', NULL);
INSERT INTO public.moon VALUES (423692, 7, true, 809039, 'gao', NULL);
INSERT INTO public.moon VALUES (356498, 8, true, 780944, 'qao', NULL);
INSERT INTO public.moon VALUES (365749, 9, false, 809234, 'dao', NULL);
INSERT INTO public.moon VALUES (795284, 10, false, 87435, 'yao', NULL);
INSERT INTO public.moon VALUES (564354, 11, true, 674834, 'rao', NULL);
INSERT INTO public.moon VALUES (256231, 12, true, 153423, 'hao', NULL);
INSERT INTO public.moon VALUES (425864, 13, true, 398254, 'sao', NULL);
INSERT INTO public.moon VALUES (232241, 14, false, 986344, 'lao', NULL);
INSERT INTO public.moon VALUES (587338, 15, false, 673428, 'kao', NULL);
INSERT INTO public.moon VALUES (648370, 16, false, 357983, 'nao', NULL);
INSERT INTO public.moon VALUES (346257, 17, false, 486398, 'mao', NULL);
INSERT INTO public.moon VALUES (874389, 18, false, 783952, 'vao', NULL);
INSERT INTO public.moon VALUES (832985, 19, false, 469835, 'xao', NULL);
INSERT INTO public.moon VALUES (963884, 20, false, 978593, 'zao', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 456734, 734623, 'Earth', 785678, true, NULL);
INSERT INTO public.planet VALUES (2, 533217, 987323, 'Mars', 328261, false, NULL);
INSERT INTO public.planet VALUES (3, 327396, 238382, 'Jupiter', 927023, false, NULL);
INSERT INTO public.planet VALUES (4, 111222, 222333, 'Saturne', 774466, true, NULL);
INSERT INTO public.planet VALUES (5, 638359, 896543, 'Venus', 764532, false, NULL);
INSERT INTO public.planet VALUES (6, 476363, 999444, 'Uranus', 777333, true, NULL);
INSERT INTO public.planet VALUES (7, 385280, 822332, 'Neptune', 382963, false, NULL);
INSERT INTO public.planet VALUES (8, 673846, 275234, 'Mercury', 208922, false, NULL);
INSERT INTO public.planet VALUES (9, 265872, 922462, 'polobo', 236923, true, NULL);
INSERT INTO public.planet VALUES (10, 327834, 862268, 'herius', 262982, false, NULL);
INSERT INTO public.planet VALUES (11, 532352, 286782, 'Pluto', 983392, false, NULL);
INSERT INTO public.planet VALUES (12, 222311, 325422, 'Sun', 376223, false, NULL);
INSERT INTO public.planet VALUES (13, 758326, 689223, 'Zone', 827323, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'raw', 678363, 'qot', 867, NULL);
INSERT INTO public.star VALUES (2, 'daw', 868273, 'fot', 989, NULL);
INSERT INTO public.star VALUES (3, 'vaw', 897363, 'tot', 632, NULL);
INSERT INTO public.star VALUES (4, 'qaw', 793698, 'hot', 323, NULL);
INSERT INTO public.star VALUES (5, 'yaw', 376763, 'mot', 732, NULL);
INSERT INTO public.star VALUES (6, 'faw', 734744, 'yot', 782, NULL);


--
-- Name: find_name_find_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.find_name_find_name_id_seq', 1, false);


--
-- Name: galaxy_galaxy_type_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_type_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_type_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_type_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: find_name find_name_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find_name
    ADD CONSTRAINT find_name_pkey PRIMARY KEY (find_name_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: find_name unique_find_name_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.find_name
    ADD CONSTRAINT unique_find_name_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_description UNIQUE (description);


--
-- Name: moon unique_moon_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_type UNIQUE (moon_type);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

