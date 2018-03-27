CONFIGURAZIONE PROGETTO

Per configurare l'ambiente del progetto è sufficiente eseguire setupEnv.sh
la fase di configurazione è stata divisa in 3 parti:

setupEnv.sh
Genera l'ambiente virtuale in cui installare python e V-REP oltre ad altre dipendenze come scipy e pybrain

setupCarl.sh
Installa carl e tutte le sue dipendenze

setupStormpy.sh
Installa prima storm e tutte le sue dipendenze e poi stormpy

Eseguendo setupEnv.sh verranno eseguite tutte e 3 le fasi di setup.
Se la configurazione dovesse bloccarsi durante setupCarl.sh è possibile modificare il documento setupCarl.sh ed eseguendolo riprendere l'installazione da quel punto. Idem per setupStormpy.sh
