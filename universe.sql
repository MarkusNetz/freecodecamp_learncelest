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
-- Name: astrophysicists; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astrophysicists (
    astrophysicists_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    is_intelligent boolean NOT NULL,
    age_in_millions_of_years integer DEFAULT 0 NOT NULL,
    times_acted_as_gollum_in_lotr integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.astrophysicists OWNER TO freecodecamp;

--
-- Name: astrophysicists_astrophysicists_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astrophysicists_astrophysicists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astrophysicists_astrophysicists_id_seq OWNER TO freecodecamp;

--
-- Name: astrophysicists_astrophysicists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astrophysicists_astrophysicists_id_seq OWNED BY public.astrophysicists.astrophysicists_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer DEFAULT 0 NOT NULL,
    times_acted_as_gollum_in_lotr integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer DEFAULT 0 NOT NULL,
    times_acted_as_gollum_in_lotr integer DEFAULT 0 NOT NULL
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    age_in_millions_of_years integer DEFAULT 0 NOT NULL,
    times_acted_as_gollum_in_lotr integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer DEFAULT 0 NOT NULL,
    times_acted_as_gollum_in_lotr integer DEFAULT 0 NOT NULL
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
-- Name: astrophysicists astrophysicists_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrophysicists ALTER COLUMN astrophysicists_id SET DEFAULT nextval('public.astrophysicists_astrophysicists_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astrophysicists; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astrophysicists VALUES (1, 'Neil deGrasse Tyson', 'https://en.wikipedia.org/wiki/Neil_deGrasse_Tyson', 0, true, 0, 0);
INSERT INTO public.astrophysicists VALUES (2, 'Stephen Hawking', 'https://en.wikipedia.org/wiki/Stephen_Hawking', 0, true, 0, 0);
INSERT INTO public.astrophysicists VALUES (3, 'Brian May', 'https://en.wikipedia.org/wiki/Brian_May', 0, true, 0, 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The milky way is home to the superb homo sapiens sapiens.', NULL, true, 0, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The milky way´s neighbour.', NULL, false, 0, 0);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Some funny galaxy.', NULL, false, 0, 0);
INSERT INTO public.galaxy VALUES (4, 'ESO 383-76', 'an elongated, X-ray luminous supergiant elliptical galaxy, residing as the dominant, brightest cluster galaxy (BCG) of the Abell 3571 galaxy cluster.', NULL, false, 0, 0);
INSERT INTO public.galaxy VALUES (5, 'ESO 306-17', 'is a fossil group giant elliptical galaxy in the Columba constellation.', NULL, false, 0, 0);
INSERT INTO public.galaxy VALUES (6, 'NGC 623', 'A large elliptical galaxy located in the Sculptor constellation.', NULL, false, 0, 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'The moon is the only satellite of Tellus', 384400, false, 1, 0, 0);
INSERT INTO public.moon VALUES (3, 'Metis', 'The innermost known moon of Jupiter', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (4, 'Adrastea ', 'The smallest of the four inner moons of Jupiter.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (5, 'Amalthea  ', 'It has the third closest orbit around Jupiter among known moons and was the fifth moon of Jupiter to be discovered.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (10, 'Thebe', 'Is the fourth of Jupiter´s moons by distance from the planet.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (11, 'Io', 'It is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (12, 'Europa', 'Is the smallest of the four Galilean moons orbiting Jupiter.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (13, 'Ganymede', 'is the largest and most massive natural satellite of Jupiter as well as the largest in the Solar System.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (14, 'Callisto', 'is the second-largest moon of Jupiter.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (15, 'Titan', 'is the largest moon of Saturn and the second-largest in the Solar System.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (16, 'Mimas', 'Mimas is named after one of the Giants in Greek mythology.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (17, 'Enceladus', 'The sixth largest moon of Saturn.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (18, 'Tethys', 'Is the fifth largest moon of Saturn.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (19, 'Dione', 'The fourth largest moon of Saturn.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (20, 'Rhea', 'The second largest moon of Saturn and the ninth-largest moon in the Solar System.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (21, 'Iapetus', 'The third largest moon of Saturn.', 0, false, 12, 0, 0);
INSERT INTO public.moon VALUES (22, 'Themisto', 'Is a small prograde irregular satellite of Jupiter.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (23, 'Lysithea ', 'Is a prograde irregular satellite of Jupiter..', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (24, 'Leda ', 'Is a prograde irregular satellite of Jupiter. It was discovered by Charles T. Kowal at the Mount Palomar Observatory on September 14, 1974.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (25, 'Himalia', 'Is the largest irregular satellite of Jupiter,.', 0, false, 8, 0, 0);
INSERT INTO public.moon VALUES (26, 'Ersa', 'Is a small outer natural satellite of Jupiter discovered by Scott S. Sheppard on 11 May 2018.', 0, false, 8, 0, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tellus', 'Third planet from the Sun', NULL, true, 1, 0, 0);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Third planet from the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (9, 'Venus', 'Third planet from the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Third planet from the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (11, 'Neptune', 'Third planet from the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (12, 'Saturn', 'Third planet from the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (13, 'Mercury', 'Closest to the Sun', NULL, false, 1, 0, 0);
INSERT INTO public.planet VALUES (14, 'HD 100546 b', 'a very large gas giant in the process of forming, with a diameter roughly 77 times that of Earth.', NULL, false, 2, 0, 0);
INSERT INTO public.planet VALUES (16, 'XO-6b', 'The other of the two biggest planets in the milky way.', NULL, false, 5, 0, 0);
INSERT INTO public.planet VALUES (17, 'PA-99-N2 b', 'A candidate since 1999.', NULL, false, 6, 0, 0);
INSERT INTO public.planet VALUES (15, 'HAT-P-67 b', 'One of the two biggest planets in the milky way.', NULL, false, 7, 0, 0);
INSERT INTO public.planet VALUES (7, 'Mars', 'The red planet', NULL, false, 1, 0, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'The dearest star of Tellus.', NULL, false, 1, 0, 0);
INSERT INTO public.star VALUES (2, 'HD 100546', 'A star.', NULL, false, 1, 0, 0);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Star of the closest star system to Earth.', NULL, false, 1, 0, 0);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'It is a red giant, if replacing the Sun with this, it would extend beoynd Jupiter.', NULL, false, 1, 0, 0);
INSERT INTO public.star VALUES (5, 'XO-6', 'A star.', NULL, false, 1, 0, 0);
INSERT INTO public.star VALUES (6, 'PA-99-N2 ', 'A star.', NULL, false, 2, 0, 0);
INSERT INTO public.star VALUES (7, 'HAT-P-67', 'A star.', NULL, false, 1, 0, 0);


--
-- Name: astrophysicists_astrophysicists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astrophysicists_astrophysicists_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astrophysicists astrophysicists_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrophysicists
    ADD CONSTRAINT astrophysicists_name_key UNIQUE (name);


--
-- Name: astrophysicists astrophysicists_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrophysicists
    ADD CONSTRAINT astrophysicists_pkey PRIMARY KEY (astrophysicists_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

