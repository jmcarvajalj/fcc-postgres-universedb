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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_id integer,
    has_life boolean
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL,
    star_id integer,
    has_life boolean
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'bh1', 'bh1 description', 12.300, 123);
INSERT INTO public.black_hole VALUES (2, 'bh2', 'bh2 description', 20.400, 456);
INSERT INTO public.black_hole VALUES (3, 'bh3', 'bh3 description', 56.000, 789);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 'g1 description', 12.300, 123);
INSERT INTO public.galaxy VALUES (2, 'g2', 'g2 description', 20.400, 456);
INSERT INTO public.galaxy VALUES (3, 'g3', 'g3 description', 56.000, 789);
INSERT INTO public.galaxy VALUES (4, 'g4', 'g4 description', 65.000, 465);
INSERT INTO public.galaxy VALUES (5, 'g5', 'g5 description', 1235.000, 654);
INSERT INTO public.galaxy VALUES (6, 'g6', 'g6 description', 465.000, 101);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 'm1 description', 12.300, 123, 1, false);
INSERT INTO public.moon VALUES (2, 'm2', 'm2 description', 20.400, 456, 1, true);
INSERT INTO public.moon VALUES (3, 'm3', 'm3 description', 56.000, 789, 2, true);
INSERT INTO public.moon VALUES (4, 'm4', 'm4 description', 65.000, 465, 5, false);
INSERT INTO public.moon VALUES (5, 'm5', 'm5 description', 1235.000, 654, 3, false);
INSERT INTO public.moon VALUES (6, 'm6', 'm6 description', 465.000, 101, 2, true);
INSERT INTO public.moon VALUES (7, 'm7', 'm7 description', 12.300, 123, 1, false);
INSERT INTO public.moon VALUES (8, 'm8', 'm8 description', 20.400, 456, 1, true);
INSERT INTO public.moon VALUES (9, 'm9', 'm9 description', 56.000, 789, 2, true);
INSERT INTO public.moon VALUES (10, 'm10', 'm10 description', 65.000, 465, 5, false);
INSERT INTO public.moon VALUES (11, 'm11', 'm11 description', 1235.000, 654, 3, false);
INSERT INTO public.moon VALUES (12, 'm12', 'm12 description', 465.000, 101, 2, true);
INSERT INTO public.moon VALUES (13, 'm13', 'm13 description', 12.300, 123, 1, false);
INSERT INTO public.moon VALUES (14, 'm14', 'm14 description', 20.400, 456, 1, true);
INSERT INTO public.moon VALUES (15, 'm15', 'm15 description', 56.000, 789, 2, true);
INSERT INTO public.moon VALUES (16, 'm16', 'm16 description', 65.000, 465, 5, false);
INSERT INTO public.moon VALUES (17, 'm17', 'm17 description', 1235.000, 654, 3, false);
INSERT INTO public.moon VALUES (18, 'm18', 'm18 description', 465.000, 101, 2, true);
INSERT INTO public.moon VALUES (19, 'm19', 'm19 description', 12.300, 123, 1, false);
INSERT INTO public.moon VALUES (20, 'm20', 'm20 description', 20.400, 456, 1, true);
INSERT INTO public.moon VALUES (21, 'm21', 'm21 description', 56.000, 789, 2, true);
INSERT INTO public.moon VALUES (22, 'm22', 'm22 description', 65.000, 465, 5, false);
INSERT INTO public.moon VALUES (23, 'm23', 'm23 description', 1235.000, 654, 3, false);
INSERT INTO public.moon VALUES (24, 'm24', 'm24 description', 465.000, 101, 2, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 'p1 description', 12.300, 123, 1, false);
INSERT INTO public.planet VALUES (2, 'p2', 'p2 description', 20.400, 456, 1, true);
INSERT INTO public.planet VALUES (3, 'p3', 'p3 description', 56.000, 789, 2, true);
INSERT INTO public.planet VALUES (4, 'p4', 'p4 description', 65.000, 465, 5, false);
INSERT INTO public.planet VALUES (5, 'p5', 'p5 description', 1235.000, 654, 3, false);
INSERT INTO public.planet VALUES (6, 'p6', 'p6 description', 465.000, 101, 2, true);
INSERT INTO public.planet VALUES (7, 'p7', 'p7 description', 12.300, 123, 1, false);
INSERT INTO public.planet VALUES (8, 'p8', 'p8 description', 20.400, 456, 1, true);
INSERT INTO public.planet VALUES (9, 'p9', 'p9 description', 56.000, 789, 2, true);
INSERT INTO public.planet VALUES (10, 'p10', 'p10 description', 65.000, 465, 5, false);
INSERT INTO public.planet VALUES (11, 'p11', 'p11 description', 1235.000, 654, 3, false);
INSERT INTO public.planet VALUES (12, 'p12', 'p12 description', 465.000, 101, 2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 's1 description', 12.300, 123, 1);
INSERT INTO public.star VALUES (2, 's2', 's2 description', 20.400, 456, 1);
INSERT INTO public.star VALUES (3, 's3', 's3 description', 56.000, 789, 2);
INSERT INTO public.star VALUES (4, 's4', 's4 description', 65.000, 465, 5);
INSERT INTO public.star VALUES (5, 's5', 's5 description', 1235.000, 654, 3);
INSERT INTO public.star VALUES (6, 's6', 's6 description', 465.000, 101, 2);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

