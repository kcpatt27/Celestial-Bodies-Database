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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteors (
    meteors_id integer NOT NULL,
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.meteors OWNER TO freecodecamp;

--
-- Name: meteors_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteors_id_seq OWNER TO freecodecamp;

--
-- Name: meteors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteors_id_seq OWNED BY public.meteors.id;


--
-- Name: meteors_meteors_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteors_meteors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteors_meteors_id_seq OWNER TO freecodecamp;

--
-- Name: meteors_meteors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteors_meteors_id_seq OWNED BY public.meteors.meteors_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    id integer NOT NULL,
    age_in_millions_of_years numeric,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: meteors meteors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors ALTER COLUMN meteors_id SET DEFAULT nextval('public.meteors_meteors_id_seq'::regclass);


--
-- Name: meteors id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors ALTER COLUMN id SET DEFAULT nextval('public.meteors_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 2, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Ariadne', 3, NULL, true);
INSERT INTO public.galaxy VALUES (3, 'Orion', 4, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Artemis', 5, NULL, true);
INSERT INTO public.galaxy VALUES (5, 'Gaia', 6, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Optimus', 7, NULL, false);


--
-- Data for Name: meteors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteors VALUES (1, 1, 'Haleys Comet');
INSERT INTO public.meteors VALUES (2, 2, 'xb-16');
INSERT INTO public.meteors VALUES (3, 3, 'Nebiru');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earths Moon', 25, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Ifrit', 26, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Titan', 27, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Discord', 28, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Desire', 29, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Wrath', 30, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Joy', 31, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Peace', 32, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Love', 33, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Growth', 34, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Shiva', 35, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'Bahamut', 36, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Capybara', 37, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Axolotl', 38, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Jin', 39, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Oceania', 40, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Hephaestus', 41, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Hades', 42, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Valkyria', 43, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Demure-9', 44, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 14, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 15, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 16, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Pluto', 17, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Mars', 18, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 19, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Olympus', 20, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Vegeta', 21, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Ultron', 22, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Viltrum', 23, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Venus', 24, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Aria', 9, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima-B', 10, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Artemis', 11, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Gaia', 12, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Metatron', 13, NULL, NULL, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: meteors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteors_id_seq', 1, false);


--
-- Name: meteors_meteors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteors_meteors_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteors meteors_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors
    ADD CONSTRAINT meteors_name_key UNIQUE (name);


--
-- Name: meteors meteors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteors
    ADD CONSTRAINT meteors_pkey PRIMARY KEY (meteors_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

