/*
trace
compile and run using trace and see single step running using F10
*/

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
	
	hypothesis(Patient,measles):-
		symptom(Patient,fever),
		symptom(Patient,rash),	
		symptom(Patient,caugh),
		symptom(Patient,runny_nose),	
		symptom(Patient,conjunctivities).


	hypothesis(Patient,german_measles):-
		symptom(Patient,fever),
		symptom(Patient,rash),	
		symptom(Patient,headache),
		symptom(Patient,runny_nose).
/*		not(symptom(Patient,runny_nose)).*/


	hypothesis(Patient,flu):-
		symptom(Patient,fever),
		symptom(Patient,chills),	
		symptom(Patient,caugh),
		symptom(Patient,headache),
		symptom(Patient,body_ache),
		symptom(Patient,runny_nose),	
		symptom(Patient,conjunctivities),	
		symptom(Patient,sore_throat).


	hypothesis(Patient,cold):-	
		symptom(Patient,sore_throat),
		symptom(Patient,headache),
		symptom(Patient,chills),
		symptom(Patient,runny_nose),	
		symptom(Patient,sneezing).


	hypothesis(Patient,german_measles):-
		symptom(Patient,fever),
		symptom(Patient,swollen_glands).


	hypothesis(Patient,german_measles):-
		symptom(Patient,fever),
		symptom(Patient,rash),	
		symptom(Patient,body_ache),
		symptom(Patient,chills).


	hypothesis(Patient,german_measles):-
		symptom(Patient,caugh),
		symptom(Patient,sneezing),	
		symptom(Patient,runny_nose).