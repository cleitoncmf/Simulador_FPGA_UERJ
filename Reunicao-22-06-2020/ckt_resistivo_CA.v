`timescale 1ns / 1ps

module ckt_resistivo_CA(
    input clk ,
    output reg [31:0] recebe_lista,
    output wire [31:0] tensao_fonte_saida, //criado para comunica��o f�sica com os pinos
    output wire [31:0] corrente_saida //criado para comunica��o f�sica com os pinos
    );
    

//reg c = 1'b1;   //teste para modular onda dente-serra
//reg fixo = 1'b1;

parameter SIZE = 262144;    //n�mero de amostras 
reg [31:0] rom_memory [SIZE-1:0];

integer i; 
integer counter;
//reg c =1b'1;




integer tensao_fonte;
integer corrente;

integer R=2;
initial begin
    $readmemh("fonte_tensao_CA.mem", rom_memory); //File with the signal
    i = 0;
end    
//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk)
begin
    recebe_lista = rom_memory[i];
    tensao_fonte = recebe_lista;
    corrente = (tensao_fonte*R);
    //teste
    i = i+ 1;
    counter = counter + 1;
 //---------------------------------------   
//    if(rom_memory[i] == 500)    //mdula��o dente-serra
//        if (c==fixo)
//            counter=0;
//            assign c=~c;


end

assign tensao_fonte_saida = tensao_fonte; //para plotar no waveform
assign corrente_saida = corrente; //para plotar no waveform

endmodule

