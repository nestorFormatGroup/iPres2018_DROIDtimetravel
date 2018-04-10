# iPres2018_DROIDtimetravel
How DROID is dealing with the 79 different signature files that are there so far.

First, we had a jva wrapper to "solve it all".
As the performance was very slow and the java wrapper causes problems when running in the background, his was changed to a script (bat-file for DROID) and a java tool to analyse the DROID log-files.

This has to be automated, as 25 sample files causes almost 2000 log-files (each file needs 79 log files due to 79 PRONOM signatures so far).


