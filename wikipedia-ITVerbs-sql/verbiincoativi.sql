--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-07-25 12:36:38 CEST

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
-- TOC entry 207 (class 1259 OID 22299)
-- Name: verbiincoativi; Type: TABLE; Schema: public; Owner: mazzei
--

CREATE TABLE verbiincoativi (
    id_lemma integer NOT NULL,
    lemma character varying(30),
    CONSTRAINT verbiincoativi_lemma_check CHECK (((lemma)::text <> ''::text))
);


ALTER TABLE verbiincoativi OWNER TO mazzei;

--
-- TOC entry 206 (class 1259 OID 22297)
-- Name: verbiincoativi_id_lemma_seq; Type: SEQUENCE; Schema: public; Owner: mazzei
--

CREATE SEQUENCE verbiincoativi_id_lemma_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE verbiincoativi_id_lemma_seq OWNER TO mazzei;

--
-- TOC entry 2455 (class 0 OID 0)
-- Dependencies: 206
-- Name: verbiincoativi_id_lemma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mazzei
--

ALTER SEQUENCE verbiincoativi_id_lemma_seq OWNED BY verbiincoativi.id_lemma;


--
-- TOC entry 2330 (class 2604 OID 22302)
-- Name: id_lemma; Type: DEFAULT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY verbiincoativi ALTER COLUMN id_lemma SET DEFAULT nextval('verbiincoativi_id_lemma_seq'::regclass);


--
-- TOC entry 2450 (class 0 OID 22299)
-- Dependencies: 207
-- Data for Name: verbiincoativi; Type: TABLE DATA; Schema: public; Owner: mazzei
--

