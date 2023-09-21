package codigo;
import static codigo.Tokens.*;

%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%

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
while { lexeme = yytext(); return Reservadas; }

{espacio} {/* Ignore */}
"//".* {/* Ignore */}

"++" | "--" | ">=" | ">" | "<=" | "<" | "<>" | "=" | "+" | "-" | "*" | "/" | "(" | ")" | "[" | "]" | ":=" | "." | ":" | "+=" | "-=" | "*=" | "/=" | ">>" | "<<" | "<<=" | ">>=" { lexeme = yytext(); return Operador; }

{L}({L}|{D})* { lexeme = yytext(); return Identificador; }
("(-"{D}+")")|{D}+ { lexeme = yytext(); return Numero; }
. { return ERROR; }
