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
    name character varying NOT NULL,
    type character varying(40),
    age_in_billions_of_years numeric,
    discovery_year integer,
    is_visible_to_naked_eye boolean
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
-- Name: m_p_s_g; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.m_p_s_g (
    moon_id integer,
    planet_id integer,
    star_id integer,
    galaxy_id integer NOT NULL,
    name_1 character varying,
    name_2 character varying,
    name_3 character varying,
    name_4 character varying,
    name character varying,
    m_p_s_g_id character varying NOT NULL
);


ALTER TABLE public.m_p_s_g OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    discovery_year integer,
    surface_description text
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
    name character varying NOT NULL,
    star_id integer,
    type character varying(40),
    age_in_billions_of_years numeric,
    discovery_year integer,
    is_candidate_habitable boolean
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
    name character varying NOT NULL,
    galaxy_id integer,
    type character varying(40),
    age_in_billions_of_years numeric,
    discovery_year integer
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Barred Spiral', 10.01, NULL, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Barred Spiral', 13.61, NULL, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Unclear', 13.25, 1781, false);
INSERT INTO public.galaxy VALUES (4, 'Fireworks Galaxy', 'Intermediate Spiral', NULL, 1798, false);
INSERT INTO public.galaxy VALUES (5, 'Peekaboo Galaxy', 'Irregular Compact Blue Dwarf', 13.8, 2001, false);
INSERT INTO public.galaxy VALUES (6, 'Sunflower Galaxy', 'Spiral', 13.28, 1779, false);


