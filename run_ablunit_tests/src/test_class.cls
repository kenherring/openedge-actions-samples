block-level on error undo, throw.

class src.test_class :

    @Test.
    method public void method_passes () :
        OpenEdge.Core.Assert:Equals(1, 1).
    end method.

    @Ignore.
    @Test.
    method public void method_skipped () :
        OpenEdge.Core.Assert:Equals(1, 2).
    end method.

end class
