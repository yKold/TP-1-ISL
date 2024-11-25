module Tester;

    reg [4:0] Valores;          
    reg Paridade;                
    wire [6:0] Segmentos;       
    wire Validade;           

    Display dpl (
        .Valores(Valores), 
        .Paridade(Paridade), 
        .Segmentos(Segmentos), 
        .Validade(Validade));

    initial begin
        $dumpfile("Simulacao.vcd"); 
        $dumpvars(0, Tester);     

        Valores = 5'b00000; Paridade = 1'b0; #10;
        Valores = 5'b00001; Paridade = 1'b1; #10;
        Valores = 5'b00010; Paridade = 1'b0; #10;
        Valores = 5'b00100; Paridade = 1'b1; #10;
    end

endmodule