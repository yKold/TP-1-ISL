module Tester;

    reg [4:0] Valores;          
    reg Paridade;                
    wire [6:0] Segmentos;       
    wire Validade;           

    Display dpl (.Valores(Valores), .Paridade(Paridade), .Segmentos(Segmentos), .Validade(Validade));

    initial begin
        $dumpfile("Simulacao.vcd"); 
        $dumpvars(0, Tester);     
    end

    initial begin
        // Primeiro Teste
        Valores = 5'b00001; Paridade = 1'b0; #10; 
        $display("Valores: %b, Paridade: %b, Validade: %b, Segmentos: %b", Valores, Paridade, Validade, Segmentos);

        // Segundo Teste 
        Valores = 5'b00001; Paridade = 1'b1; #10; 
        $display("Valores: %b, Paridade: %b, Validade: %b, Segmentos: %b", Valores, Paridade, Validade, Segmentos);

        // Terceiro Teste
        Valores = 5'b00010; Paridade = 1'b0; #10; 
        $display("Valores: %b, Paridade: %b, Validade: %b, Segmentos: %b", Valores, Paridade, Validade, Segmentos);

        // Quarto Teste 
        Valores = 5'b10101; Paridade = 1'b0; #10; 
        $display("Valores: %b, Paridade: %b, Validade: %b, Segmentos: %b", Valores, Paridade, Validade, Segmentos);

        $finish;
    end
endmodule