#Questo file bash serve per configurare l'ambiente per il corretto funzionamento del progetto di Reiforcement Machine Learning di Vuotto
#Le fasi di configurazione sono 3: Generazione di un ambiente virtuale su cui installare python e V-REP, installazione di Carl e installazione di Stormpy

#Ho realizzato un file per ognuna di queste tre fasi di configurazione in modo che se una parte dovesse andare storta sarebbe più facile fare le opportune modifiche e ritentare la configurazione della specifica dipendenza

#Per evitare conflitti con eventuali altre versioni di python ecc... verrà creato un ambiente virtuale in cui tutte le dipendenze saranno installate

#download virtualenv
pip install virtualenv

#crete the virtual environment
#bioloidVenv is the default name, you can change with the name you want to address to the environment
virtualenv bioloidVenv

#con questo comando cambiamo il $PATH con il /bin di virtualenv
source bioloidVenv/bin/activate
#per rimuovere questa modifica, basta eseguire:
# deactivate

#python install
sudo apt install build-essential checkinstall
sudo apt install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

#python download
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tar.xz
tar xvf Python-3.6.0.tar.xz

#python install
cd Python-3.6.0/
./configure
sudo make altinstall
cd ..

#installazione di setupTools
python ez_setup.py

#scipy install
sudo apt-get install python3-scipy

#pybrain install
easy_install matplotlib
git clone git://github.com/pybrain/pybrain.git pybrain
cd pybrain
python setup.py install
cd ..

#numpy install
sudo apt-get install python3-numpy

#V-REP

#download di V-REP, non è necessaria nessuna installazione una volta scompattato il file
wget http://coppeliarobotics.com/files/V-REP_PRO_EDU_V3_5_0_Linux.tar.gz
tar -xvzf V-REP_PRO_EDU_V3_5_0_Linux.tar.gz

#perchè funzioni bisogna copiare nella cartella del progetto (questa) tre file presenti nella cartella di V-REP
cp -i ./V-REP_PRO_EDU_V3_5_0_Linux/programming/remoteApiBindings/python/python/vrep.py ./

cp -i ./V-REP_PRO_EDU_V3_5_0_Linux/programming/remoteApiBindings/python/python/vrepConst.py ./

cp -i ./V-REP_PRO_EDU_V3_5_0_Linux/programming/remoteApiBindings/lib/lib/Linux/64Bit/remoteApi.so ./

./setupCarl.sh
./setupStormpy.sh
