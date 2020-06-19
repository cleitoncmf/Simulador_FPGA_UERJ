`timescale 1ns / 1ps

module sinus_gen(
    input clk ,
    output reg [31:0] sinus
    );
    
//reg c = 1'b1; 

reg c = 1'b1;   
reg fixo = 1'b1;
parameter SIZE = 262144;    
reg [31:0] rom_memory [SIZE-1:0];

//trocar variáveis para integer caso queira sintetizar para placa

integer i;
integer counter;

//reg c =1b'1;

integer tensao;
integer corrente;
integer R=2;
initial begin
    $readmemh("sine.mem", rom_memory); //File with the signal
    i = 0;
end    

//At every positive edge of the clock, output a sine wave sample.
always@(posedge clk)
begin
    sinus = rom_memory[i];
    tensao = sinus;
    corrente = tensao*0.5;
    i = i+ 1;
    counter = counter + 1;
    if(rom_memory[i] == 500)    
        if (c==fixo)
            counter=0;
            assign c=~c;

end
endmodule