--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

-- Started on 2016-07-25 12:36:57 CEST

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
-- TOC entry 205 (class 1259 OID 22280)
-- Name: verbiirregolari; Type: TABLE; Schema: public; Owner: mazzei
--

CREATE TABLE verbiirregolari (
    id_lemma integer NOT NULL,
    lemma character varying(30),
    CONSTRAINT verbiirregolari_lemma_check CHECK (((lemma)::text <> ''::text))
);


ALTER TABLE verbiirregolari OWNER TO mazzei;

--
-- TOC entry 204 (class 1259 OID 22278)
-- Name: verbiirregolari_id_lemma_seq; Type: SEQUENCE; Schema: public; Owner: mazzei
--

CREATE SEQUENCE verbiirregolari_id_lemma_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE verbiirregolari_id_lemma_seq OWNER TO mazzei;

--
-- TOC entry 2455 (class 0 OID 0)
-- Dependencies: 204
-- Name: verbiirregolari_id_lemma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mazzei
--

ALTER SEQUENCE verbiirregolari_id_lemma_seq OWNED BY verbiirregolari.id_lemma;


--
-- TOC entry 2330 (class 2604 OID 22283)
-- Name: id_lemma; Type: DEFAULT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY verbiirregolari ALTER COLUMN id_lemma SET DEFAULT nextval('verbiirregolari_id_lemma_seq'::regclass);


--
-- TOC entry 2450 (class 0 OID 22280)
-- Dependencies: 205
-- Data for Name: verbiirregolari; Type: TABLE DATA; Schema: public; Owner: mazzei
--

