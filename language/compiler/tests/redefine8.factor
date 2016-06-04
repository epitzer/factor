USING: eval tools.test compiler.units vocabs words
kernel ;
in: compiler.tests.redefine8

! Mixin redefinition did not recompile all necessary words.

[ ] [ [ "compiler.tests.redefine8" forget-vocab ] with-compilation-unit ] unit-test

[ ] [
    "USING: kernel math math.order sorting ;
    in: compiler.tests.redefine8
    mixin: my-mixin
    INSTANCE: fixnum my-mixin ;
    GENERIC: my-generic ( a -- b ) ;
    ! We add the bogus quotation here to hinder inlining
    ! since otherwise we cannot trigger this bug.
    M: my-mixin my-generic 1 + [ [ <=> ] sort ] drop ;"
    eval( -- )
] unit-test

[ ] [
    "use: math
    in: compiler.tests.redefine8
    INSTANCE: float my-mixin" ;
    eval( -- )
] unit-test

[ 2.0 ] [
    1.0 "my-generic" "compiler.tests.redefine8" lookup-word execute
] unit-test
