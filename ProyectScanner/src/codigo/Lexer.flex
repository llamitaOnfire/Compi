package codigo;
import static codigo.Tokens.*;

%%
%class Lexer
%type Tokens

L=[a-zA-Z_]+
D=[0-9]+
espacio=[ \t\r]+

%{
    public String lexeme;
    int lineaActual = 1; 
%}


%%


\(\*[^*]*\*\) {
    /* Ignorar comentarios de bloque ( (* ... *) ) */
    String comentario = yytext();
    int lineasEnComentario = comentario.split("\n", -1).length - 1;
    lineaActual += lineasEnComentario;
}


"//".* { /* Ignorar comentarios de línea (// ...) */ }


\n { 
    /* Cuenta los saltos de línea fuera de los comentarios */
    lineaActual++;
}



int |
and |
array |
begin |
boolean |
byte |
case |
char |
const |
div |
do |
downto |
end |
false |
file |
for |
forward |
function |
goto |
if |
in |
inline |
label |
longint |
mod |
nil |
not |
of |
or |
packed |
procedure |
program |
read |
real |
record |
repeat |
set |
shortint |
string |
then |
to |
true |
type |
until |
var |
with |
write |
else |
xor |
while { lexeme = yytext(); return PalabrasReservadas; }


{espacio} {/* Ignore */}
"//".* {/* Ignore */}

"_" |"," |";" | "&" |"++" | "--" | ">=" | ">" | "<=" | "<" | "<>" | "=" | "+" | "-" | "*" | "/" | "(" | ")" | "[" | "]" | ":=" | "."  | ":" | "+=" | "-=" | "*=" | "/=" | ">>" | "<<" | "<<=" | ">>=" | "NOT"| "OR"| "AND"| "DIV"| "MOD" { lexeme = yytext(); return Operadores; }

{D}+"."{D}*([eE][-+]?{D}+)? | {D}+ { lexeme = yytext(); return Literales; }

"#"{D}+ { lexeme = yytext(); return Literales; }
\"[^\"\n]*\" { lexeme = yytext(); return Literales; }

[A-Za-z]([A-Za-z]|[0-9])* { lexeme = yytext().toLowerCase(); return Identificadores; }






. {lexeme = yytext(); return ERROR; }