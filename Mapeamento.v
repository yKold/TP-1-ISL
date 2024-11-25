module Mapeamento(input [4:0] Linha, input Validade, output reg [6:0] Segmentos);
    always @(*) begin
        if (!Validade) begin
            Segmentos = 7'b1101111;
        end else begin
            case (Linha)
                5'b00000: Segmentos = 7'b1011011;
                5'b00001: Segmentos = 7'b0011111;
                5'b00010: Segmentos = 7'b0110011;
                5'b00011: Segmentos = 7'b0111011;
                5'b00100: Segmentos = 7'b1110000;
                5'b00101: Segmentos = 7'b1110111;
                5'b00110: Segmentos = 7'b0010101;
                5'b00111: Segmentos = 7'b0101010;
                5'b01000: Segmentos = 7'b0110111;
                5'b01001: Segmentos = 7'b1111011;
                5'b01010: Segmentos = 7'b0011100;
                5'b01011: Segmentos = 7'b0111100;
                5'b01100: Segmentos = 7'b0001111;
                5'b01101: Segmentos = 7'b0110111;
                5'b01110: Segmentos = 7'b0110111;
                5'b01111: Segmentos = 7'b1100111;
                5'b10000: Segmentos = 7'b1000111;
                5'b10001: Segmentos = 7'b0111101;
                5'b10010: Segmentos = 7'b1001110;
                5'b10011: Segmentos = 7'b1110011;
                
                default: Segmentos = 7'b0000000; 
            endcase
        end
    end
endmodule