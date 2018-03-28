#dependencies
sudo apt-get install libgmp3-dev
sudo apt-get install libginac-dev -y
sudo apt-get install autoconf -y
sudo apt-get install glpk-utils -y
sudo apt-get install hwloc -y

#Storm

#The source code of the latest stable release can be downloaded from GitHub. You can either clone the git repository
git clone -b stable https://github.com/moves-rwth/storm.git



#ATTENZIONE!!!
#come si fa questa cosa?

#salvo la directory attuale prima di fare le operazioni necessaria alla configurazione di storm
export BIOLOID_DIR=pwd
#In the following, we will use STORM_DIR to refer to the root directory of Storm. If you want, you can set an environment variable to ease the following steps via
#export STORM_DIR=<path to Storm root>


cd storm


#Switch to the directory STORM_DIR and create a build folder that will hold all files related to the build (in other words, building is done out-of source, in-source builds are strongly discouraged and are likely to break). Finally change to the build directory.
#cd STORM_DIR
mkdir build
cd build

#Then, use cmake to configure the build of Storm on your system by invoking
cmake ..

#This will require some time
#To compile all of Storm’s binaries including all tests, enter
make

cd ..
cd ..

#Stormpy

sudo apt install cmake

#Clone stormpy into any suitable location:
git clone https://github.com/moves-rwth/stormpy.git

cd stormpy
#pip install -ve .
python3 setup.py develop
cd ..

