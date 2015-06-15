#!/usr/bin/bash

PREFIX=".."

# Translate the params, the cell, and the tests
###############################################

${PREFIX}/.cabal-sandbox/bin/a2h src/Params.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/CellImpl.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/TestArr.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/TestPro.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/TestCell.abs

# Translate each PA program
###########################

${PREFIX}/.cabal-sandbox/bin/a2h src/SeqArr.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/ParArr.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/DisArr.abs

${PREFIX}/.cabal-sandbox/bin/a2h src/SeqCell.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/ParCell.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/DisCell.abs

${PREFIX}/.cabal-sandbox/bin/a2h src/SeqPro.abs
${PREFIX}/.cabal-sandbox/bin/a2h src/ParPro.abs
# ${PREFIX}/.cabal-sandbox/bin/a2h src/DisPro.abs

# Compile the programs
######################

ghc --make -O src/SeqArr.hs src/TestArr.hs src/Params.hs -main-is SeqArr -fforce-recomp -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
ghc --make -O src/SeqCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is SeqCell -fforce-recomp -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
ghc --make -O src/SeqPro.hs src/TestPro.hs src/Params.hs -main-is SeqPro -fforce-recomp -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/


ghc --make -O src/ParArr.hs src/TestArr.hs src/Params.hs -main-is ParArr -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
ghc --make -O src/ParCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is ParCell -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
ghc --make -O src/ParPro.hs src/TestPro.hs src/Params.hs -main-is ParPro -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/

ghc --make -O src/DisArr.hs src/TestArr.hs src/Params.hs -main-is DisArr -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
ghc --make -O src/DisCell.hs src/TestCell.hs src/CellImpl.hs src/Params.hs -main-is DisCell -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
# ghc --make -O src/DisPro.hs src/Params.hs -main-is DisPro -fforce-recomp -threaded -package-db ${PREFIX}/.cabal-sandbox/*-packages.conf.d/
