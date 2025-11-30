block-level on error undo, throw.

@Test.
procedure procedureName :
    define variable customerCount as integer no-undo.
    message "num-dbs=" + string(num-dbs).
    run get_customer_count.p(output customerCount).

    OpenEdge.Core.Assert:Equals(customerCount, 100).
end procedure.