COPY verbiincoativi (id_lemma, lemma) FROM stdin;
1	abbellire
2	abbonire
3	abbrividire
4	abbrunire
5	abbrustolire
6	abbrutire
7	abbruttire
8	abolire
9	aborrire
10	abortire
11	accalorire
12	accanirsi
13	accestire
14	acciocchire
15	acciucchire
16	accorcire
17	accudire
18	acetire
19	acquisire
20	acuire
21	addocilire
22	addolcire
23	adempire
24	aderire
25	adibire
26	adire
27	adsorbire
28	afferire
29	affertilire
30	affienire
31	affievolire
32	affiochire
33	affittire
34	affloscire
35	affluire
36	aggentilire
37	aggobbire
38	aggranchire
39	aggrandire
40	aggredire
41	aggrinzire
42	agguerrire
43	agire
44	alleggerire
45	allenire
46	allestire
47	allibire
48	allividire
49	allocchire
50	ambire
51	ammalinconire
52	ammalizzire
53	ammannire
54	ammansire
55	ammattire
56	ammencire
57	ammezzire
58	ammiserire
59	ammollire
60	ammonire
61	ammorbidire
62	ammortire
63	ammoscire
64	ammuffire
65	ammusire
66	ammutire
67	ammutolire
68	annerire
69	annichilire
70	annobilire
71	annuire
72	appassire
73	appesantire
74	appetire
75	appiattire
76	appiccolire
77	appratire
78	approfondire
79	appuntire
80	ardire
81	arguire
82	arricchire
83	arrochire
84	arrossire
85	arrostire
86	arrugginire
87	arruvidire
88	arsire
89	assaporire
90	asserire
91	asservire
92	assopire
93	assordire
94	assonnirsi
95	assortire
96	attecchire
97	atterrire
98	attribuire
99	attristire
100	attutire
101	aulire
102	avvilire
103	avvizzire
104	azzittire
105	azzoppire
106	bandire
107	barrire
108	bastire
109	bianchire
110	bipartire
111	blandire
112	bombire
113	borire
114	bramire
115	brandire
116	brunire
117	brusire
118	campire
119	candire
120	capire
121	carpire
122	censire
123	cernire
124	cestire
125	chiarire
126	circuire
127	coire
128	collabire
129	colorire
130	colpire
131	compartire
132	compatire
133	compire
134	concepire
135	concupire
136	condire
137	conferire
138	confluire
139	contribuire
140	costituire
141	costruire
142	custodire
143	deferire
144	definire
145	defluire
146	deglutire
147	demolire
148	deperire
149	destituire
150	differire
151	diffinire
152	digerire
153	digredire
154	diluire
155	dimagrire
156	diminuire
157	disagrire
158	disasprire
159	dispartire
160	disquisire
161	distribuire
162	ebollire
163	eccepire
164	eccerpire
165	effluire
166	elargire
167	eluire
168	erudire
169	esaudire
170	esaurire
171	esercire
172	esibire
173	esinanire
174	esordire
175	espedire
176	esperire
177	evoluire
178	fallire
179	farcire
180	fastidire
181	favorire
182	feltrire
183	ferire
184	finire
185	fiorire
186	fluire
187	forbire
188	fornire
189	fremire
190	frinire
191	fruire
192	gannire
193	garantire
194	garrire
195	gecchire
196	gerire
197	gestire
198	ghermire
199	gioire
200	gradire
201	graffire
202	granire
203	gremire
204	grugnire
205	guaire
206	gualcire
207	guarentire
208	guarire
209	guarnire
210	guattire
211	illanguidire
212	illeggiadrire
213	illimpidire
214	illiquidire
215	illividire
216	imbachire
217	imbaldanzire
218	imbalordire
219	imbambinire
220	imbandire
221	imbarbarire
222	imbarbogire
223	imbastardire
224	imbastire
225	imbecillire
226	imbellire
227	imbertonire
228	imbestialire
229	imbianchire
230	imbibire
231	imbietolire
232	imbiondire
233	imbirbonire
234	imbizzarrire
235	imbizzire
236	imbolsire
237	imbonire
238	imborghesire
239	imboschire
240	imbottire
241	imbozzacchire
242	imbrandire
243	imbricconire
244	imbroncire
245	imbrunire
246	imbruschire
247	imbrutire
248	imbruttire
249	imbufalirsi
250	imbuirerendere
251	imbutire
252	immalignire
253	immalinconire
254	immalizzire
255	immelanconire
256	immelensire
257	immeschinire
258	imminchionire
259	immiserire
260	immorbidire
261	immucidire
262	immusire
263	immusonirsi
264	impadronirsi
265	impallidire
266	impartire
267	impassire
268	impaurire
269	impazientire
270	impazzire
271	impecorire
272	impedantire
273	impedire
274	impensierire
275	impermalire
276	impetire
277	impetrire
278	impettirsi
279	impiantire
280	impiccinire
281	impicciolire
282	impiccolire
283	impidocchire
284	impietosire
285	impietrire
286	impigrire
287	impinguire
288	impoltronire
289	imporrire
290	impoverire
291	impratichire
292	impreziosire
293	improsciuttire
294	impuntire
295	imputridire
296	impuzzire
297	impuzzolentire
298	impuzzolire
299	inacerbire
300	inacetire
301	inacidire
302	inacutire
303	inagrestire
304	inagrire
305	inamarire
306	inanimire
307	inardire
308	inaridire
309	inasinire
310	inasprire
311	incadaverire
312	incagnire
313	incallire
314	incalorire
315	incanaglire
316	incancherire
317	incancrenire
318	incanire
319	incanutire
320	incaparbire
321	incaponirsi
322	incapriccirsi
323	incarbonchire
324	incarbonire
325	incarnire
326	incarognire
327	incartapecorire
328	incatorzolire
329	incattivire
330	incenerire
331	incerconire
332	incimurrire
333	inciocchire
334	incipollire
335	inciprignire
336	incitrullire
337	inciuchire
338	incivettire
339	incivilire
340	incodardire
341	incollerire
342	incretinire
343	incrudelire
344	incrudire
345	incupire
346	incuriosire
347	incurvire
348	indebilire
349	indebolire
350	indiavolire
351	indispettire
352	indocilire
353	indolcire
354	indolenzire
355	indolire
356	indormentire
357	indurire
358	inebetire
359	inerbire
360	inerire
361	infanatichire
362	infantastichire
363	infarcire
364	infastidire
365	infellonire
366	infeltrire
367	infemminire
368	inferire
369	inferocire
370	infertilire
371	infervorire
372	infetidire
373	infiacchire
374	infierire
375	infievolire
376	infingardire
377	infiochire
378	infiorentinire
379	infiscalire
380	infistolire
381	infittire
382	influire
383	infoltire
384	inforestierire
385	informicolirsi
386	infortire
387	infoschirsi
388	infracidire
389	infralire
390	infranchirsi
391	infratire
392	infreddolire
393	infrenesire
394	infrigidire
395	infrollire
396	infrondire
397	infurbire
398	infustire
399	ingagliardire
400	ingaglioffire
401	ingelosire
402	ingentilire
403	ingerire
404	inghiottonire
405	ingiallire
406	ingigantire
407	ingiovanire
408	ingobbire
409	ingoffire
410	ingolosire
411	ingracilire
412	ingranchire
413	ingrandire
414	ingrigire
415	ingrinzire
416	ingrugnire
417	ingrullire
418	inibire
419	inlividire
420	innervosire
421	inorgoglire
422	inorridire
423	inottusire
424	inquisire
425	insanire
426	insaporire
427	insatirire
428	insecchire
429	inselvatichire
430	inserire
431	inseverire
432	insignire
433	insignorire
434	insipidire
435	insoggettire
436	insolentire
437	insordire
438	insospettire
439	insperanzire
440	inspessire
441	instolidire
442	insuperbire
443	intenerire
444	interagire
445	interferire
446	interloquire
447	intestardirsi
448	intiepidire
449	intimidire
450	intimorire
451	intirannire
452	intirizzire
453	intisichire
454	intontire
455	intorbidire
456	intormentire
457	intorpidire
458	intoscanire
459	intozzire
460	intristire
461	intuire
462	intumidire
463	inturgidire
464	inumidire
465	invacchire
466	invaghire
467	invanire
468	inveire
469	invelenire
470	invelocire
471	inverdire
472	inverminire
473	invetrire
474	invigliacchire
475	invigorire
476	invilire
477	invillanire
478	inviperire
479	invispire
480	invizzire
481	involgarire
482	involpire
483	inzotichire
484	irrancidire
485	irretire
486	irrigidire
487	irritrosire
488	irrobustire
489	irrochirsi
490	irrugginire
491	irruvidire
492	isterilire
493	istituire
494	istruire
495	lambire
496	languire
497	largire
498	lascivire
499	lenire
500	marcire
501	minuire
502	mollire
503	muffire
504	munire
505	nitrire
506	obbedire
507	offerire
508	olire
509	ordire
510	orrire
511	ostruire
512	partorire
513	patire
514	pattovire
515	pattuire
516	percepire
517	perire
518	perquisire
519	piatire
520	polire
521	poltrire
522	preferire
523	premonire
524	premunire
525	pervertire
526	presagire
527	preterire
528	proferire
529	progredire
530	proibire
531	prostituire
532	prurire
533	pulire
534	punire
535	putire
536	rabbonire
537	rabbrividire
538	raccapriccire
539	raccorcire
540	raggentilire
541	raggrandire
542	rammeschinire
543	rammollire
544	rancidire
545	rapire
546	rattiepidire
547	rattrappire
548	rattristire
549	ravvigorire
550	reagire
551	recensire
552	recepire
553	redarguire
554	redolire
555	refluire
556	regredire
557	reperire
558	requisire
559	restituire
560	retentire
561	retribuire
562	ribadire
563	rifedire
564	riferire
565	rifinire
566	rifronzire
567	rimbaldanzire
568	rimbambire
569	rimbecillire
570	rimbischerire
571	rimedire
572	rimminchionire
573	rimpicciolire
574	rimpiccolire
575	rincitrullire
576	rinciuchire
577	rincoglionire
578	rincorbellire
579	rincretinire
580	ringalluzzire
581	ringiovanire
582	ringrullire
583	rinsavire
584	rinsecchire
585	rinseccolire
586	rintontire
587	rinvigorire
588	rinvivire
589	ripire
590	risarcire
591	risbaldire
592	rischiarire
593	riunire
594	riverire
595	rostire
596	rugginire
597	ruggire
598	salire
599	sancire
600	saporire
601	sbadire
602	sbalordire
603	sbandire
604	sbarbarire
605	sbasire
606	sbastire
607	sbiadire
608	sbianchire
609	sbigottire
610	sbizzarrire
611	sbizzire
612	sbollire
613	sbozzacchire
614	scalfire
615	scaltrire
616	scandire
617	scarnire
618	scarognire
619	scaturire
620	scernire
621	scheletrire
622	schermire
623	schernire
624	schiarire
625	schiattire
626	scipidire
627	scolorire
628	scolpire
629	scompartire
630	scoraggire
631	scorcire
632	scurire
633	sdilinquire
634	sdolenzire
635	sdrucire
636	seguire1
637	seppellire
638	sferire
639	sfinire
640	sfittire
641	sfoltire
642	sfranchire
643	sgagliardire
644	sgranchire
645	sgualcire
646	sguarnire
647	sguernire
648	singultire
649	sitire
650	smagrire
651	smalizzire
652	smaltire
653	smarrire
654	smentire
655	sminuire
656	snellire
657	sopire
658	sopperire
659	sorbire
660	sortire
661	sostituire
662	sparire
663	spartire
664	spaurire
665	spazientire
666	spedantire
667	spedire
668	spessire
669	spigrire
670	spoltronire
671	squittire
672	stabilire
673	staggire
674	starnutire
675	statuire
676	stecchire
677	sterilire
678	stiepidire
679	stirizzire
680	stizzire
681	stordire
682	stormire
683	stranire
684	strepire
685	stridire
686	striminzire
687	stupidire
688	stupire
689	subire
690	suggerire
691	superbire
692	supplire
693	svampire
694	svanire
695	svelenire
696	sveltire
697	svigorire
698	svilire
699	tallire
700	tinnire
701	tintinnire
702	tornire
703	tortire
704	tossire
705	tradire
706	tramortire
707	transfluire
708	transire
709	trasalire
710	trasferire
711	trasfigurire
712	trasgredire
713	trasricchire
714	tribuire
715	tripartire
716	ubbidire
717	uggire
718	umidire
719	unire
720	usucapire
721	usufruire
722	vagire
723	vanire
724	verdire
725	vomire
726	zittire
\.


--
-- TOC entry 2456 (class 0 OID 0)
-- Dependencies: 206
-- Name: verbiincoativi_id_lemma_seq; Type: SEQUENCE SET; Schema: public; Owner: mazzei
--

SELECT pg_catalog.setval('verbiincoativi_id_lemma_seq', 726, true);


--
-- TOC entry 2333 (class 2606 OID 22305)
-- Name: verbiincoativi_pkey; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY verbiincoativi
    ADD CONSTRAINT verbiincoativi_pkey PRIMARY KEY (id_lemma);


-- Completed on 2016-07-25 12:36:38 CEST

--
-- PostgreSQL database dump complete
--

