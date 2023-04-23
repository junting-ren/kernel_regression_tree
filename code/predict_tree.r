structure(list(name = "pred1.tree", objs = list(function (tree, 
    x) 
{
    frame <- tree$frame
    dimx <- dim(x)
    ypred <- .C(VR_pred1, as.double(x), as.integer(unclass(frame$var) - 
        1), as.character(frame$splits[, "cutleft"]), as.character(frame$splits[, 
        "cutright"]), as.integer(sapply(attr(tree, "xlevels"), 
        length)), as.integer(row.names(frame)), as.integer(frame$n), 
        as.integer(dim(frame)[1L]), as.integer(dimx[1L]), as.integer(dimx[2L]), 
        where = integer(dimx[1L]), NAOK = TRUE)
    ypred <- ypred$where
    names(ypred) <- dimnames(x)[[1L]]
    ypred
}), where = "namespace:tree", visible = FALSE, dups = FALSE), .Names = c("name", 
"objs", "where", "visible", "dups"), class = "getAnywhere")
