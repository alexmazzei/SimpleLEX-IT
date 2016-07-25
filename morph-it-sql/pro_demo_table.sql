--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-07-25 12:31:42 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 22129)
-- Name: pro_demo_table; Type: TABLE; Schema: public; Owner: mazzei
--

CREATE TABLE pro_demo_table (
    id_word integer NOT NULL,
    word character varying(50),
    id_lemma integer,
    der_number character(1),
    der_gender character(1),
    CONSTRAINT pro_demo_table_der_gender_check CHECK ((der_gender = ANY (ARRAY['F'::bpchar, 'M'::bpchar]))),
    CONSTRAINT pro_demo_table_der_number_check CHECK ((der_number = ANY (ARRAY['S'::bpchar, 'P'::bpchar]))),
    CONSTRAINT pro_demo_table_word_check CHECK (((word)::text <> ''::text))
);


ALTER TABLE pro_demo_table OWNER TO mazzei;

--
-- TOC entry 192 (class 1259 OID 22127)
-- Name: pro_demo_table_id_word_seq; Type: SEQUENCE; Schema: public; Owner: mazzei
--

CREATE SEQUENCE pro_demo_table_id_word_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pro_demo_table_id_word_seq OWNER TO mazzei;

--
-- TOC entry 2460 (class 0 OID 0)
-- Dependencies: 192
-- Name: pro_demo_table_id_word_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mazzei
--

ALTER SEQUENCE pro_demo_table_id_word_seq OWNED BY pro_demo_table.id_word;


--
-- TOC entry 2330 (class 2604 OID 22132)
-- Name: id_word; Type: DEFAULT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_demo_table ALTER COLUMN id_word SET DEFAULT nextval('pro_demo_table_id_word_seq'::regclass);


--
-- TOC entry 2455 (class 0 OID 22129)
-- Dependencies: 193
-- Data for Name: pro_demo_table; Type: TABLE DATA; Schema: public; Owner: mazzei
--

COPY pro_demo_table (id_word, word, id_lemma, der_number, der_gender) FROM stdin;
1	alcune	932	P	F
2	alcuni	933	P	M
3	altra	1146	S	F
4	altre	1149	P	F
5	altri	1153	P	M
6	altro	1155	S	M
7	chi	6131	S	F
8	chi	6131	S	M
9	chiunque	6224	S	F
10	chiunque	6224	S	M
11	ciascuna	6260	S	F
12	ciascuno	6261	S	M
13	ciò	6564	S	M
14	colei	6790	S	F
15	coloro	6931	P	F
16	coloro	6931	P	M
17	colui	6962	S	M
18	cos'	8301	S	F
19	cosa	8301	S	F
20	costei	8353	S	F
21	costoro	8379	P	F
22	costoro	8379	P	M
23	costui	8393	S	M
24	cui	8689	P	F
25	cui	8689	S	F
26	cui	8689	P	M
27	cui	8689	S	M
28	entrambi	11271	P	M
29	loro	17792	S	F
30	loro	17792	S	M
31	mia	19039	S	F
32	mie	19078	P	F
33	miei	19079	P	M
34	mio	19245	S	M
35	molti	19464	P	M
36	nessuna	20180	S	F
37	nessuno	20182	S	M
38	niente	20247	S	M
39	nostra	20391	S	F
40	nostre	20395	P	F
41	nostri	20396	P	M
42	nostro	20397	S	M
43	nulla	20513	S	M
44	ognuna	20717	S	F
45	ognuno	20718	S	M
46	parecchi	21693	P	M
47	po'	22927	S	M
48	poche	22931	P	F
49	pochi	22933	P	M
50	poco	22937	S	M
51	propri	24132	P	M
52	propria	24135	S	F
53	proprie	24137	P	F
54	proprio	24143	S	M
55	pò	22927	S	M
56	qualcos'	24532	S	F
57	qualcosa	24532	S	F
58	qualcuna	24534	S	F
59	qualcuno	24535	S	M
60	quale	24537	S	F
61	quale	24537	S	M
62	quali	24538	P	F
63	quali	24538	P	M
64	quante	24563	P	F
65	quanti	24564	P	M
66	quanto	24575	S	M
67	quella	24689	S	F
68	quelle	24690	P	F
69	quelli	24691	P	M
70	quello	24692	S	M
71	questa	24703	S	F
72	queste	24704	P	F
73	questi	24705	P	M
74	questi	24705	S	M
75	questo	24709	S	M
76	sua	31043	S	F
77	sue	31157	P	F
78	suo	31199	S	M
79	suoi	31202	P	M
80	tante	31668	P	F
81	tanti	31669	P	M
82	troppi	33053	P	M
83	tua	33088	S	F
84	tue	33107	P	F
85	tuo	33133	S	M
86	tuoi	33134	P	M
87	tutte	33195	P	F
88	tutti	33196	P	M
89	tutto	33197	S	M
90	una	33340	S	F
91	uno	33413	S	M
92	vostra	34517	S	F
93	vostre	34519	P	F
94	vostri	34520	P	M
95	vostro	34521	S	M
\.


--
-- TOC entry 2461 (class 0 OID 0)
-- Dependencies: 192
-- Name: pro_demo_table_id_word_seq; Type: SEQUENCE SET; Schema: public; Owner: mazzei
--

SELECT pg_catalog.setval('pro_demo_table_id_word_seq', 95, true);


--
-- TOC entry 2335 (class 2606 OID 22137)
-- Name: pro_demo_table_pkey; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_demo_table
    ADD CONSTRAINT pro_demo_table_pkey PRIMARY KEY (id_word);


--
-- TOC entry 2337 (class 2606 OID 22139)
-- Name: pro_demo_table_word_id_lemma_der_number_der_gender_key; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_demo_table
    ADD CONSTRAINT pro_demo_table_word_id_lemma_der_number_der_gender_key UNIQUE (word, id_lemma, der_number, der_gender);


--
-- TOC entry 2338 (class 2606 OID 22140)
-- Name: pro_demo_table_id_lemma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_demo_table
    ADD CONSTRAINT pro_demo_table_id_lemma_fkey FOREIGN KEY (id_lemma) REFERENCES lemmata(id_lemma);


-- Completed on 2016-07-25 12:31:42 CEST

--
-- PostgreSQL database dump complete
--

