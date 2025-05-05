VAR dressed = false
VAR brushedTeeth = false

VAR skillCount = 0
VAR hunter = false


=== Start ===
DARYL starts as if from a nightmare but quickly settles himself. He sits up at the edge of the bed, hunched forward, his face buried in his hands before they slide down, folding below his chin.

*[Get up]
You stand up and look around.
-> Bedroom

=== Bedroom ===
+ {not dressed}[clothes on the chair]
    A stack of neatly folded clothes greets you.
    **[get dressed]
        You put on the white Tee, flanel shirt and worn jeans.
        ~ dressed = true
        ->Bedroom
    **[leave]
        ~ dressed = false
        ->Bedroom
+[cardboard box]
    A moving carton. "S-Cargo" in large, friendly letters on the side. Two letters on top, one addressed to your house, the other only to your name.
    ->Carton
    
->Bedroom
+[bathroom door]
    ->Bathroom
->Bedroom
+[hallway]
    As you walk toward the door, you stub your toe on the carton.
    **[yell at the carton]
        The carton looks unimpressed.
        ->Bedroom
    **[hold it in]
        You take a deep breath.
        ->Bedroom
->Bedroom


-> END



= Bathroom
*[wash your face]
    You let the water run for a while, stemming your arms onto the corners of the basin, looking into the mirror. You cup your hands and douse your face in coold, fresh water.
    ->Bathroom
*[brush your teeth]
    ~ brushedTeeth = true
    You groggily watch your reflection fillate the toothbrush.
    ->Bathroom
* {not dressed}[take a shower]
    You take a brisk shower, but the shock doesn't wash off easy.
    ->Bathroom
+return to bedroom
    ->Bedroom





=== Carton ===
*[read the first letter]
    A letter from the elderly care facility your father lived in informing you of his recent passing. The box contains keepsakes he seemed to hold especially dear, please pick out what's yours and send on the rest.
    ->Carton
*[read the second letter]
    “Daryl,
        Everything I did, I did for you. There isn’t much time left. Nobody knows.
        39°35'18.3"N 104°27'42.7"W
        
        Harold”
    ->Carton
*[open the carton]
    Character creation, you are what you keep.
    ->Contents
*leave
    ->Bedroom

= Contents
* Deer Antler
    Sharp eyes and sharper instincts. It's hunt or be hunted.
    **{not hunter}[keep]
        ~ hunter = true
        ~ skillCount += 1
        ->Contents
    **[put back]
        ->Contents
* Deer Antler
    Sharp eyes and sharper instincts. It's hunt or be hunted.
    **{not hunter}[keep]
        ~ hunter = true
        ~ skillCount += 1
        ->Contents
    **[put back]
        ->Contents
-> END
