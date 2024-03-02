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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (379, 2018, 'Final', 397, 398, 4, 2);
INSERT INTO public.games VALUES (380, 2018, 'Third Place', 399, 400, 2, 0);
INSERT INTO public.games VALUES (381, 2018, 'Semi-Final', 398, 400, 2, 1);
INSERT INTO public.games VALUES (382, 2018, 'Semi-Final', 397, 399, 1, 0);
INSERT INTO public.games VALUES (383, 2018, 'Quarter-Final', 398, 401, 3, 2);
INSERT INTO public.games VALUES (384, 2018, 'Quarter-Final', 400, 402, 2, 0);
INSERT INTO public.games VALUES (385, 2018, 'Quarter-Final', 399, 403, 2, 1);
INSERT INTO public.games VALUES (386, 2018, 'Quarter-Final', 397, 404, 2, 0);
INSERT INTO public.games VALUES (387, 2018, 'Eighth-Final', 400, 405, 2, 1);
INSERT INTO public.games VALUES (388, 2018, 'Eighth-Final', 402, 406, 1, 0);
INSERT INTO public.games VALUES (389, 2018, 'Eighth-Final', 399, 407, 3, 2);
INSERT INTO public.games VALUES (390, 2018, 'Eighth-Final', 403, 408, 2, 0);
INSERT INTO public.games VALUES (391, 2018, 'Eighth-Final', 398, 409, 2, 1);
INSERT INTO public.games VALUES (392, 2018, 'Eighth-Final', 401, 410, 2, 1);
INSERT INTO public.games VALUES (393, 2018, 'Eighth-Final', 404, 411, 2, 1);
INSERT INTO public.games VALUES (394, 2018, 'Eighth-Final', 397, 412, 4, 3);
INSERT INTO public.games VALUES (395, 2014, 'Final', 413, 412, 1, 0);
INSERT INTO public.games VALUES (396, 2014, 'Third Place', 414, 403, 3, 0);
INSERT INTO public.games VALUES (397, 2014, 'Semi-Final', 412, 414, 1, 0);
INSERT INTO public.games VALUES (398, 2014, 'Semi-Final', 413, 403, 7, 1);
INSERT INTO public.games VALUES (399, 2014, 'Quarter-Final', 414, 415, 1, 0);
INSERT INTO public.games VALUES (400, 2014, 'Quarter-Final', 412, 399, 1, 0);
INSERT INTO public.games VALUES (401, 2014, 'Quarter-Final', 403, 405, 2, 1);
INSERT INTO public.games VALUES (402, 2014, 'Quarter-Final', 413, 397, 1, 0);
INSERT INTO public.games VALUES (403, 2014, 'Eighth-Final', 403, 416, 2, 1);
INSERT INTO public.games VALUES (404, 2014, 'Eighth-Final', 405, 404, 2, 0);
INSERT INTO public.games VALUES (405, 2014, 'Eighth-Final', 397, 417, 2, 0);
INSERT INTO public.games VALUES (406, 2014, 'Eighth-Final', 413, 418, 2, 1);
INSERT INTO public.games VALUES (407, 2014, 'Eighth-Final', 414, 408, 2, 1);
INSERT INTO public.games VALUES (408, 2014, 'Eighth-Final', 415, 419, 2, 1);
INSERT INTO public.games VALUES (409, 2014, 'Eighth-Final', 412, 406, 1, 0);
INSERT INTO public.games VALUES (410, 2014, 'Eighth-Final', 399, 420, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (397, 'France');
INSERT INTO public.teams VALUES (398, 'Croatia');
INSERT INTO public.teams VALUES (399, 'Belgium');
INSERT INTO public.teams VALUES (400, 'England');
INSERT INTO public.teams VALUES (401, 'Russia');
INSERT INTO public.teams VALUES (402, 'Sweden');
INSERT INTO public.teams VALUES (403, 'Brazil');
INSERT INTO public.teams VALUES (404, 'Uruguay');
INSERT INTO public.teams VALUES (405, 'Colombia');
INSERT INTO public.teams VALUES (406, 'Switzerland');
INSERT INTO public.teams VALUES (407, 'Japan');
INSERT INTO public.teams VALUES (408, 'Mexico');
INSERT INTO public.teams VALUES (409, 'Denmark');
INSERT INTO public.teams VALUES (410, 'Spain');
INSERT INTO public.teams VALUES (411, 'Portugal');
INSERT INTO public.teams VALUES (412, 'Argentina');
INSERT INTO public.teams VALUES (413, 'Germany');
INSERT INTO public.teams VALUES (414, 'Netherlands');
INSERT INTO public.teams VALUES (415, 'Costa Rica');
INSERT INTO public.teams VALUES (416, 'Chile');
INSERT INTO public.teams VALUES (417, 'Nigeria');
INSERT INTO public.teams VALUES (418, 'Algeria');
INSERT INTO public.teams VALUES (419, 'Greece');
INSERT INTO public.teams VALUES (420, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 410, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 420, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

