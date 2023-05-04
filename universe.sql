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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric(4,1),
    description text
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric(4,1),
    description text,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric(4,1),
    description text,
    has_life boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    distance_from_earth numeric(4,1),
    description text,
    has_life boolean,
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
-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system (
    system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_planets integer NOT NULL,
    number_of_stars integer NOT NULL
);


ALTER TABLE public.system OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_system_id_seq OWNER TO freecodecamp;

--
-- Name: system_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.system_system_id_seq OWNED BY public.system.system_id;


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
-- Name: system system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system ALTER COLUMN system_id SET DEFAULT nextval('public.system_system_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 0.0, 'Home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 2.5, 'Largest Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 6, 3.0, 'Spiral Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 8, 28.0, 'With dust lane resembling a sombrero');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 10, 23.0, 'Spiral Galaxy with visible bridge and tidal tails');
INSERT INTO public.galaxy VALUES (6, 'Large Magallanic Cloud', 14, 0.2, 'Irregular galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 0.3, 'Natural satellite of Earth', false, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 0.0, 'One of the two moons of Mars', false, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 0.0, 'One of the two moons of Mars', false, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4600, 0.0, 'Largest moon in the Solar System', false, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 0.0, 'Smooth, icy surface', false, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 4600, 0.0, 'Most volcanically active body', false, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 0.0, 'Heavily cratered', false, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 0.0, 'Second largest moon in the Solar System', false, NULL);
INSERT INTO public.moon VALUES (9, 'Encelados', 4500, 0.0, 'Active moon geysers of water vapor', false, NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 0.0, 'Small moon with a large impact crater', false, NULL);
INSERT INTO public.moon VALUES (11, 'Rhea', 4500, 0.0, 'Second largest moon of Saturn', false, NULL);
INSERT INTO public.moon VALUES (12, 'Thethys', 4500, 0.0, 'Icy moon with large impact crater', false, NULL);
INSERT INTO public.moon VALUES (13, 'Dione', 4500, 0.0, 'Icy moon with bright streaks on its surface', false, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', 4500, 0.0, 'With sponge-like surface', false, NULL);
INSERT INTO public.moon VALUES (15, 'Lapetus', 4500, 0.0, 'Natural satellite', false, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 4500, 0.0, 'From Uranus', false, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4500, 0.0, 'Heavily cratered moon', false, NULL);
INSERT INTO public.moon VALUES (18, 'Miranda', 4500, 0.0, 'With diverse landscape of cliffs', false, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 4500, 0.0, 'Largest moon of Neptune', false, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 4500, 0.0, 'Highly eccentric orbit around Neptune', false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 0.0, 'Closest planet to the Sun', false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 0.0, 'Second planet from the Sun', false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 4500, 0.0, 'Our home planet', true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 0.0, 'Fourth planet from the Sun', false, NULL);
INSERT INTO public.planet VALUES (5, 'Ceres', 4600, 0.0, 'Largest object in the asteroid belt', false, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', 4600, 0.0, 'Largest planet in the Solar System', false, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', 4600, 0.0, 'Has rings made of ice and rock', false, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 4600, 0.0, 'Has extreme axial tilt', false, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', 4600, 0.0, 'Has strongest winds in the Solar System', false, NULL);
INSERT INTO public.planet VALUES (10, 'Pluto', 4600, 0.0, 'Once considered 9th planet', false, NULL);
INSERT INTO public.planet VALUES (11, 'Eris', 4600, 0.0, 'Largest dwarf planet', false, NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', 4500, 0.0, 'Largest trans-Neptunian object', false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4850, 4.2, 'Red Draf', false, NULL);
INSERT INTO public.star VALUES (2, 'Sirius A', 2600, 8.6, 'Brightest star in the sky', false, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 6500, 4.4, 'One of the closest to the Sun', false, NULL);
INSERT INTO public.star VALUES (4, 'Barnads Star', 9800, 6.0, 'Second closest to the Sun', false, NULL);
INSERT INTO public.star VALUES (5, 'Tau Ceti', 10000, 11.9, 'Sun like star', false, NULL);
INSERT INTO public.star VALUES (6, 'Sun', 4600, 8.0, 'Our home star', false, NULL);


--
-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system VALUES (1, 'Solar System', 8, 1);
INSERT INTO public.system VALUES (2, 'Alpha Centauri System', 3, 2);
INSERT INTO public.system VALUES (3, 'Trappist-1 system', 1, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: system_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_system_id_seq', 3, true);


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
-- Name: system system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_name_key UNIQUE (name);


--
-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system
    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);


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

