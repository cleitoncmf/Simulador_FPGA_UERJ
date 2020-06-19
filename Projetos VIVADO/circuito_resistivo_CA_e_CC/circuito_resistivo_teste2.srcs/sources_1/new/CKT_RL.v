`timescale 1ns / 1ps

module CKT_RL(
    input clk ,
    output reg [31:0] sinus
    );
    
//reg c = 1'b1; 
reg c = 1'b1;   
reg fixo = 1'b1;
parameter SIZE = 262144;    
reg [31:0] rom_memory [SIZE-1:0];
//trocar variáveis para integer caso queira sintetizar para placa
integer element;
integer counter;
integer tempo;
//reg c =1b'1;

integer tensao;
integer corrente;
real R=10; //Ohms
real C=0.000005; //uF
real condutancia;
initial begin
    $readmemh("sine.mem", rom_memory); //File with the signal
    element = 0;
end    
//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk)
begin
    condutancia = (1/R);
    sinus = rom_memory[element];
    tensao = sinus;
    
 
    element = element + 1;
    counter = counter + 1;
    tempo = tempo + 1;
    
    
    corrente = (tensao/R)*(2.718)**(-(tempo)/(R*C));
    
    if(rom_memory[element] == 500)    
        if (c==fixo)
            counter=0;
            assign c=~c;

end
endmodule