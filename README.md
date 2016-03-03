# Guide til at lave Pong

## Banen
1. Tegn din bane i drawField()
 * Brug gerne line(), ellipse() og rect()

## Bolden
1. Tegn en bold i midten af skærmen, ved at skrive kode i funktionen updateBall
2. I stedet for tal i ellipse funktionen, så brug variablene ballX og ballY. Giv de to variable en værdi i setup()
3. Prøv at få bolden til at bevæge sig ved at ændre på ballX og ballY efter hver gennemløb
4. Giv variablerne accX og accY værdi i setup og brug dem til at flytte bolden
5. I funktionen checkPosition skal vi tjekke om bolden stadig er indenfor skærmens kanter. Dette kan gøres ved hjælp af if-sætninger. I if-sætningerne skal vi skifte retning på accX eller accY (afhængig af hvilken kant den rammer). 
 * HINT: ved at skifte fortegn kan man få bolden til at hoppe i modsat retning.
6. I setup, prøv at give accX og accY en tilfældig værdi mellem minus et eller og plus et eller andet

## Paddle / spillere
1. Under funktionen playerUpdate() skal spiller 1 tegnes. Tegn den i højre side af skærmen.
2. Brug varialberne xPlayer1, yPlayer1 og hPlayer til at definere spiller 1 placering på x- og y-aksen og spillerens højde.
3. Brug functionen keyPressed() til at flytte spiller 1 op og ned (jeg anbefaler man bruger pil-tasterne).
4. Nu skal bolden kun hoppe tilbage hvis den rent faktisk rammer spiller et ellers skal den forsvinde ud af skærmen til højre. Find den if-sætning der styre om bolden rammer højre kant. Den skal laves om så den tjekker på xPlayer1, yPlayer1 og hPlayer ift. boldens placering
  * HINT: i en if-sætning kan man skrive && mellem to udsagn hvis begge skal være gældende. Man kan i princippet have uendeligt antal udsagn opdelt med && (&& er en logical operator og der findes også || og !, men i den her opgave bruger vi &&.)
  * HINT: opgaven kan løses ved at have tre udsagn der skal passe i den samme if-sætning 
5. Nu skal spiller to laves og skal styes ved at flytte musen op og ned. 
 * Lav nu selv variable for spiller to, placer den i venstre side og implemter ændringer i den rigtige if-sætning.
 * Man flytter ikke spiller to i keyPressed(), gør det i stedet i playerUpdate

## Pointtæller
1. I funktionen score() skal der laves to tekstfelter på hver sin banehalvdel
2. Den ene bruger score1 som input og den anden score2
3. Lav to if-sætninger i checkPosition() der sørger for at score1 og score2 stiger med en hver gang der scores
4. I samme if-sætninger, få bolden til at gå til start positionen

## Ekstra
* Inddel spiller 1 og 2 i tre felter, så man kan styre retning (og evt ændre hastighed).
  * Find gerne på andre funktioner som kan implimenteres
* Ændre spillere, bane og bolden ved at indsætte billeder
* Implimenter en funktion der går at man spiller til en bestemt score, hvor efter vinderen bliver annonceret og spillet lukker selv
  * Lav evt en restart funktion  
* Man styrer den ene spiller ved at klikke i toppen og bunden af skærmen
