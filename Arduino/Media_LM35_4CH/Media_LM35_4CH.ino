/* Script per rilevare la temperatura dei BJT
 * che pilotano le 4 strisce led facendo la media
 * di 512 misure e poi inviandola via seriale
 * By Augusto Zanellato
 * ITI F. Severi
 * ExpoScuola 2016
 */
int n_campioni;

float valore1;
float media1;
int temp1;

float valore2;
float media2;
int temp2;

float valore3;
float media3;
int temp3;

float valore4;
float media4;
int temp4;

void setup()
{
  analogReference(INTERNAL);
}

void loop(){

n_campioni++;

valore1 = analogRead(A1);
valore2 = analogRead(A2);
valore3 = analogRead(A3);
valore4 = analogRead(A4);

media1 = media1 + (valore1 - media1) / n_campioni;
media2 = media2 + (valore2 - media2) / n_campioni;
media3 = media3 + (valore3 - media3) / n_campioni;
media4 = media4 + (valore4 - media4) / n_campioni;

if (n_campioni>=512){
  temp1=(1.1 * media1 * 100.0) / 1024.0;
  temp2=(1.1 * media2 * 100.0) / 1024.0;
  temp3=(1.1 * media3 * 100.0) / 1024.0;
  temp4=(1.1 * media4 * 100.0) / 1024.0;
  Serial.begin(9600);
  Serial.print(temp1,DEC);
  Serial.print(" ");
  Serial.print(temp2,DEC);
  Serial.print(" ");
  Serial.print(temp3,DEC);
  Serial.print(" ");
  Serial.print(temp4,DEC);
  Serial.print("\n");
  Serial.end();
  n_campioni=0;
}
}
