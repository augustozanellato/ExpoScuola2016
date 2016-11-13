In questa cartella sono presenti vari file Fritzing (http://www.fritzing.org)
Il primo, contenente lo schema elettrico e lo sviluppo su PCB del circuito che abbiamo
usato per alimentare il Raspberry Pi sul treno tramite un pacco batterie da 9V
Abbiamo scelto di usare due LM7805 come regolatori di tensione perché sono estremamente semplici da reperire,
al contrario di altri tipi di regolatori (buck converter, ubec e simili) che però avrebbero avuto una migliore
efficienza, quindi minor spreco di energia. Durante ExpoScuola abbiamo deciso di eliminare questo circuito e
sostituirlo con un powerbank (caricabatterie portatile per telefoni alimentato a batterie ricaricabili) dalla capacità
di  ben 26800 mAh (Anker Astro E7 2nd Gen https://www.amazon.it/Anker-Batteria-Esterna-Massiva-26800mAh/dp/B00M1J93TC)
dato che il Raspberry Pi assorbe troppa corrente e le batterie a 9V ci davano un'autonomia troppo bassa.
E' presente anche lo schema del driver per LED che usiamo per pilotare 4 strisce led blu a bordo pista tramite PWM,
dopo qualche ora di funzionamento i BJT che abbiamo usato (dei BC547) raggiugono temperature abbastanza elevate,
quindi ci abbiamo messo dei sensori di temperatura analogici di tipo LM35, collegati ad un Arduino Uno R3, che mostrano
le temperature dei 4 diversi BJT sul pannello di controllo HomeKit
