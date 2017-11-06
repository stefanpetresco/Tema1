%Se va genera un semnal
%cu rezolutie temporara de 2ms, 20ms 200ms pentru un semnal continuu de tipul:  


%Semnal dreptunghiular cu rezolutie temporala de 2 ms

%T=2;%perioada T a semnalului; T=2s
t=0:0.002:4;
%logica cu t:
%1-de unde sa inceapa 
%2-rezoltia temporala 
%3-pana unde vrei sa afiseze
f=0.5; %f=1/T
w=2*pi*f; %frecventa unghiulara
duty=25; %factorul de umplere, care reprezinta 1/4 din semnal 
x=(0.75*square(w*t,duty))-0.25;   
%deoarece square(t,duty)genereaza un semnal simetric,
%ecuatia trebuie modificata ca sa corespunda cerintei
subplot(3,1,1) %primul grafic va ocupa prima "minifereastra"
plot(t,x,'b'),title('Semnal Dreptunghiular'),grid,xlabel('t [s]'),ylabel('A [V]')


%Semnal dreptunghiular cu rezolutie temporala de 20 ms

%T=2;%Perioada T a semnalului; T=2s
t=0:0.02:4;
f=0.5;%f=1/T
w=2*pi*f;
duty=25;
x=(0.75*square(w*t,duty))-0.25;
subplot(3,1,2)
plot(t,x,'r'),grid,xlabel('t [s]'),ylabel('A [V]')


%Semnal dreptunghiular cu rezolutie temporala de 200 ms

T=2;
t=0:0.2:4;
f=0.5;
w=2*pi*f;
duty=25;
x=(0.75*square(w*t,duty))-0.25;
subplot(3,1,3)
plot(t,x,'g'),grid,xlabel('t [s]'),ylabel('A [V]')
