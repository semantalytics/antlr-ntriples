parser grammar Ntriples11Parser;

/* [1] */
ntriplesDoc
 	: triple? (EOL triple)* EOL?
 	;

/* [2] */
triple
	: subject predicate object DOT
	;

/* [3] */
subject
    : IRIREF
    | BLANK_NODE_LABEL
    ;

/* [4] */
predicate
    :IRIREF
    ;

/* [5] */
object
    : IRIREF
    | BLANK_NODE_LABEL
    | literal
    ;

/* [6] */
literal
    : STRING_LITERAL_QUOTE (REFERENCE IRIREF | LANGTAG)?
    ;

