lexer grammar Ntriples11Lexer;

/* [144s] */
LANGTAG
    : '@' [a-zA-Z]+ ('-' [a-zA-Z0-9]+)*
    ;

/* [7] */
EOL
	: ('\u000D' | '\u000A')+
	;

/* [8] */
IRIREF
	: '<' (~('\u0000'..'\u0020' | '<' | '>' | '"' | '{' | '}' | '|' | '^' | '`' | '\\') | UCHAR)*? '>'
    ;

/* [9] */
STRING_LITERAL_QUOTE
    : '"' (~('\u0022' | '\u005C' | '\u000A' | '\u000D') | ECHAR | UCHAR)*? '"'
    ;

/* [141s] */
BLANK_NODE_LABEL
    : '_:' (PN_CHARS_U | ('0'..'9')) ((PN_CHARS | DOT)*? PN_CHARS)?
    ;

/* [10] */
UCHAR
    : '\u' HEX HEX HEX HEX
    | '\U' HEX HEX HEX HEX HEX HEX HEX HEX
    ;

/* [153s] */
ECHAR
    : '\\' ('t' | 'b' | 'n' | 'r' | 'f' | '"' | '\'' '\\' )
    ;

/* [157s] */
PN_CHARS_BASE
    : ('A'..'Z')
    | ('a'..'z')
    | ('\u00C0'..'\u00D6')
    | ('\u00D8'..'\u00F6')
    | ('\u00F8'..'\u02FF')
    | ('\u0370'..'\u037D')
    | ('\u037F'..'\u1FFF')
    | ('\u200C'..'\u200D')
    | ('\u2070'..'\u218F')
    | ('\u2C00'..'\u2FEF')
    | ('\u3001'..'\uD7FF')
    | ('\uF900'..'\uFDCF')
    | ('\uFDF0'..'\uFFFD')
    | ('\u10000'..'\uEFFFF')
    ;

/* [158s] */
PN_CHARS_U
    : PN_CHARS_BASE
    | '_'
    | ':'
    ;

/* [160s] */
PN_CHARS
    : PN_CHARS_U
    | '-'
    | ('0'..'9')
    | '\u00B7'
    | ('\u0300'..'\u036F')
    | ('\u203F'..'\u2040')
    ;

/* [162s] */
HEX
    : ('0'..'9')
    | ('A'..'F')
    | ('a'..'f')
    ;

DOT
    : '.'
    ;

REFERENCE
    : '^^'
    ;
