module VerificadorParidade(input [4:0] Valores, input Paridade, output reg Validade);
    always @(*) begin
        Validade = (^Valores ^ Paridade) == 1'b1;
    end
endmodule