COPY verbiirregolari (id_lemma, lemma) FROM stdin;
1	abdurre
2	abradere
3	accadere
4	accendere
5	acchiudere
6	accingere
7	accludere
8	accogliere
9	accondiscendere
10	acconsentire
11	accorgersi
12	accorrere
13	accrescere
14	addare
15	addire
16	addurre
17	adempiere
18	adempire
19	adergere
20	affarsi
21	affiggere
22	affliggere
23	affrangere
24	aggiungere
25	algere
26	allidere
27	alludere
28	ammettere
29	ancidere
30	andare
31	annettere
32	anteporre
33	anticonoscere
34	antistare
35	antivedere
36	apparire
37	appartenere
38	appendere
39	apporre
40	apprendere
41	aprire
42	ardere
43	arrendere
44	arridere
45	arrogere
46	artefare
47	ascendere
48	asciolvere
49	ascondere
50	ascrivere
51	aspergere
52	assalire
53	assentire
54	assidere
55	assistere
56	assolvere
57	assorgere
58	assuefare
59	assumere
60	assurgere
61	astenere
62	astergere
63	astrarre
64	astringere
65	attendere
66	attenere
67	attingere
68	attorcere
69	attrarre
70	avellere
71	avere
72	avertere
73	avertere
74	avvalersi
75	avvedersi
76	avvincere
77	avvolgere
78	bendisporre
79	benedire
80	benfare
81	benvolere
82	bere
83	cadere
84	calere
85	capovolgere
86	cernere
87	chiedere
88	chiudere
89	cingere
90	circoncidere
91	circondurre
92	circonflettere
93	circonfondere
94	circonfulgere
95	circonvolgere
96	circoscrivere
97	coesistere
98	cogliere
99	coincidere
100	coinvolgere
101	collidere
102	colludere
103	comburere
104	commettere
105	commuovere
106	comparire
107	compiacere
108	compiangere
109	compiere
110	compire
111	comporre
112	compossedere
113	comprendere
114	comprimere
115	compromettere
116	compungere
117	concedere
118	conchiudere
119	concludere
120	concorrere
121	concrescere
122	concuocere
123	condirigere
124	condiscendere
125	condividere
126	condolere
127	condurre
128	confarsi
129	configgere
130	confingere
131	confliggere
132	confondere
133	congiungere
134	connettere
135	conoscere
136	conquidere
137	consapere
138	conscendere
139	consentire
140	consistere
141	consuefare
142	consumere
143	consurgere
144	contendere
145	contenere
146	contessere
147	contingere
148	contorcere
149	contraddire
150	contraddistinguere
151	contraffare
152	contrapporre
153	contrarre
154	contravvalere
155	controffrire
156	controproporre
157	controvertere
158	contundere
159	convellere
160	convergere
161	convertire
162	convincere
163	convivere
164	convolgere
165	cooccorrere
166	coprire
167	coprodurre
168	correggere
169	correre
170	corrispondere
171	corrodere
172	corrompere
173	coscrivere
174	cospargere
175	cospergere
176	costringere
177	crescere
178	crocifiggere
179	cucire
180	cuocere
181	dare
182	dattiloscrivere
183	decadere
184	decernere
185	decidere
186	decomporre
187	decomprimere
188	decontrarre
189	decorrere
190	decrescere
191	decuocere
192	dedurre
193	defiggere
194	deflettere
195	defungere
196	delinquere
197	deludere
198	demordere
199	deporre
200	deprimere
201	dereprimere
202	deridere
203	descrivere
204	desistere
205	desumere
206	detenere
207	detergere
208	detorcere
209	detrarre
210	detrudere
211	devolvere
212	difendere
213	diffingere
214	diffondere
215	diffrangere
216	diligere
217	dimettere
218	dipendere
219	dipingere
220	dire
221	dirigere
222	dirompere
223	disapparire
224	disapprendere
225	disascondere
226	disattendere
227	discadere
228	discendere
229	dischiedere
230	dischiudere
231	discindere
232	discingere
233	disciogliere
234	discommettere
235	discomporre
236	disconfiggere
237	disconnettere
238	disconoscere
239	disconscendere
240	disconsentire
241	discoprire
242	discorrere
243	discrescere
244	discucire
245	discutere
246	disdare
247	disdire
248	disfare
249	disgiungere
250	disilludere
251	disimporre
252	disintendere
253	disinvolgere
254	dismettere
255	dismuovere
256	dispargere
257	disparire
258	dispegnere
259	dispendere
260	disperdere
261	dispergere
262	dispiacere
263	dispingere
264	disporre
265	dispromettere
266	dissentire
267	disseppellire
268	dissolvere
269	dissolvere
270	dissuadere
271	dissuefare
272	distendere
273	distenere
274	distinguere
275	distogliere
276	distorcere
277	distrarre
278	distringere
279	distruggere
280	disungere
281	disvalere
282	disvedere
283	disvellere
284	disvolere
285	disvolgere
286	divedere
287	divellere
288	dividere
289	dolere
290	dovere
291	eccellere
292	edurre
293	effingere
294	effondere
295	eleggere
296	elidere
297	eludere
298	emergere
299	emettere
300	empiere
301	empire
302	equivalere
303	eradere
304	ergere
305	erigere
306	erodere
307	erompere
308	escidere
309	escludere
310	escutere
311	esigere
312	esistere
313	espandere
314	espargere
315	espellere
316	esplodere
317	esporre
318	esprimere
319	espungere
320	essere
321	estendere
322	estinguere
323	estorcere
324	estrarre
325	estroflettere
326	estromettere
327	estrovertere
328	estrudere
329	evadere
330	evincere
331	evolvere
332	fare
333	fedecommettere
334	fedire*
335	figgere
336	fingere
337	flettere
338	fondere
339	forfare
340	fotocomporre
341	fraintendere
342	frammettere
343	frangere
344	frapporre
345	friggere
346	fulgere
347	fungere
348	fuoriuscire
349	giacere
350	giungere
351	giustapporre
352	godere
353	illudere
354	immergere
355	immettere
356	impellere
357	impendere
358	implodere
359	imporre
360	imprendere
361	imprimere
362	impromettere
363	incendere
364	inchiedere
365	inchiudere
366	incidere
367	incingere
368	includere
369	incogliere
370	incorrere
371	increscere
372	incuocere
373	incutere
374	indire
375	indirigere
376	indisporr
377	indulgere
378	indurre
379	inesistere
380	inferire
381	infiggere
382	infingere
383	inflettere
384	infliggere
385	infondere
386	inframmettere
387	infrangere
388	ingiungere
389	inscrivere
390	insistere
391	insorgere
392	intendere
393	intercidere
394	intercludere
395	interconnettere
396	intercorrere
397	interdire
398	interludere
399	intermetter
400	interpungere
401	interrompere
402	intertenere
403	intervenire
404	intessere
405	intingere
406	intorcere
407	intraleggere
408	intraprendere
409	intrasentire
410	intrattenere
411	intraudire
412	intravedere
413	intravvenire
414	intridere
415	introdurre
416	introflettere
417	introvertere
418	intrudere
419	invadere
420	invalere
421	invertire
422	involgere
423	involvere
424	irridere
425	irrompere
426	iscrivere
427	leggere
428	liquefare
429	maledire
430	malfare
431	malintendere
432	malvedere
433	malvolere
434	manodurre
435	manoscrivere
436	mansuefare
437	mantenere
438	manutenere
439	mergere
440	mettere
441	mingere
442	misconoscere
443	misfare
444	misvenire
445	mordere
446	morire
447	muovere
448	nascere
449	nascondere
450	negligere
451	nuocere
452	occludere
453	occorrere
454	offendere
455	offrire
456	oltrandare
457	opprimere
458	opprimere
459	ostendere
460	ottenere
461	ottundere
462	parere
463	percorrere
464	percuotere
465	perdere
466	perdurre
467	perfondere
468	permanere
469	permuovere
470	persistere
471	persuadere
472	pertenere
473	pervadere
474	pervenire
475	piacere
476	piangere
477	piovere
478	piroscindere
479	polluire
480	porgere
481	porre
482	poscrivere
483	possedere
484	potere
485	precidere
486	precingere
487	precludere
488	precomprimere
489	preconoscere
490	precorrere
491	prededurre
492	prediligere
493	predire
494	preeleggere
495	preesistere
496	prefare
497	prefiggere
498	preiscrivere
499	preludere
500	premorire
501	prenascere
502	prendere
503	prescegliere
504	prescindere
505	prescrivere
506	presedere
507	presentire
508	presumere
509	pretendere
510	prevalere
511	prevedere
512	prevenire
513	produrre
514	profferire
515	profondere
516	proludere
517	promuovere
518	propellere
519	propendere
520	prorompere
521	prosciogliere
522	proscrivere
523	prostendere
524	proteggere
525	protendere
526	protrarre
527	protrudere
528	provenire
529	provvedere
530	pungere
531	putrefare
532	raccendere
533	racchiudere
534	raccogliere
535	raccorgersi
536	raddurre
537	radere
538	radiodiffondere
539	raggiungere
540	rapparire
541	rapprendere
542	rarefare
543	rassumere
544	rattenere
545	rattorcere
546	rattrarre
547	ravvedersi
548	ravvolgere
549	recidere
550	recingere
551	recludere
552	redigere
553	redimere
554	reggere
555	reimmergere
556	reimprimere
557	reincidere
558	reinfondere
559	reinscrivere
560	reinsorgere
561	reintrodurre
562	relinquere
563	rendere
564	repellere
565	reprimere
566	rescindere
567	resistere
568	respingere
569	restringere
570	retrarre
571	retrocedere
572	retrospingere
573	riaccendere
574	riandare
575	riannettere
576	riapparire
577	riappendere
578	riaprire
579	riardere
580	riassumere
581	riattendere
582	riavere
583	riavvolgere
584	ribere
585	ricadere
586	ricernere
587	richiedere
588	richiudere
589	ricingere
590	ricogliere
591	ricomparire
592	ricomprimere
593	ricondurre
594	ricongiungere
595	riconnettere
596	riconoscere
597	riconsentire
598	ricontrarre
599	riconvenire
600	ricoprire
601	ricorrere
602	ricrescere
603	ricucire
604	ricuocere
605	ridare
606	ridere
607	ridipingere
608	ridire
609	ridirigere
610	ridiscendere
611	ridividere
612	ridovere
613	ridurre
614	rieleggere
615	riemergere
616	riempiere
617	riempire
618	riesplodere
619	riessere
620	rifare
621	rifiggere
622	riflettere
623	rifondere
624	rifrangere
625	rifriggere
626	rifulgere
627	rileggere
628	rimanere
629	rimmergere
630	rimordere
631	rimorire
632	rimpiangere
633	rimprimere
634	rimuovere
635	rinascere
636	rinchiudere
637	rincorrere
638	rincrescere
639	rinfrangere
640	rinvenire
641	rinvolgere
642	ripercorrere
643	ripercuotere
644	ripiovere
645	riprendere
646	riprodurre
647	risalire
648	risapere
649	risciogliere
650	riscoprire
651	riscrivere
652	riscuotere
653	risedere
654	risentire
655	risolvere
656	risorgere
657	risospingere
658	risovvenire
659	risparire
660	rispingere
661	rispondere
662	ristare
663	ristringere
664	ritenere
665	ritogliere
666	ritorcere
667	ritradurre
668	ritrarre
669	riudire
670	riungere
671	riuscire
672	rivalersi
673	rivedere
674	rivenire
675	rivincere
676	rivivere
677	rivolere
678	rivolgere
679	rodere
680	rompere
681	s
682	s
683	salire
684	saliscendere
685	sapere
686	satisfare
687	scadere
688	scalfiggere
689	scegliere
690	scendere
691	scernere
692	schiudere
693	scindere
694	scingere
695	sciogliere
696	scommuovere
697	scomparire
698	scompiacere
699	sconcludere
700	sconfiggere
701	sconfondere
702	scongiungere
703	sconnettere
704	sconoscere
705	sconsentire
706	scontorcere
707	sconvenire
708	sconvolgere
709	scoprire
710	scorgere
711	scorrere
712	scoscendere
713	screscere
714	scrivere
715	scrocifiggere
716	scucire
717	scuocere
718	scuotere
719	sdare
720	sdipingere
721	sdire
722	sdolere
723	sdrucire
724	secernere
725	sedere
726	semiaprire
727	sentire
728	seppellire
729	servoassistere
730	sfrangere
731	sfriggere
732	sgodere
733	smorire
734	smuovere
735	socchiudere
736	soccorrere
737	soffondere
738	soffriggere
739	soffrire
740	soggiacere
741	soggiungere
742	solere
743	solvere
744	sommergere
745	sommuovere
746	sopraccrescere
747	sopraddire
748	sopraggiungere
749	sopras
750	soprasentire
751	sopraspendere
752	soprassalire
753	soprassedere
754	soprastare
755	soprattenere
756	sopravvedere
757	sopravvenire
758	sopravvincere
759	sopravvivere
760	soprintendere
761	sorgere
762	sorgiungere
763	sorprendere
764	sorreggere
765	sorridere
766	sorvenire
767	sospendere
768	sospingere
769	sostenere
770	sottacere
771	sotten
772	sottostare
773	sottrarre
774	sovratingere
775	sovreccellere
776	sovrempiere
777	sovrempire
778	sovvenire
779	spandere
780	spargere
781	sparire
782	spegnere
783	spendere
784	sperdere
785	spergere
786	spiacere
787	spingere
788	spiovere
789	sporgere
790	spossedere
791	sproteggere
792	sprovvedere
793	stare
794	stingere
795	stogliere
796	storcere
797	strabere
798	stracuocere
799	stradire
800	stragodere
801	strasapere
802	stravedere
803	stravincere
804	stravolere
805	stravolgere
806	stringere
807	struggere
808	suadere
809	succedere
810	succidere
811	succingere
812	suddistinguere
813	suddividere
814	suffiggere
815	sumere
816	sussistere
817	sussumere
818	svellere
819	svenire
820	svolere
821	svolgere
822	tacere
823	telediffondere
824	tendere
825	tenere
826	tergere
827	tingere
828	togliere
829	torcere
830	trabere
831	trafiggere
832	transigere
833	trapungere
834	trarre
835	trasandare
836	trascegliere
837	trascendere
838	trascorrere
839	trasentire
840	trasfondere
841	trasparire
842	trattenere
843	traudire
844	travedere
845	travolgere
846	uccidere
847	udire
848	ungere
849	uscire
850	valere
851	vedere
852	vellere
853	venire
854	vilipendere
855	vincere
856	vivere
857	volere
858	volgere
\.


--
-- TOC entry 2456 (class 0 OID 0)
-- Dependencies: 204
-- Name: verbiirregolari_id_lemma_seq; Type: SEQUENCE SET; Schema: public; Owner: mazzei
--

SELECT pg_catalog.setval('verbiirregolari_id_lemma_seq', 858, true);


--
-- TOC entry 2333 (class 2606 OID 22286)
-- Name: verbiirregolari_pkey; Type: CONSTRAINT; Schema: public; Owner: mazzei
--

ALTER TABLE ONLY verbiirregolari
    ADD CONSTRAINT verbiirregolari_pkey PRIMARY KEY (id_lemma);


-- Completed on 2016-07-25 12:36:57 CEST

--
-- PostgreSQL database dump complete
--

