domains
    disease,indication,name=symbol


predicates
  hypothesis(name,disease)
  symptom(name,indication)

clauses
   symptom(charlie,fever).
   symptom(charlie,rash).
   symptom(charlie,headache).
   symptom(charlie,runny_nose).
   symptom(ea,fever).
   symptom(du,caugh).
 
  hypothesis(Patient,measles):-
   symptom(Patient,fever),
   symptom(Patient,cough),
   symptom(Patient,conjunctivities),
   symptom(Patient,runny_nose),
   symptom(Patient,rash).


  hypothesis(Patient,german_measles):-
   symptom(Patient,fever),
   symptom(Patient,headache),
   symptom(Patient,runny_nose),
   symptom(Patient,rash).

  hypothesis(Patient,whoopin_cough):-
   symptom(Patient,fever),
   symptom(Patient,headache),
   symptom(Patient,runny_nose).
