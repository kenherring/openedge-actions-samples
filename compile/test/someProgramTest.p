block-level on error undo, throw.
using OpenEdge.Core.Assert.

@Test.
procedure procedureName :
    define variables opValue as integer no-undo.
    run someProgram.p(output opValue).
    Assert:Equals(123, opValue).
end procedure.
