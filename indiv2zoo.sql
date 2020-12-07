--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: animales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animales (
    id_animales integer NOT NULL,
    id_tipos_animales integer,
    id_clases_animales integer,
    id_detalle_animales integer,
    nombre character varying(30)
);


ALTER TABLE public.animales OWNER TO postgres;

--
-- Name: clasesanimales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clasesanimales (
    id_clases_animales integer NOT NULL,
    clases character varying(30)
);


ALTER TABLE public.clasesanimales OWNER TO postgres;

--
-- Name: detalleanimales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalleanimales (
    id_detalle_animales integer NOT NULL,
    id_animales integer,
    peso numeric,
    edad numeric,
    alimentacion character varying(30)
);


ALTER TABLE public.detalleanimales OWNER TO postgres;

--
-- Name: tiposanimales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiposanimales (
    id_tipos_animales integer NOT NULL,
    descripcion character varying(30)
);


ALTER TABLE public.tiposanimales OWNER TO postgres;

--
-- Data for Name: animales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animales (id_animales, id_tipos_animales, id_clases_animales, id_detalle_animales, nombre) FROM stdin;
100	1	10	1000	oso
200	2	20	2000	loro
300	3	30	3000	merluza
\.


--
-- Data for Name: clasesanimales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clasesanimales (id_clases_animales, clases) FROM stdin;
10	salvajes
20	domesticos
30	protegidos
\.


--
-- Data for Name: detalleanimales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalleanimales (id_detalle_animales, id_animales, peso, edad, alimentacion) FROM stdin;
1000	100	100	3	vegetales
2000	200	1	5	alpiste
3000	300	1	10	crustaceos
\.


--
-- Data for Name: tiposanimales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiposanimales (id_tipos_animales, descripcion) FROM stdin;
1	mamiferos
2	aves
3	peces
\.


--
-- Name: animales animales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id_animales);


--
-- Name: clasesanimales clasesanimales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clasesanimales
    ADD CONSTRAINT clasesanimales_pkey PRIMARY KEY (id_clases_animales);


--
-- Name: detalleanimales detalleanimales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalleanimales
    ADD CONSTRAINT detalleanimales_pkey PRIMARY KEY (id_detalle_animales);


--
-- Name: tiposanimales tiposanimales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposanimales
    ADD CONSTRAINT tiposanimales_pkey PRIMARY KEY (id_tipos_animales);


--
-- PostgreSQL database dump complete
--

