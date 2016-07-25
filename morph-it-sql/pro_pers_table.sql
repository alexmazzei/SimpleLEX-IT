--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-07-25 12:32:03 CEST

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
-- TOC entry 195 (class 1259 OID 22147)
-- Name: pro_pers_table; Type: TABLE; Schema: public; Owner: mazzei
--

CREATE TABLE pro_pers_table (
    id_word integer NOT NULL,
    word character varying(30),
    id_lemma integer,
    der_person character(1),
    der_number character(1),
    der_gender character(1),
    clitics boolean,
    CONSTRAINT pro_pers_table_clitics_check CHECK ((clitics = ANY (ARRAY[true, false]))),
    CONSTRAINT pro_pers_table_der_gender_check CHECK ((der_gender = ANY (ARRAY['F'::bpchar, 'M'::bpchar]))),
    CONSTRAINT pro_pers_table_der_number_check CHECK ((der_number = ANY (ARRAY['S'::bpchar, 'P'::bpchar]))),
    CONSTRAINT pro_pers_table_der_person_check CHECK ((der_person = ANY (ARRAY['1'::bpchar, '2'::bpchar, '3'::bpchar]))),
    CONSTRAINT pro_pers_table_word_check CHECK (((word)::text <> ''::text))
);


ALTER TABLE pro_pers_table OWNER TO mazzei;

--
-- TOC entry 194 (class 1259 OID 22145)
-- Name: pro_pers_table_id_word_seq; Type: SEQUENCE; Schema: public; Owner: mazzei
--

CREATE SEQUENCE pro_pers_table_id_word_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pro_pers_table_id_word_seq OWNER TO mazzei;

--
-- TOC entry 2462 (class 0 OID 0)
-- Dependencies: 194
-- Name: pro_pers_table_id_word_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mazzei
--

ALTER SEQUENCE pro_pers_table_id_word_seq OWNED BY pro_pers_table.id_word;


--
-- TOC entry 2330 (class 2604 OID 22150)
-- Name: id_word; Type: DEFAULT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_pers_table ALTER COLUMN id_word SET DEFAULT nextval('pro_pers_table_id_word_seq'::regclass);


--
-- TOC entry 2457 (class 0 OID 22147)
-- Dependencies: 195
-- Data for Name: pro_pers_table; Type: TABLE DATA; Schema: public; Owner: mazzei
--

COPY pro_pers_table (id_word, word, id_lemma, der_person, der_number, der_gender, clitics) FROM stdin;
1	ce	5836	1	P	F	t
2	ce	5836	1	P	M	t
3	ci	6233	1	P	F	t
4	ci	6233	1	P	M	t
5	egli	10989	3	S	M	f
6	essa	11697	3	S	F	f
7	esse	11698	3	P	F	f
8	essi	11705	3	P	M	f
9	esso	11707	3	S	M	f
10	gli	14006	3	S	M	t
11	gliel'	14010	\N	\N	\N	\N
12	gliela	14011	\N	\N	\N	\N
13	gliele	14012	\N	\N	\N	\N
14	glieli	14013	\N	\N	\N	\N
15	glielo	14010	\N	\N	\N	\N
16	gliene	14014	\N	\N	\N	\N
17	io	16708	1	S	F	f
18	io	16708	1	S	M	f
19	l'	17078	3	S	F	t
20	l'	17078	3	S	M	t
21	la	17080	3	S	F	t
22	le	17333	3	P	F	t
23	le	17333	3	S	F	t
24	lei	17414	3	S	F	f
25	li	17507	3	P	M	t
26	lo	17706	3	S	M	t
27	loro	17791	3	P	F	f
28	loro	17791	3	P	M	f
29	lui	17847	3	S	M	f
30	m'	17921	1	S	F	t
31	m'	17921	1	S	M	t
32	me	18673	1	S	M	f
33	me	18673	1	S	M	t
34	mi	17921	1	S	F	t
35	mi	17921	1	S	M	t
36	noi	20294	1	P	F	f
37	noi	20294	1	P	M	f
38	s'	26994	3	S	F	t
39	s'	26994	3	S	M	t
40	se	28171	3	S	F	t
41	se	28171	3	S	M	t
42	si	26994	3	S	F	t
43	si	26994	3	S	M	t
44	sè	31549	3	S	F	f
45	sè	31549	3	S	M	f
46	sé	31551	3	S	F	f
47	sé	31551	3	S	M	f
48	t'	31553	2	S	F	t
49	t'	31553	2	S	M	t
50	te	31775	2	S	F	f
51	te	31775	2	S	M	f
52	te	31775	2	S	F	t
53	te	31775	2	S	M	t
54	ti	31553	2	S	F	t
55	ti	31553	2	S	M	t
56	tu	33087	2	S	F	f
57	tu	33087	2	S	M	f
58	ve	33692	2	P	F	t
59	ve	33692	2	P	M	t
60	vi	34052	2	P	F	t
61	vi	34052	2	P	M	t
62	voi	34431	2	P	F	f
63	voi	34431	2	P	M	f
\.


--
-- TOC entry 2463 (class 0 OID 0)
-- Dependencies: 194
-- Name: pro_pers_table_id_word_seq; Type: SEQUENCE SET; Schema: public; Owner: mazzei
--

SELECT pg_catalog.setval('pro_pers_table_id_word_seq', 63, true);


--
-- TOC entry 2337 (class 2606 OID 22157)
-- Name: pro_pers_table_pkey; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_pers_table
    ADD CONSTRAINT pro_pers_table_pkey PRIMARY KEY (id_word);


--
-- TOC entry 2339 (class 2606 OID 22159)
-- Name: pro_pers_table_word_id_lemma_der_person_der_number_der_gend_key; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_pers_table
    ADD CONSTRAINT pro_pers_table_word_id_lemma_der_person_der_number_der_gend_key UNIQUE (word, id_lemma, der_person, der_number, der_gender, clitics);


--
-- TOC entry 2340 (class 2606 OID 22160)
-- Name: pro_pers_table_id_lemma_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY pro_pers_table
    ADD CONSTRAINT pro_pers_table_id_lemma_fkey FOREIGN KEY (id_lemma) REFERENCES lemmata(id_lemma);


-- Completed on 2016-07-25 12:32:03 CEST

--
-- PostgreSQL database dump complete
--

