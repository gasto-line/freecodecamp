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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_mly integer,
    description text
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
-- Name: magnitude; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.magnitude (
    magnitude_id character varying NOT NULL,
    order_of_magnitude integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.magnitude OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(10,2),
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

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 10000, 3, NULL);
INSERT INTO public.galaxy VALUES ('Mily-way', 2, 26545, 4, NULL);
INSERT INTO public.galaxy VALUES ('M81', 3, 354526, 5, NULL);
INSERT INTO public.galaxy VALUES ('M82', 4, 54215, 65, NULL);
INSERT INTO public.galaxy VALUES ('M85', 5, 65458, 7, NULL);
INSERT INTO public.galaxy VALUES ('M98', 6, 98465, 9, NULL);


--
-- Data for Name: magnitude; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.magnitude VALUES ('moon', 1, NULL);
INSERT INTO public.magnitude VALUES ('planet', 2, NULL);
INSERT INTO public.magnitude VALUES ('star', 3, NULL);
INSERT INTO public.magnitude VALUES ('galaxy', 4, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('the moon', 1, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('M2', 2, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('M5', 3, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M54', 4, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('M7', 5, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('M9', 6, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M12', 7, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M14', 8, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M16', 9, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('M18', 10, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('M22', 11, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('M25', 12, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('M64', 13, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('M67', 14, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('M69', 15, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M612', 16, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M614', 17, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('M616', 18, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('M618', 19, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('M622', 20, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('M265', 21, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Venus', 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Mars', 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('P22', 4, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('P44', 5, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('P64', 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('P67', 7, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('P69', 8, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('P612', 9, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('P614', 10, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('P616', 11, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('P618', 12, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('P622', 13, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('P265', 14, NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 0, 2654.00, NULL);
INSERT INTO public.star VALUES ('10 Lacerta', 2, 2, 3515.00, NULL);
INSERT INTO public.star VALUES ('Rigel', 3, 1, 5451.00, NULL);
INSERT INTO public.star VALUES ('Sirius', 4, 1, 1548.00, NULL);
INSERT INTO public.star VALUES ('Procyon', 5, 1, 4521.00, NULL);
INSERT INTO public.star VALUES ('Arcturus', 6, 2, 5656.00, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: magnitude magnitude_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.magnitude
    ADD CONSTRAINT magnitude_pkey PRIMARY KEY (magnitude_id);


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
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: magnitude unique_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.magnitude
    ADD CONSTRAINT unique_type UNIQUE (magnitude_id);


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

