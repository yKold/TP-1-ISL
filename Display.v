module Display( 
    input [4:0] Valores, 
    input Paridade, 
    output [6:0] Segmentos, 
    output Validade);

wire ValidadeInterna;

Mapeamento map (
    .Linha(Valores), 
    .Validade(ValidadeInterna), 
    .Segmentos(Segmentos));
VerificadorParidade vfc (
    .Valores(Valores), 
    .Paridade(Paridade), 
    .Validade(ValidadeInterna));

assign Validade = ValidadeInterna;

endmodule