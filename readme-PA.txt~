
PA = Preferential Attachment

There are two categores of abs codes:

1. PAs (PA1, PA2, PA4, PA8, PA16) 
	e.g. PA2.abs contains the code of PA with 2 workers.
	
2. PAinit.abs which contains just the initialization part of the PA. It is sequential.


For running the codes, commands are used as follows:

	./.cabal-sandbox/bin/abs2haskell PA2.abs
	ghc --make PA2.hs -main-is PA2  -package-db ./.cabal-sandbox/x86_64-linux-ghc-7.8.4-packages.conf.d/ -fforce-recomp -threaded
	time ./PA2 +RTS -N2

The size of the problem for all the files is 10,000. If it needs to change, then you should find the variable "num" and change its value.


You can run each of the codes individually or use shell scripts to get batch of results for comparisons. There are 3 shell script files:

1. PAs.sh:
	time ./PA1 +RTS -N1 
	time ./PA2 +RTS -N2
	time ./PA4 +RTS -N4
	time ./PA8 +RTS -N8
	time ./PA16 +RTS -N16

2. PAsinit.sh:
	time ./PAinit +RTS -N1 
	time ./PAinit +RTS -N2
	time ./PAinit +RTS -N4
	time ./PAinit +RTS -N8
	time ./PAinit +RTS -N16

3. Run.sh which uses the two above mentioned shell scripts for multiple identical runs:
	./PAs.sh 2> PAsresults105
	./PAsinit.sh 2> PAsinitresults104

	./PAs.sh 2>> PAsresults105
	./PAsinit.sh 2>> PAsinitresults104

	./PAs.sh 2>> PAsresults105
	./PAsinit.sh 2>> PAsinitresults104




