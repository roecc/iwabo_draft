VAR dressed = false
VAR brushedTeeth = false
VAR interruptedApril = false

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
{skillCount==0:
    As you walk toward the door, you stub your toe on the carton.
    ++[yell at the carton]
        The carton looks unimpressed.
        ->Bedroom
    ++[hold it in]
        You take a deep breath.
        ->Bedroom
  - else:
    ->Hallway
}


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


=== Hallway ===
You are now in the Hallway. The door to APRIL's room is ajar, sunlight falling through the crack. {not interruptedApril: With it the gentle strumming of her guitar.} The sizzling of batter on butter from the kitchen downstairs. JUNE's room just behind the stairway.
+go to bedroom
    ->Bedroom
+go to april's room
    ->AprilsRoom
    

=== AprilsRoom ===
April is playing the guitar.
+leave
    ->Hallway









