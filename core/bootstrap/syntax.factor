! Copyright (C) 2007, 2008 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: words words.symbol sequences vocabs kernel
compiler.units ;
in: bootstrap.syntax

[
    "syntax" create-vocab drop

    {
        "\""
        "("
        ":"
        ";"
        "<PRIVATE"
        "B{"
        "BV{"
        "C:"
        "CHAR:"
        "char:"
        "DEFER:"
        "defer:"
        "ERROR:"
        "FORGET:"
        "forget:"
        "GENERIC#"
        "GENERIC:"
        "HOOK:"
        "H{"
        "HS{"
        "IN:"
        "in:"
        "INSTANCE:" ;
        "M:"
        "MAIN:"
        "main:"
        "MATH:"
        "MIXIN:"
        "mixin:"
        "NAN:"
        "nan:"
        "P\""
        "POSTPONE:"
        "postpone:"
        "PREDICATE:"
        "PRIMITIVE:"
        "PRIVATE>"
        "SBUF\""
        "SINGLETON:"
        "singleton:"
        "SINGLETONS:"
        "BUILTIN:"
        "SYMBOL:"
        "symbol:"
        "SYMBOLS:"
        "CONSTANT:"
        "TUPLE:"
        "SLOT:"
        "slot:"
        "T{"
        "UNION:"
        "INTERSECTION:"
        "USE:"
        "use:"
        "UNUSE:"
        "unuse:"
        "USING:"
        "QUALIFIED:"
        "QUALIFIED-WITH:"
        "FROM:"
        "EXCLUDE:"
        "RENAME:"
        "ALIAS:"
        "SYNTAX:"
        "V{"
        "W{"
        "["
        "\\"
        "M\\"
        "]"
        "delimiter"
        "deprecated"
        "f"
        "flushable"
        "foldable"
        "inline"
        "recursive"
        "final"
        "@delimiter"
        "@deprecated"
        "@flushable"
        "@foldable"
        "@inline"
        "@recursive"
        "@final"
        "t"
        "{"
        "}"
        "CS{"
        "<<"
        ">>"
        "call-next-method"
        "not{"
        "maybe{"
        "union{"
        "intersection{"
        "initial:"
        "read-only"
        "call("
        "execute("
        "<<<<<<"
        "======"
        ">>>>>>"
        "<<<<<<<"
        "======="
        ">>>>>>>"

        "::" "M::" "MEMO:" "MEMO::" "MACRO:" "MACRO::" "IDENTITY-MEMO:" "IDENTITY-MEMO::" "TYPED:" "TYPED::"
        ":>" "[|" "[let" "MEMO["
        "'["
        "_"
        "@"
        "IH{"
        "PROTOCOL:"
        "CONSULT:"
        "BROADCAST:"
        "SLOT-PROTOCOL:"
        "HINTS:"
    } [ "syntax" create-word drop ] each

    "t" "syntax" lookup-word define-symbol
] with-compilation-unit
