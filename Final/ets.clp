;; Expert system to inform users about STDs

;;; Global Variables
(defglobal ?*allowed-values* = (create$ 1 2 3))
(defglobal ?*question-11* = (create$ 1 2 3 4))
(defglobal ?*question-12* = (create$ 1 2 3 4 5))
(defglobal ?*yes-no* = (create$ 0 1))

;; Function used to ask questions to the user
;; @param ?qBEG: First part of the question
;; @param $?qMID: List of possible user answers
;; @return ?answer: Variable with the user input text
(deffunction ask-question (?qBEG $?qMID)
  (printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*allowed-values* ": ")
	(bind ?answer (read))

  (while (not (member ?answer ?*allowed-values*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*allowed-values* ": ")
  	(bind ?answer (read))
	)
?answer)

(deffunction ask-question1 (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-11* ": ")
	(bind ?answer (read))

  (if (member ?answer ?*question-11*)
    then
      (assert (sintoma ?answer))
  )

  (while (not (member ?answer ?*question-11*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-11* ": ")
    (bind ?answer (read))
    (if (member ?answer ?*question-11*)
      then
        (assert (sintoma ?answer))
    )
	)
?answer)

(deffunction ask-question12 (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-12* ": ")
	(bind ?answer (read))

  (if (member ?answer ?*question-12*)
    then
      (assert (sintoma-inflamacion ?answer))
  )

  (while (not (member ?answer ?*question-12*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-12* ": ")
    (bind ?answer (read))
    (if (member ?answer ?*question-12*)
      then
        (assert (sintoma-inflamacion ?answer))
    )
	)
?answer)

(deffunction ask-question31 (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-11* ": ")
	(bind ?answer (read))
  (if (member ?answer ?*question-11*)
    then
      (assert (sintoma-ulcera ?answer))
  )

  (while (not (member ?answer ?*question-11*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-11* ": ")
    (bind ?answer (read))
    (if (member ?answer ?*question-11*)
      then
        (assert (sintoma-ulcera ?answer))
    )
	)
?answer)

(deffunction ask-averigua-sifilis (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-12* ": ")
	(bind ?answer (read))

  (if (member ?answer ?*question-12*)
    then
      (assert (sintoma-sifilis ?answer))
  )

  (while (not (member ?answer ?*question-12*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-12* ": ")
    (bind ?answer (read))
    (if (member ?answer ?*question-12*)
      then
        (assert (sintoma-sifilis ?answer))
    )
	)
?answer)

(deffunction ask-yesno-question (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "(- ?field-index 1)  ") " ?field "." crlf))
  (printout t "Insert " ?*yes-no* ": ")
	(bind ?answer (read))

  (while (not (member ?answer ?*yes-no*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "(- ?field-index 1) ") " ?field "." crlf))
    (printout t "Insert " ?*yes-no* ": ")
    (bind ?answer (read))
	)
?answer)

(deffunction ask-question-creo-ets (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-11* ": ")
	(bind ?answer (read))
  (assert (creo-ets ?answer))

  (while (not (member ?answer ?*question-11*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-11* ": ")
    (bind ?answer (read))
    (assert (creo-ets ?answer))
	)
?answer)

(deffunction ask-question-enfermedad-pareja (?qBEG $?qMID)
	(printout t crlf ?qBEG crlf crlf)
  (progn$ (?field $?qMID)
    (printout t "    "?field-index ") " ?field "." crlf))
  (printout t "Insert " ?*question-11* ": ")
	(bind ?answer (read))
  (assert (creo-ets-info-enfermedad ?answer))
  (while (not (member ?answer ?*question-11*)) do
    (printout t crlf ?qBEG crlf crlf)
    (progn$ (?field $?qMID)
      (printout t "    "?field-index ") " ?field "." crlf))
    (printout t "Insert " ?*question-11* ": ")
    (bind ?answer (read))
    (assert (creo-ets-info-enfermedad ?answer))
	)
?answer)

;;;;;;;;;;;;;;;;;
;; Main Module ;;
;;;;;;;;;;;;;;;;;
;; Lo primero que hacemos es preguntar al usuario
(defrule que-te-ocurre
  ?x <- (initial-fact)
	=>
  (retract ?x)
	(bind ?r (ask-question
    "¿Qué te ocurre?"

    "Creo que tengo una ETS, porque tengo síntomas"
    "Creo que podría tener una ETS, pero no presento síntomas"
    "Me gustaría obtener información sobre las ETS"

    "Salir"))
  (assert (respuesta ?r))
  (watch facts)
)

;; Asks for main sytoms of STDs
(defrule tipo-usuario-uno
  ?x <- (respuesta 1)
=>
  (bind ?r (ask-question1
    "Selecciona algunos de los siguiente síntomas"

    "Dolor/escozor al orinar o al tener relaciones"
    "Dolor de garganta"
    "Algún tipo de erupción/berruga/úlcera"

    "Terminar"
  ))
  (retract ?x)
)

(defrule tipo-usuario-dos
  ?x <- (respuesta 2)
=>
  (bind ?r (ask-question-creo-ets
    "¿Por qué crees que tienes una ETS?"

    "He tenido una relación de riesgo, o sexo sin protección."
    "Creo que mi pareja me está siendo infiel."
    "Mi pareja ha dado positivo en una ETS."

    "Terminar"
  ))

  (retract ?x)
)

(defrule tipo-usuario-tres
  ?x <- (respuesta 3)
=>
  (assert (quiere-info))
  (retract ?x)
)

(defrule creo-preguntavarias
  (creo-ets 1)
=>
(bind ?r (ask-yesno-question
    "¿Con varias personas o con tu pareja?"

    "Una"
    "Varias"
  ))
  (assert (creo-ets-varias ?r))
)

(defrule creo-puedenpadecer
  ?x <- (creo-ets-varias ?y)
=>
(bind ?r (ask-yesno-question
    "¿Crees que algunas de ellas puede padecer una ETS?"

    "No"
    "Sí"
  ))
  (assert (creo-ets-varias-padecen ?r))
  (retract ?x)
)


(defrule creo-ets4
  ?x <- (creo-ets-varias-padecen 0)
=>
(printout t "Si has tenido una relación de riesgo, pero  tu pareja no
            presenta una ETS y tú no presentas síntomas, puedes estar tranquilo,
            SEGURAMENTE NO PADEZCAS NINGUNA ETS. Pero si buscas resultados
            más empíricos, no dudes en consultar a tu médico."  crlf
)
  (retract ?x)
)

(defrule creo-preguntaorientacion
  (creo-ets-varias-padecen 1)
=>
  (bind ?r (ask-yesno-question
      "¿Cual es tu orientación sexual?"

      "Homosexual"
      "Hetero"
  ))
  (assert (creo-ets-varias-orientacion ?r))
)


(defrule creoets-2
  ?x <- (creo-ets 2)
=>
  (assert (creo-ets-varias 1))
  (retract ?x)
)

;; Te has hecho pruebas y has dado positivo? si: mostrar supongo que ya sabras lo que tienes, y me voy a InvoUretritis etc, todass
;; no: Le pregunto por orientacion, asertar, creoetsvariaspadecen

(defrule creo-ets-pareja-positivo
  ?x <- (creo-ets 3)
=>
  (bind ?r (ask-yesno-question
      "¿Te has hecho pruebas y has dado positivo?"

      "No"
      "Sí"
  ))
  (assert (creo-ets-pareja-positivo ?r))
  (retract ?x)
)

(defrule creo-ets-pareja-negativo
  (creo-ets-pareja-positivo 0)
=>
  (printout t "Dadas tus circunstancias, ya que no te has hecho pruebas de ETS, pero tu pareja ha dado positivo, es aconsejable que vayas a hablar con
  tu médico para hacerte pruebas." crlf crlf)
)

(defrule InformaETSs
  (quiere-info)
=>
  (bind ?r (ask-question-enfermedad-pareja
    "¿Sobre qué tipo de enfermedades de ETSs quieres información?"

    "Inflamatorias"
    "Úlcerosas"
    "Faríngeas"

    "Terminar"
  ))
  (assert (modulo-informacion))
)

(defrule creo-ets-sobre-que-ha-dado-positivo
  (creo-ets-pareja-positivo 1)
=>
  (bind ?r (ask-question-enfermedad-pareja
    "¿En qué tipo de enfermedad ha dado positivo tu pareja?"

    "Inflamatoria"
    "Úlcerosa"
    "Faríngea"

    "Terminar"
  ))
  (assert (modulo-informacion))
)

(defrule creo-ets-info-inflamcion
  ?x <- (creo-ets-info-enfermedad 1)
=>
  (assert (infobalanitis))
  (assert (infoproctitis))
  (assert (infouretritis))
)

(defrule creo-ets-info-ulcerosa
  ?x <- (creo-ets-info-enfermedad 2)
=>
  (assert (infoUlcera))
  (assert (infoUlceraMala))
  (assert (infoVerruga))
  (assert (infoVerrugaMala))
  (assert (sifilis-roseola))
  (assert (sifilis-papulosa))
  (assert (sifilis-condimlomas))
  (assert (sifilis-alopecia))
)

(defrule creo-ets-info-faringea
  ?x <- (creo-ets-info-enfermedad 3)
=>
  (assert (faringitis-mala))
  (assert (faringitis-normal))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ETShetero
  ?x<-(creo-ets-varias-padecen 1)
  (creo-ets-varias-orientacion 1)
=>
  (assert (infoETShetero))
  (retract ?x)
)

(defrule ETSgay
   ?x<-(creo-ets-varias-padecen 1)
   (creo-ets-varias-orientacion 0)
=>
   (assert (infoETSgay))
  (retract ?x)
)




;;(defrule module13
;;  ?x <- (respuesta 3)
;;=>
;;  (retract ?x)
;;)

(defrule cambiar-a-inflamacion
  ?x <- (sintoma 1)
  =>
  (assert (modulo-inflamacion))
  (retract ?x)
)

(defrule cambiar-a-faringitis
  ?x <- (sintoma 2)
  =>
  (assert (modulo-faringitis))
  (retract ?x)
)

(defrule cambiar-a-ulcera
  ?x <- (sintoma 3)
  =>
  (assert (modulo-ulcera))
  (retract ?x)
)

(defrule inflamaciones
  ?x<- (modulo-inflamacion)
=>
  (bind ?r (ask-question12
      "Parece que presentas una infección, si presentas alguno de éstos síntomas, selecciónalos."

      "Fluido amarillento y/o maloliente"
      "Dolor anorectal y deseo de evacuar continuo"
      "Sangrado rectal"
      "Escozor y ardor tras en coito"

      "Terminar"
    ))
  (assert (modulo-informacion))
)

;;;;;;;;;;;;;;;;;;;;;;;;;
;;MODULO FARINGITIS    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule faringitis1
  (modulo-faringitis)
=>
  (bind ?r (ask-yesno-question
      "¿Has practicado últimamente sexo oral?"

      "No"
      "Sí"
    ))
    (assert (sintoma-faringitis-oral ?r))
)
(defrule faringitis11
  (modulo-faringitis)
  (sintoma-faringitis-oral 1)
=>
  (bind ?r (ask-yesno-question
      "¿Con más de una persona en los últimos meses?"

      "No"
      "Sí"
    ))
    (assert (sintoma-faringitis-mas-de-uno ?r))
)
(defrule faringitis13
  (modulo-faringitis)
  (sintoma-faringitis-oral 1)
  (sintoma-faringitis-mas-de-uno 0)
=>
  (bind ?r (ask-yesno-question
      "¿Ha dado tu pareja positivo en alguna prueba?"

      "No"
      "Sí"
    ))
    (assert (sintoma-faringitis-oral-pareja ?r))
)

(defrule exit-faringitis-normal
  ?ml <- (modulo-faringitis)
  ?x <- (sintoma-faringitis-oral 0)
=>
  (assert (faringitis-normal))
  (assert (modulo-informacion))
  (retract ?ml)
  (retract ?x)
)

(defrule exit-faringitis-mala
  ?ml <- (modulo-faringitis)
  ?x <- (sintoma-faringitis-oral 1)
  ?x1 <- (sintoma-faringitis-mas-de-uno ?y)
  ?x2 <- (sintoma-faringitis-oral-pareja 1)
=>
  (assert (faringitis-mala))
  (assert (modulo-informacion))
  (retract ?ml)
  (retract ?x)
  (retract ?x1)
  (retract ?x2)
)

(defrule exit-faringitis-normal-fallback
  ?ml <- (modulo-faringitis)
=>
  (assert (faringitis-normal))
  (assert (modulo-informacion))
  (retract ?ml)
)

;;;;;;;;;;;;;;;;;;;;;;;;
;;   MODULO ÚLCERA    ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(defrule ask-ulcera
  (modulo-ulcera)
=>
  (bind ?r (ask-question31
      "¿Presentas alguno de éstos síntomas?"

      "Verruga en los genitales"
      "Liendres o ladillas"
      "Úlcera o erupción cutánea"

      "Terminar"
    ))
    (assert (modulo-informacion))
)

(defrule ulcera1
  ?ml <- (modulo-ulcera)
  (sintoma-ulcera 1)
=>
  (bind ?r (ask-yesno-question
    "¿Has tenido alguna relación de riesgo?"

    "No"
    "Sí"
  ))
  (assert (sintoma-ulcera-riesgo ?r))
  (retract ?ml)
)

(defrule ulcera2
  ?ml <- (modulo-ulcera)
  (sintoma-ulcera 2)
=>
  (bind ?r (ask-yesno-question
    "¿Te pica?"

    "No"
    "Sí"
  ))
  (assert (sintoma-ulcera-liendre ?r))
  (retract ?ml)
)

(defrule ulcera3
  ?ml <- (modulo-ulcera)
  (sintoma-ulcera 3)
=>
  (bind ?r (ask-yesno-question
    "¿Has estado, o eres de un pais Tropical?"

    "No"
    "Sí"
  ))
  (assert (sintoma-ulcera-tropical ?r))
  (retract ?ml)
)


;;;;;;;;;;;;;;;;;;;;
;; ULCERA GENITAL ;;
;;;;;;;;;;;;;;;;;;;;

(defrule ulcera
  (sintoma-ulcera-tropical 0 )
  =>
  (assert(infoUlcera))
)

(defrule ulceraMala
  (sintoma-ulcera-tropical 1 )
=>
  (assert(infoUlceraMala))
)

(defrule ulceraMalaTipo
  (sintoma-ulcera-tropical 1)
  (sintoma-ulcera 3)
=>
  (bind ?r (ask-averigua-sifilis
    "¿De qué tipo es tu úlcera?"

    "Color rosa-pálido"
    "Rojo-oscuro en tronco, extremidades, planta o palmas"
    "Rojo-oscuro, area genital, perineo, ingles, axilas, zonas húmedas o de pliegues"
    "Caido del pelo por zonas"

    "Terminar"
  ))
  (assert (averigua-sifilis))
)

(defrule sifilis1
    (sintoma-sifilis 1)
  =>
    (assert (sifilis-roseola))
)
(defrule sifilis2
    (sintoma-sifilis 2)
  =>
    (assert (sifilis-papulosa))
)
(defrule sifilis3
    (sintoma-sifilis 3)
  =>
    (assert (sifilis-condimlomas))
)
(defrule sifilis4
    (sintoma-sifilis 4)
  =>
    (assert (sifilis-alopecia))
)

;;;;;;;;;;;;;;;;;;;;;;;;
;; VERRUGAS GENITALES ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(defrule verrugas
(sintoma-ulcera-riesgo 1 )
=>
(assert(infoVerrugaMala))
)

(defrule verrugas2
(sintoma-ulcera-riesgo 0 )
=>
(assert(infoVerruga))
)

;;;;;;;;;;;;;;;;;;;;;
;; ECTOPARASITOSIS ;;
;;;;;;;;;;;;;;;;;;;;;

(defrule esteroparasitosis
(sintoma-ulcera-liendre 1 )
=>
(assert(infoesteroparasitosis))
)

(defrule esteroparasitosis2
(sintoma-ulcera-liendre 0 )
=>
(assert(infoCostrasPrurito))
)

;;;;;;;;;;;;;;;;;;;;;;;;;
;;MODULO INFLAMACIONES ;;
;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;
;;URETRITIS;;
;;;;;;;;;;;;;

(defrule uretritis
  ?x<- (sintoma-inflamacion 1)
=>
  (assert(infouretritis))
)

;;;;;;;;;;;;;
;;PROCTITIS;;
;;;;;;;;;;;;;
(defrule proctitis2
  ?x <- (sintoma-inflamacion 2)
  ?y <- (sintoma-inflamacion 3)
=>
  (assert(infoproctitis))
)

(defrule proctitis
?x<- (sintoma-inflamacion 2)
=>
(assert(infoproctitis))
)


;;;;;;;;;;;;;
;;BALANITIS;;
;;;;;;;;;;;;;

(defrule balanitis
  ?x <- (sintoma-inflamacion 4)
=>
  (assert(infobalanitis))
)


;;;;;;;;;;;;;;;;;;;;;;;;;
;;MODULO INFORMACION   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule informacion
  ?ml <- (modulo-informacion)
=>
  (printout t "A continuación, te presentamos algunas descripciones de enfermades que, dado lo que nos has dicho" crlf
	    "podrías padecer. No olvides consultar con tu médico en caso de preocupación. ¡NUNCA TE AUTOMEDIQUES!" crlf crlf)
  (retract ?ml)
)
;;;;;;;;;;;;;
;;URETRITIS;;
;;;;;;;;;;;;;

(defrule INFORMAuretritis
  ?x<- (infouretritis)
=>
  (printout t
      ";;;;;;;;;;;;;" crlf
      ";;URETRITIS;;" crlf
      ";;;;;;;;;;;;;" crlf crlf

      "La Uretritis es una inflamación de la uretra, que puede ser causa O NO de una infección. " crlf
	    "Cuando no es causa de una infección, puede deberse a algún tipo de problema anatómico " crlf
      "(como la estenosis o la fibrosis). Cuando sí lo es, puede deberse a la presencia de algún microorganismo." crlf
	    "En hombres sanos, se da en un (20%-30%) de los casos" crlf
	    "El periodo de incubación de la uretritis oscila entre 5 y 20 días, según el tipo de Uretritis. " crlf
	    "A pesar de que a veces puede presentar complicaciones, por lo general, no es una enfermedad grave." crlf
	    "Algunos síntomas observados en pacientes con Uretritis son: " crlf
	    "dolor al miccionar, fluido de aspecto claro y mucoso, con un color blanco o amarillo y olor fuerte y extraño," crlf
	    "dolor de testículos. Si presentas alguno d estos síntomas, consulta con tu médico para que te haga una prueba de uretritis" crlf crlf
  )
)

;;;;;;;;;;;;;
;;PROCTITIS;;
;;;;;;;;;;;;;

(defrule INFORMAproctitis
?x<- (infoproctitis)
=>
 (printout t
      ";;;;;;;;;;;;;" crlf
      ";;PROCTITIS;;" crlf
      ";;;;;;;;;;;;;" crlf crlf
      "La Proctitis es una inflamación del recto, que puede venir O NO por tansmisión sexual. " crlf
	    "Las que no son transmitidas por vía sexual, son poco frecuentes." crlf
	    "Para diferenciarla entre si se debe a trasmisión sexual o no, hay que tener en cuenta las práticas sexuales del paciente. " crlf
	    "Algunos síntomas observados en pacientes con Proctitis son: " crlf
	    "dolor anorectal, secreción de moco o pus , incluso a veces pueden estar acompañados de sangrado rectal, " crlf
	    "deseo de evacuar constante y extreñimiento o diarrea." crlf
	    "La proctitis por transmisión sexual se da más en varones entre 15-30 años.En españa se diagnostican unos 2000 casos nuevos al año. "crlf
      "En países desarollados es más común en países de noreste de Europa y NorteAmérica" crlf crlf
  )
)

;;;;;;;;;;;;;
;;BALANITIS;;
;;;;;;;;;;;;;

(defrule INFORMAbalanitis
?x<- (infobalanitis)
=>
 (printout t
      ";;;;;;;;;;;;;" crlf
      ";;BALANITIS;;" crlf
      ";;;;;;;;;;;;;" crlf crlf

      "La balanitis es una infección por cándidas en el hombre. Es menos frecuente en los no circuncidados. " crlf
	    "No es grave, es muy frecuente y fácil de tratar.  " crlf
	    "Algunos síntomas observados en pacientes con Balanitis son: " crlf
	    "picor en la zona y sensación de ardor después del coito. " crlf crlf
  )
)

;;;;;;;;;;;;;;
;;FARINGITIS;;
;;;;;;;;;;;;;;

(defrule INFORMAfaringitisMala
  (faringitis-mala)
=>
 (printout t
     ";;;;;;;;;;;;;;" crlf
     ";;FARINGITIS;;" crlf
     ";;;;;;;;;;;;;;" crlf crlf

    "La faringitis de origen infeccioso transmitida sexualmente es el resultado de las relaciones orogenitales." crlf
		"La infección se transmite más fácilmente tras una felación que después de un cunnilingus. Se trasmite tanto de la" crlf
 		"Boca a los genitales como de los genitales a la boca. " crlf
		"Algunos síntomas observados en pacientes con este tipo de Faringitis son: " crlf
		"Dolor de garganta producido al tragar fluidos, inflamación de los ganglios. " crlf
		"Sin embargo, es frecuentemente Asíntomática." crlf
		"Normalmente este tipo de faringitis se diagnostica como una faringitis normal (o faringitis de repetición)" crlf
		"Inicialmente, y si no se evoluciona bien al tratamiento habitual que se suele seguir, se trata de " crlf
		"Diagnosticar este tipo de faringitis, basándose en las prácticas sexuales del paciente. " crlf crlf)
)

(defrule INFORMAfaringitis
(faringitis-normal)
=>
 (printout t
   ";;;;;;;;;;;;;;" crlf
   ";;FARINGITIS;;" crlf
   ";;;;;;;;;;;;;;" crlf crlf

      "La faringitis es la inflamación de la mucosa que reviste la faringe." crlf
	    "Generalmente le acompañan síntomas como deglución difícil, amígdalas inflamadas y fiebre más o menos elevada." crlf
 	    "Las posibles causas de la faringitis son las infecciones víricas, infecciones bacterianas " crlf
	    " o reacciones alérgicas. " crlf
	    " No suele ser grave. El tratamiento que se suele poner " crlf
	    " consiste en administración de líquidos y reposo, analgésicos y antinflamatorios (en general paracetamol,ibuprofeno..)" crlf
	    " o antisépticos chupados." crlf crlf
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ULCERA NORMAL (HERPES)      ;;
;;;;;;;;;;;;;;;,;;;;;;;;;;;;;;;;;
(defrule INFORMAherpes
  (infoUlcera)
=>
  ( printout t
    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" crlf
    ";; ULCERA NORMAL (HERPES)      ;;" crlf
    ";;;;;;;;;;;;;;;,;;;;;;;;;;;;;;;;;" crlf crlf

    "El herpes es una infección causada por un virus herpes simple (VHS).
    El herpes bucal provoca llagas alrededor de la boca o en el rostro.
    El herpes genital es una enfermedad de transmisión sexual (ETS).
     Puede afectar los genitales, las nalgas o el área del ano.
     Otras infecciones por herpes pueden afectar los ojos, la piel u otras partes del cuerpo. El virus puede ser peligroso en recién nacidos o en personas con sistemas inmunes debilitados." crlf crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ULCERA FEA                  ;;
;;;;;;;;;;;;;;;,;;;;;;;;;;;;;;;;;
(defrule INFORMAulcera
  (infoUlceraMala)
=>
  (printout t

    ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;" crlf
    ";; ULCERA FEA                  ;;" crlf
    ";;;;;;;;;;;;;;;,;;;;;;;;;;;;;;;;;" crlf crlf

    "Una causa común de las úlceras en los genitales masculinos son las infecciones de transmisión a través del contacto sexual, como por ejemplo:" crlf crlf

    "   *) Herpes genital (ampollas pequeñas y dolorosas llenas de líquido claro o color paja)." crlf
    "   *) Verrugas genitales (manchas de color carne que son elevadas o planas y pueden lucir como la parte superior de una coliflor)." crlf
    "   *) Chancroide (una pequeña protuberancia en los genitales, que se convierte en una úlcera al cabo de un día de su aparición)." crlf
    "   *) Sífilis (llaga o úlcera abierta pequeña e indolora, llamada chancro, en los genitales)." crlf
    "   *) Granuloma inguinal (protuberancias pequeñas de color carne que aparecen en los genitales o alrededor del ano)." crlf
    "   *) Linfogranuloma venéreo (pequeña llaga indolora en los genitales masculinos)." crlf crlf)
)

;;;;;;;;;;;;;
;; SIFILIS ;;
;;;;;;;;;;;;;

;;ROSEOLA
(defrule INFORMAroseola
    (sifilis-roseola)
=>
      (printout t
        ";;;;;;;;;;;;;" crlf
        ";; SIFILIS ;;" crlf
        ";;;;;;;;;;;;;" crlf crfl

        "Un tipo de sífilis secundaria es la ROSEOLA SIFÍLICA , que presenta una úlcera color rosa palido, generalmente en tronco y extremidades.
        Es más común y precoz,y desaparece a las pocas semanas como maximo dos meses sin tratamiento." crlf crlf
      )
)
;;;;;;;;;;;;
;;PAPULOSO;;
;;;;;;;;;;;;
(defrule INFORMApapulosa
    (sifilis-papulosa)
=>
    (printout t
      ";;;;;;;;;;;;" crlf
      ";;PAPULOSO;;" crlf
      ";;;;;;;;;;;;" crlf crlf

      "Un tipo de Sífilis secundaria es la SIFILIDES PAPULOSAS,que consiste en una  erupción cutánea  rojo oscuro que se presenta normalmente  en tronco y extremidaes, aunque mas en plantas y palmas." crlf crlf
    )
)

;;;;;;;;;;;;;;;
;;CONDIMLOMAS;;
;;;;;;;;;;;;;;;
(defrule INFORMAcondimloma
  (sifilis-condimlomas)
=>
  (printout t
    ";;;;;;;;;;;;;;;" crlf
    ";;CONDIMLOMAS;;" crlf
    ";;;;;;;;;;;;;;;" crlf crlf

    "Un tipo de Sífilis secundaria son los CONDIMLOMAS PLANOS, que suelen aparecer a los 3-6 meses de la infeccion. Suelen ser planas  y color rojo oscuro. En zonas humedas, area genital, perineo, ingles, axilas y zonas de pliegues. " crlf crlf

)
)

;;;;;;;;;;;;
;;alopecia;;
;;;;;;;;;;;;

(defrule INFORMAalopecia
  (sifilis-alopecia)
=>
    (printout t
      ";;;;;;;;;;;;" crlf
      ";;alopecia;;" crlf
      ";;;;;;;;;;;;" crlf crlf

      "Un tipo de Sífilis secundaria es la ALOPECIA SIFÍLICA.Se presenta como erupciones/ úlceras en cuero cabelludo, se manifiesta en forma de alopecia en placas." crlf crlf
      )
)

;;;;;;;;;;;;;;;;;;;;;
;;VERRUGAS NORMALES;;
;;;;;;;;;;;;;;;;;;;;;

(defrule INFORMAVerrugaNormal
  (infoVerruga)
=>
  (printout t

      ";;;;;;;;;;;;;;;;;;;;;" crlf
      ";;VERRUGAS NORMALES;;" crfl
      ";;;;;;;;;;;;;;;;;;;;;" crlf crlf

      "La verruga es una lesión cutánea causada por el virus del papiloma humano." crlf
      "presentan una forma variable, llamativa y por lo general, de forma globular," crlf
      "y pueden afectar a distintas zonas de la piel." crlf crlf
      "Su extirpación no es fácil ya que las verrugas tienen su propio sistema de irrigación sanguínea que causan sangramientos abundantes cuando su extracción es por medios no clínicos; además pueden regenerarse con mayor virulencia. Adicionalmente compromete varios terminales nerviosos por lo que su extracción o manipulación causa gran dolor" crlf
      "Pueden contraerse por contacto íntimo con personas afectadas por el virus del papiloma humano radicado en la zona genital y por transmisión consanguínea de portadores asintomáticos. El desarrollo de verrugas se favorece cuando hay fallos en el sistema inmunitario." crlf crlf
      )
)

;;;;;;;;;;;;;;;;;;;;
;; VERRUGAS FEAS  ;;
;;;;;;;;;;;;;;;;;;;;

(defrule INFORMAVerrugaFea
  (infoVerrugaMala)
=>
  (printout t

    ";;;;;;;;;;;;;;;;;;;;"  crlf
    ";; VERRUGAS FEAS  ;;"  crlf
    ";;;;;;;;;;;;;;;;;;;;"  crlf crlf

    "La verruga es una lesión cutánea causada por el virus del papiloma humano." crlf
    "presentan una forma variable, llamativa y por lo general, de forma globular," crlf
    "y pueden afectar a distintas zonas de la piel" crlf)
)

;;;;;;;;;;;;;;;;;;;;;;
;; ECTEROPARASITOSIS;;
;;;;;;;;;;;;;;;;;;;;;;


(defrule INFORMAEctoparasitosis
  (infoesteroparasitosis)
=>
  (printout t
    ";;;;;;;;;;;;;;;;;;;;;;" crlf
    ";; ECTEROPARASITOSIS;;" crlf
    ";;;;;;;;;;;;;;;;;;;;;;" crlf crlf

    "La ectoparasitosis es una dermatosis parasitaria (Los parasitos se deslizan por encima o debajo de la piel.)" crlf
    "Se hallan muy extendidas por el mundo." crlf
    "Son comunes en presonas que se encuentran en situaciones precarias" crlf crfl)
)

(defrule INFORMAPrurito
  (infoCostrasPrurito)
=>
  (printout t
    ";;;;;;;;;;;;;;;;;;;;;;" crlf
    ";;      Prurito     ;;" crlf
    ";;;;;;;;;;;;;;;;;;;;;;" crlf crlf

    "Si tienes picor, pero no parásitos, lo más probable es que no padezcas de liendres, ni una ETS. Sin embargo, puedes consultar con tu médico.") crlf crlf
)

;;;;; no tiene sintomas pero relación de riesgo y pareja ha dado positivo en ETS ;;;;

(defrule INFORMAetsgays
  (infoETSgay)
=>
  (printout t "Teniendo en cuenta tus prácticas homosexuales, que has tenido relaciones de riesgo, y que tu pareja ha dado positivo en alguna prueba, deberías acudir a tu médico a hacerte pruebas.
  Sin embargo, si estás seguro de no presentar síntoma alguno, deberías estar tranquilo, pues rara vez una ETS es asintomática.
  Algunas de las ETS más frecuentes en varones homosexuales, son:" crlf)
  (assert (infoproctitis))
  (assert (infobalanitis))
  (assert (faringitis-mala))
)

(defrule INFORMAetshetero
  (infoETShetero)
=>
  (printout t "Teniendo en cuenta tus prácticas heterosexuales, que has tenido relaciones de riesgo, y que tu pareja ha dado positivo en alguna prueba, deberías acudir a tu médico a hacerte pruebas.
  Sin embargo, si estás seguro de no presentar síntoma alguno, deberías estar tranquilo, pues rara vez una ETS es asintomática.
  de todas formas, puedes indicar a continuación, si lo deseas, el tipo de ETS es en la que ha dado positivo tu pareja, para orientarte mejor en ese tipo de ETS:
  " crlf)
  (assert (creo-ets-pareja-positivo 1))
)
