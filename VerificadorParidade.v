module VerificadorParidade(
    input [4:0] Valores, 
    input Paridade, 
    output reg Validade);
    
    always @(*) begin
        Validade = (
            (Valores[0] * 1) + 
            (Valores[1] * 2) + 
            (Valores[2] * 4) + 
            (Valores[3] * 8) + 
            (Valores[4] * 16)) % 2 == Paridade;
    end
endmodule
