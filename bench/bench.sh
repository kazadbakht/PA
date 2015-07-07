#!/usr/bin/env bash

# Translate each PA program
###########################

a2h src/SeqArr.abs src/TestArr.abs src/Params.abs
a2h src/ParArr.abs src/TestArr.abs src/Params.abs
a2h src/DisArr.abs src/TestArr.abs src/Params.abs

a2h src/SeqCell.abs src/TestCell.abs src/CellImpl.abs src/Params.abs 
a2h src/ParCell.abs src/TestCell.abs src/CellImpl.abs src/Params.abs
a2h src/DisCell.abs src/TestCell.abs src/CellImpl.abs src/Params.abs

a2h src/SeqPro.abs src/TestPro.abs src/Params.abs
a2h src/ParPro.abs src/TestPro.abs src/Params.abs
a2h src/DisPro.abs src/TestPro.abs src/Params.abs

a2h src/ParProRR.abs

# # Compile the programs
# ######################

ghc --make -O src/SeqArr.hs src/TestArr.hs src/Params.hs -main-is SeqArr -fforce-recomp 
ghc --make -O src/SeqCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is SeqCell -fforce-recomp 
ghc --make -O src/SeqPro.hs src/TestPro.hs src/Params.hs -main-is SeqPro -fforce-recomp 


ghc --make -O src/ParArr.hs src/TestArr.hs src/Params.hs -main-is ParArr -fforce-recomp -threaded 
ghc --make -O src/ParCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is ParCell -fforce-recomp -threaded 
ghc --make -O src/ParPro.hs src/TestPro.hs src/Params.hs -main-is ParPro -fforce-recomp -threaded 

ghc --make -O src/DisArr.hs src/TestArr.hs src/Params.hs -main-is DisArr -fforce-recomp -threaded 
ghc --make -O src/DisCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is DisCell -fforce-recomp -threaded 
ghc --make -O src/DisPro.hs src/TestPro.hs src/Params.hs -main-is DisPro -fforce-recomp -threaded 

ghc --make -O src/ParProRR.hs -main-is ParProRR -fforce-recomp -threaded 
