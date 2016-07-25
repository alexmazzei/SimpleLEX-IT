with T1 as
(select distinct
 P1.lemma as Ver,P1.id_sentence 
from
 words_ud as P1, words_ud as F1 , verbi
where
 P1.lemma = verbi.lemma AND		
 P1.id_sentence = F1.id_sentence AND
 P1.startp = F1.head AND
 (F1.lemma='avere' OR F1.lemma='essere') AND
 F1.upostag = 'AUX' AND
 F1.deprel <> 'auxpass'  
except
(
 ((select distinct
   P2.lemma,P2.id_sentence
  from
   words_ud as P2, words_ud as F2 , verbi
  where
   P2.lemma = verbi.lemma AND		
   P2.id_sentence = F2.id_sentence AND
   P2.startp = F2.head AND
   (F2.lemma='avere' OR F2.lemma='essere') AND
   F2.upostag = 'AUX' AND
   F2.deprel = 'auxpass' )
  union
  (
   select distinct 
    P3.lemma,P3.id_sentence
   from
    words_ud as P3, words_ud as F3 , verbi
   where
    P3.lemma = verbi.lemma AND		
    P3.id_sentence = F3.id_sentence AND
    P3.startp = F3.head AND
    F3.upostag = 'PRON' AND
    (F3.deprel like '%expl%' OR F3.lemma='si') 
   ))
   union
   (
    select distinct 
     P4.lemma,P4.id_sentence
    from
     words_ud as P4, words_ud as F4 , verbi
    where
     P4.lemma = verbi.lemma AND		
     P4.id_sentence = F4.id_sentence AND
     P4.startp = F4.head AND
     (F4.lemma='volere' OR
      F4.lemma='dovere' OR
      F4.lemma='potere') 
   )
) 
) select P1.lemma as ver, F1.lemma as aux, min(t1.id_sentence) as id
from   words_ud as P1, words_ud as F1, T1, verbi
where 
 P1.id_sentence =  T1.id_sentence AND
 P1.lemma = verbi.lemma AND	
 P1.lemma = T1.ver AND	
 P1.id_sentence = F1.id_sentence AND
 P1.startp = F1.head AND
 (F1.lemma='avere' OR F1.lemma='essere') AND
 F1.upostag = 'AUX' AND
 F1.deprel <> 'auxpass'  
group by (P1.lemma,F1.lemma)
order by 1,2;
