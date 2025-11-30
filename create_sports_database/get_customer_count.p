define output parameter customerCount as integer no-undo.
for each customer no-lock:
    customerCount = customerCount + 1.
end.
