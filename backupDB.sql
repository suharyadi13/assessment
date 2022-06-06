--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

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
-- Name: tbl_articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_articles (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    short_description character varying(255),
    category_id integer,
    is_visible boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tbl_articles OWNER TO postgres;

--
-- Name: tbl_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_articles_id_seq OWNER TO postgres;

--
-- Name: tbl_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_articles_id_seq OWNED BY public.tbl_articles.id;


--
-- Name: tbl_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_categories (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tbl_categories OWNER TO postgres;

--
-- Name: tbl_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_categories_id_seq OWNER TO postgres;

--
-- Name: tbl_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_categories_id_seq OWNED BY public.tbl_categories.id;


--
-- Name: tbl_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tbl_users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    phone character varying(15),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.tbl_users OWNER TO postgres;

--
-- Name: tbl_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tbl_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_users_id_seq OWNER TO postgres;

--
-- Name: tbl_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tbl_users_id_seq OWNED BY public.tbl_users.id;


--
-- Name: tbl_articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_articles ALTER COLUMN id SET DEFAULT nextval('public.tbl_articles_id_seq'::regclass);


--
-- Name: tbl_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_categories ALTER COLUMN id SET DEFAULT nextval('public.tbl_categories_id_seq'::regclass);


--
-- Name: tbl_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_id_seq'::regclass);


--
-- Data for Name: tbl_articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_articles (id, title, description, short_description, category_id, is_visible, "createdAt", "updatedAt") FROM stdin;
1	berita 1	isi berita 1	short berita 1	1	f	2022-06-05 18:24:11.633+07	2022-06-05 18:24:11.633+07
2	berita 2	berita 2 description	berita 2 short	1	f	2022-06-05 20:00:41.585+07	2022-06-05 20:00:41.585+07
3	berita 3	desc berita 3	short berita 3	1	f	2022-06-05 20:18:17.965+07	2022-06-05 20:18:17.965+07
4	Berita 4	desc berita 4	short berita 4	1	f	2022-06-05 20:18:40.543+07	2022-06-05 20:18:40.543+07
5	Berita 5	Desc Berita 5	Short berita 5	1	f	2022-06-05 20:18:58.614+07	2022-06-05 20:18:58.614+07
6	Berita Baru	ini adlah berita baru detail	ini adalah berita baru short	1	f	2022-06-06 15:01:49.426+07	2022-06-06 15:01:49.426+07
7	1231 3112 312	<p>asda sd asd as d asd&nbsp; 21 321 3 213</p>	sd fsdf sd f dsf 	1	f	2022-06-06 15:51:01.316+07	2022-06-06 15:51:01.316+07
8	1231 3112 312	<p>asda sd asd as d asd&nbsp; 21 321 3 213</p>	sd fsdf sd f dsf 	1	f	2022-06-06 16:01:28.483+07	2022-06-06 16:01:28.483+07
9	adasdasda sd as das d	<p>asdkaskdjasjd</p>	asjdkasdkasjdk	2	f	2022-06-06 18:08:14.624+07	2022-06-06 18:08:14.624+07
\.


--
-- Data for Name: tbl_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_categories (id, title, "createdAt", "updatedAt") FROM stdin;
1	Politics	2022-06-05 21:21:30.743+07	2022-06-05 21:21:30.743+07
2	Economics	2022-06-05 21:21:44.56+07	2022-06-05 21:21:44.56+07
\.


--
-- Data for Name: tbl_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tbl_users (id, name, email, password, phone, "createdAt", "updatedAt") FROM stdin;
1	Rifky Wijaksana	rifky@sahaware.co.id	$2a$08$OBxaXE1WcfHghe01NxcgFeFRlou3FlSVA.fvZTZvO2etQIPN0BN22	08213465789	2022-06-06 07:06:00.319+07	2022-06-06 07:06:00.319+07
2	Suhar yadi	suharyadi13@gmail.com	$2a$08$mSfMXDsJm2v4NboBaqQiJ.U94nP.D7hwgE/lm3L.pYxzIo2NrzSpS	08976156259	2022-06-06 13:30:09.196+07	2022-06-06 13:30:09.196+07
3	riki2	rifky2@sahaware.co.id	$2a$08$K4zFWizHO8WzS3engb0it.iIDgfyAKrPx.18iV8zsnUAoYHZuqCqe	08976156259	2022-06-06 13:35:17.638+07	2022-06-06 13:35:17.638+07
4	rifky3	rifky3@sahaware.co.id	$2a$08$JEtU8WxRYJkd4ADNnSFYtuon2wXQqspZdUkTYKWeFlolZ983owmhO	\N	2022-06-06 13:36:42.555+07	2022-06-06 13:36:42.555+07
5	asdfg	rifky12@sahaware.co.id	$2a$08$IQkoFAfl1/N8bE2QPoFA.ugX/TBBxHvUfUPFtC8VJlWTbwt9oBGVK	\N	2022-06-06 13:37:56.959+07	2022-06-06 13:37:56.959+07
6	21313	rifky123123@sahaware.co.id	$2a$08$LfjqjqcBiQR.RwO7binJZ.qp/ZLmgbuSryh5k3R7SqIesAUjQfsEC	\N	2022-06-06 13:38:40.31+07	2022-06-06 13:38:40.31+07
7	Thomas Fleming	rifky122@sahaware.co.id	$2a$08$4Wd8.0IwAAOmZfm9ZUlYMu9muBT16SsNmckSbxypEqt3Ca9Tevc0K	0123456789	2022-06-06 13:40:27.356+07	2022-06-06 13:40:27.356+07
8	Thomas Fleming	rifky44@sahaware.co.id	$2a$08$lkVP2DdMmfxSac7XNGnFKek9AO3Ezz80RNwbprQHpUGoPtXndv30m	0123456789	2022-06-06 13:41:33.737+07	2022-06-06 13:41:33.737+07
\.


--
-- Name: tbl_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_articles_id_seq', 9, true);


--
-- Name: tbl_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_categories_id_seq', 2, true);


--
-- Name: tbl_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tbl_users_id_seq', 8, true);


--
-- Name: tbl_articles tbl_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_articles
    ADD CONSTRAINT tbl_articles_pkey PRIMARY KEY (id);


--
-- Name: tbl_categories tbl_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_categories
    ADD CONSTRAINT tbl_categories_pkey PRIMARY KEY (id);


--
-- Name: tbl_users tbl_users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_email_key UNIQUE (email);


--
-- Name: tbl_users tbl_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (id);


--
-- Name: tbl_users_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tbl_users_email ON public.tbl_users USING btree (email);


--
-- PostgreSQL database dump complete
--

