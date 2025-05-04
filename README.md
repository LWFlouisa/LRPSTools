# LRPSTools
LRPSTools one can use as stand alone programs.

## Disclaimer
This stuff is exclusively meant for use in text-adventures of roguelike games, and not anything else.

## Contrastive
~~~
Correct: Cette granit violet Je ne mange quicely, mais cette pomme rouge Je ne jute quicely. [ 0.034482758620689655 ] [0.333333333 / 0.038461538]
Incorrect: Cette banane violet Je jute lentement, mais cette le granit rouge Je ne jute quicely. [ 0.034482758620689655 ] [0.038461538 / [0.333333333]
~~~

## Data Management
Going forward I'm not going to use the save data feature in Naive Bayes, and moving to a different data architecture maybe write my own libraries, as I kept running into issues of people tampering with my training data and converting it to traditional Chinese. At present I either use XML or hard code in training examples directly, and using models that use elements of self-modifying / self-adapting.

This may seem weird sense I mainly do text-adventures, but evidently this doesn't seem to matter to researchers.