--
-- Data for Name: m_p_s_g; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.m_p_s_g VALUES (1, 3, 2, 2, 'Moon', 'Earth', 'Sun', 'Milky Way', 'Moon Earth Sun Milky Way', '2 2 3 1');
INSERT INTO public.m_p_s_g VALUES (2, 4, 2, 2, 'Phobos', 'Mars', 'Sun', 'Milky Way', 'Phobos Mars Sun Milky Way', '2 2 4 2');
INSERT INTO public.m_p_s_g VALUES (3, 4, 2, 2, 'Deimos', 'Mars', 'Sun', 'Milky Way', 'Deimos Mars Sun Milky Way', '2 2 4 3');
INSERT INTO public.m_p_s_g VALUES (4, 5, 2, 2, 'Ganymede', 'Jupiter', 'Sun', 'Milky Way', 'Ganymede Jupiter Sun Milky Way', '2 2 5 4');
INSERT INTO public.m_p_s_g VALUES (5, 5, 2, 2, 'Io', 'Jupiter', 'Sun', 'Milky Way', 'Io Jupiter Sun Milky Way', '2 2 5 5');
INSERT INTO public.m_p_s_g VALUES (6, 5, 2, 2, 'Europa', 'Jupiter', 'Sun', 'Milky Way', 'Europa Jupiter Sun Milky Way', '2 2 5 6');
INSERT INTO public.m_p_s_g VALUES (7, 5, 2, 2, 'Callisto', 'Jupiter', 'Sun', 'Milky Way', 'Callisto Jupiter Sun Milky Way', '2 2 5 7');
INSERT INTO public.m_p_s_g VALUES (8, 11, 2, 2, 'Titan', 'Gliese Cc', 'Sun', 'Milky Way', 'Titan Gliese Cc Sun Milky Way', '2 2 11 8');
INSERT INTO public.m_p_s_g VALUES (9, 11, 2, 2, 'Rhea', 'Gliese Cc', 'Sun', 'Milky Way', 'Rhea Gliese Cc Sun Milky Way', '2 2 11 9');
INSERT INTO public.m_p_s_g VALUES (10, 11, 2, 2, 'Tethys', 'Gliese Cc', 'Sun', 'Milky Way', 'Tethys Gliese Cc Sun Milky Way', '2 2 11 10');
INSERT INTO public.m_p_s_g VALUES (11, 11, 2, 2, 'Dione', 'Gliese Cc', 'Sun', 'Milky Way', 'Dione Gliese Cc Sun Milky Way', '2 2 11 11');
INSERT INTO public.m_p_s_g VALUES (12, 11, 2, 2, 'Iapetus', 'Gliese Cc', 'Sun', 'Milky Way', 'Iapetus Gliese Cc Sun Milky Way', '2 2 11 12');
INSERT INTO public.m_p_s_g VALUES (13, 11, 2, 2, 'Mimas', 'Gliese Cc', 'Sun', 'Milky Way', 'Mimas Gliese Cc Sun Milky Way', '2 2 11 13');
INSERT INTO public.m_p_s_g VALUES (14, 11, 2, 2, 'Hyperion', 'Gliese Cc', 'Sun', 'Milky Way', 'Hyperion Gliese Cc Sun Milky Way', '2 2 11 14');
INSERT INTO public.m_p_s_g VALUES (15, 11, 2, 2, 'Phoebe', 'Gliese Cc', 'Sun', 'Milky Way', 'Phoebe Gliese Cc Sun Milky Way', '2 2 11 15');
INSERT INTO public.m_p_s_g VALUES (16, 11, 2, 2, 'Janus', 'Gliese Cc', 'Sun', 'Milky Way', 'Janus Gliese Cc Sun Milky Way', '2 2 11 16');
INSERT INTO public.m_p_s_g VALUES (17, 11, 2, 2, 'Prometheus', 'Gliese Cc', 'Sun', 'Milky Way', 'Prometheus Gliese Cc Sun Milky Way', '2 2 11 17');
INSERT INTO public.m_p_s_g VALUES (18, 11, 2, 2, 'Pandora', 'Gliese Cc', 'Sun', 'Milky Way', 'Pandora Gliese Cc Sun Milky Way', '2 2 11 18');
INSERT INTO public.m_p_s_g VALUES (19, 11, 2, 2, 'Pan', 'Gliese Cc', 'Sun', 'Milky Way', 'Pan Gliese Cc Sun Milky Way', '2 2 11 19');
INSERT INTO public.m_p_s_g VALUES (20, 11, 2, 2, 'Atlas', 'Gliese Cc', 'Sun', 'Milky Way', 'Atlas Gliese Cc Sun Milky Way', '2 2 11 20');
INSERT INTO public.m_p_s_g VALUES (NULL, 12, 1, 1, NULL, 'Upsilon Andromedae B', 'Upsilon Andromedae A', 'Andromeda', ' Upsilon Andromedae B Upsilon Andromedae A Andromeda', '1 1 12 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 10, 2, 2, NULL, 'Proxima Centauri C', 'Sun', 'Milky Way', ' Proxima Centauri C Sun Milky Way', '2 2 10 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 2, 2, 2, NULL, 'Venus', 'Sun', 'Milky Way', ' Venus Sun Milky Way', '2 2 2 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 8, 2, 2, NULL, 'Saturn', 'Sun', 'Milky Way', ' Saturn Sun Milky Way', '2 2 8 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 6, 2, 2, NULL, 'Uranus', 'Sun', 'Milky Way', ' Uranus Sun Milky Way', '2 2 6 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 1, 2, 2, NULL, 'Mercury', 'Sun', 'Milky Way', ' Mercury Sun Milky Way', '2 2 1 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 9, 2, 2, NULL, 'Proxima Centauri B', 'Sun', 'Milky Way', ' Proxima Centauri B Sun Milky Way', '2 2 9 ');
INSERT INTO public.m_p_s_g VALUES (NULL, 7, 2, 2, NULL, 'Neptune', 'Sun', 'Milky Way', ' Neptune Sun Milky Way', '2 2 7 ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, 'Rocky');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 1610, 'Subsurface water ocean');
INSERT INTO public.moon VALUES (5, 'Io', 5, 1610, 'Subsurface magma ocean');
INSERT INTO public.moon VALUES (6, 'Europa', 5, 1610, 'Subsurface water ocean');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1610, 'Subsurface water ocean');
INSERT INTO public.moon VALUES (8, 'Titan', 11, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 11, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 11, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 11, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', 11, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 11, 1789, NULL);
INSERT INTO public.moon VALUES (14, 'Hyperion', 11, 1848, NULL);
INSERT INTO public.moon VALUES (15, 'Phoebe', 11, 1899, NULL);
INSERT INTO public.moon VALUES (16, 'Janus', 11, 1966, NULL);
INSERT INTO public.moon VALUES (17, 'Prometheus', 11, 1980, NULL);
INSERT INTO public.moon VALUES (18, 'Pandora', 11, 1980, NULL);
INSERT INTO public.moon VALUES (19, 'Pan', 11, 1990, NULL);
INSERT INTO public.moon VALUES (20, 'Atlas', 11, 1980, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2, 'Terrrestrial', 4.503, NULL, false);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 'Terrrestrial', 4.503, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', 2, 'Terrrestrial', 4.503, NULL, false);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 'Terrrestrial', 4.503, NULL, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 'Gas Giant', 4.565, NULL, false);
INSERT INTO public.planet VALUES (6, 'Uranus', 2, 'Gas Giant', 4.543, NULL, false);
INSERT INTO public.planet VALUES (7, 'Neptune', 2, 'Gas Giant', 4.543, NULL, false);
INSERT INTO public.planet VALUES (8, 'Saturn', 2, 'Gas Giant', 4.543, NULL, false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', 2, NULL, NULL, NULL, true);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri C', 2, NULL, NULL, NULL, false);
INSERT INTO public.planet VALUES (11, 'Gliese Cc', 2, 'Super Earth', NULL, NULL, true);
INSERT INTO public.planet VALUES (12, 'Upsilon Andromedae B', 1, 'Gas Giant', NULL, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 2, 'Yellow Dwarf', 4.603, NULL);
INSERT INTO public.star VALUES (3, 'Gliese 667 C', 2, 'Red Dwarf', 4.853, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 2, 'Red Dwarf', 4.853, 1915);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 2, 'Red Supergiant', 10.01, 1836);
INSERT INTO public.star VALUES (6, 'Arcturus', 2, 'Red Giant', 7.105, 1635);
INSERT INTO public.star VALUES (1, 'Upsilon Andromedae A', 1, 'Binary Star', NULL, NULL);


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
-- Name: m_p_s_g id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.m_p_s_g
    ADD CONSTRAINT id PRIMARY KEY (m_p_s_g_id);


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
-- Name: m_p_s_g unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.m_p_s_g
    ADD CONSTRAINT unique_id UNIQUE (m_p_s_g_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--