#dependencies
#Prima di installare stormpy bisogna installare tutte le dipendenze
#pip è tra le dipendenze ma è stato precedentemente installato

#cmake install
sudo apt install cmake
sudo apt-get install cmake-curses-gui

#libcln6 install
sudo apt-get install libcln6
sudo apt-get install libcln-dev
sudo apt-get install libgmp-dev

sudo apt-get install libeigen3-dev
sudo apt-get install g++

#libboost-dev install
sudo apt-get install libboost-all-dev

#doxygen install
sudo apt-get install doxygen

#carl

#iniziamo clonando il repository git e creando una cartella per la build
git clone https://github.com/smtrat/carl.git
cd carl/
mkdir build
cd build/
#configuriamo un ambiente con cmake e creiamo una libreria
cmake ../
#ATTENZIONE! Questa operazione potrebbe richiedere parecchio tempo
#This builds the shared library build/libcarl.so
make lib_carl
#Build and run tests:
make
make test
#The individual 																																																										tests are stored in build/bin/
#Build documentation:
make doc
#The documentation is stored in build/doc/

#Pycarl

#Clone pycarl into any suitable location:
git clone https://github.com/moves-rwth/pycarl.git
cd pycarl
#Here, build pycarl in develop mode using your favourite python distribution way of installing: e.g.:
pip install -ve .
cd ..

#After building, you can run the test files by:
#$ py.test tests/
