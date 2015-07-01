#!/usr/bin/env bash


# Translate the params, the cell, and the tests
###############################################

a2h src/Params.abs
a2h src/CellImpl.abs
a2h src/TestArr.abs
a2h src/TestPro.abs
a2h src/TestCell.abs

# Translate each PA program
###########################

a2h src/SeqArr.abs
a2h src/ParArr.abs
a2h src/DisArr.abs

a2h src/SeqCell.abs
a2h src/ParCell.abs
a2h src/DisCell.abs

a2h src/SeqPro.abs
a2h src/ParPro.abs
# a2h src/DisPro.abs

# Compile the programs
######################

ghc --make -O src/SeqArr.hs src/TestArr.hs src/Params.hs -main-is SeqArr -fforce-recomp 
ghc --make -O src/SeqCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is SeqCell -fforce-recomp 
ghc --make -O src/SeqPro.hs src/TestPro.hs src/Params.hs -main-is SeqPro -fforce-recomp 


ghc --make -O src/ParArr.hs src/TestArr.hs src/Params.hs -main-is ParArr -fforce-recomp -threaded 
ghc --make -O src/ParCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is ParCell -fforce-recomp -threaded 
ghc --make -O src/ParPro.hs src/TestPro.hs src/Params.hs -main-is ParPro -fforce-recomp -threaded 

ghc --make -O src/DisArr.hs src/TestArr.hs src/Params.hs -main-is DisArr -fforce-recomp -threaded 
ghc --make -O src/DisCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is DisCell -fforce-recomp -threaded 
# ghc --make -O src/DisPro.hs src/Params.hs -main-is DisPro -fforce-recomp -threaded 
