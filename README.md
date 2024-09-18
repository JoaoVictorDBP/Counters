# Counters

Integrantes:

João Victor De Bortoli Prado - 13672071  
Samuel Sandoval Bonachela - 13686282  
Lucas Rodrigues Baptista - 15577631  

Projeto 2: desenvolvimento de estruturas básicas de Contadores usando as ferramentas Quartus e Modelsim.
Todos os circuitos foram desenvolvidos para serem executados numa placa FPGA do tipo DE2-115.

Parte 1:
Foi feito em VHDL um contador de 8 bits utilizando 8 flip-flops do tipo T. O arquivo principal a ser aberto pelo software Quartus é o "T_flip_flop.vhd" e ele faz uso dos arquivos "aula4.bdf" e "display.bsf" (criados para a disciplina Prática em Lógica digital) que contém o circuito de um display de 7 segmentos. Quando executado na placa, o primeiro botão representa o Clock e os primeiros interruptores representam respectivamente as entradas Enable e Clear, e os dois primeiros displays de 7 segmentos mostram a contagem em hexadecimal.

Parte 2:
Foi feito em VHDL um contador de 16 bits utilizando um código simplicado que incrementa o contador sem que se precise definir manualmente a arquitetura dos flip-flops. Ao ser compilada, essa versão do contador utiliza 45 elementos lógicos. O arquivo principal é o "16BitCounter.vhd".

Parte 3:
Foi feito um circuito com dois contadores utilizando um código similar ao da parte 2. Um deles conta até 50 milhões tendo como entrada o Clock de 50 MHz da placa FPGA e quando chega nesse número recomeça a contagem e ativa a entrada Enable de um outro contador que conta de 0 a 9, assim efetivamente fazendo com que este atualize seu valor a cada 1 segundo. O arquivo principal é o "o50MHzCounter.vhd" e ele também faz uso dos arquivos "aula4.bdf" e "display.bsf" para utilizar os displays de 7 segmentos para mostrar a contagem de 0 a 9 na placa.

Parte 4:
Foi feito um circuito para mostrar a palavra "dE2" em 4 displays de 7 segmentos da placa FPGA, com as letras e um espaço vazia passando dos displays da direita para a esquerda em sua respectiva ordem de 1 em 1 segundo. Para isso foi utilizado um contador similar ao da parte 3 para adaptar o clock de 50 MHz para contar de 0 a 3 de (incrementando 1 a cada segundo), criando uma máquina de estados finita que muda o estado dos displays conforme a contagem. O arquivo principal é o "dE2.vhd" e ele faz uso de versões atualizadas dos arquivos "aula4.bdf" e "display.bsf" para utilizar os displays de 7 segmentos para mostrar a palavra na placa.


Parte 5:
Foi feito um circuito para mostrar a palavra "dE2" nos 8 displays de 7 segmentos da placa FPGA, com as letras e um espaço vazia passando dos displays da direita para a esquerda em sua respectiva ordem de 1 em 1 segundo. Para isso foi utilizado um código similar ao da parte 4. O arquivo principal é o "fulldE2.vhd" e ele também faz uso das versões atualizadas dos arquivos "aula4.bdf" e "display.bsf" (modificadas na parte 4) para utilizar os displays de 7 segmentos para mostrar a palavra na placa.
