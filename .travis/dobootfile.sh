#!/bin/bash -v

cd ..

git clone --depth=1 https://github.com/racket/racket.git

curl -L -o installer.sh http://www.cs.utah.edu/plt/snapshots/current/installers/min-racket-current-x86_64-linux-precise.sh

sh installer.sh --in-place --dest ~/racket/

cd racket/racket/src/cs/bootstrap/

make RACKET=~/racket/bin/racket SCHEME_SRC=../../../../../ChezScheme MACH=$TARGET_MACHINE

cd ../../../../../

cd ChezScheme
