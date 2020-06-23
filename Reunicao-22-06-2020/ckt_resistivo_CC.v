
`timescale 1ns / 1ps

module ckt_resistivo_CC(
    input clk ,
    output reg [31:0] recebe_lista,
    output reg [31:0] tensao_fonte_saida,
    output reg [31:0] corrente_saida

    );
    

reg c = 1'b1;   //teste para modular onda dente-serra
reg fixo = 1'b1;

parameter SIZE = 256;    
reg [31:0] rom_memory [SIZE-1:0];

integer i;
integer counter;
//reg c =1b'1;

real tensao_fonte;
real corrente;
real R=2;
initial begin
    $readmemh("fonte_tensao_CC.mem", rom_memory); //File with the signal
    i = 0;
end    
//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk)
begin
    recebe_lista = rom_memory[i];
    tensao_fonte = recebe_lista;
    corrente = (tensao_fonte/R);
    
    i = i+ 1;
    counter = counter + 1;
 //---------------------------------------   
//    if(rom_memory[i] == 500)    //mdulação dente-serra
//        if (c==fixo)
//            counter=0;
//            assign c=~c;
assign tensao_fonte_saida = tensao_fonte;
assign corrente_saida = corrente;
end

endmodule