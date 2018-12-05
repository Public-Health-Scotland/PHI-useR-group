copy_loaded_packages <- function(src = .libPaths()[1], dst = file.path(getwd(), "packages")) {
    si <- sessionInfo()
    other_pkg <- vapply(si$otherPkgs, function (x) unname(x[["Package"]]), character(1))
    loaded_pkg <- vapply(si$loadedOnly, function (x) unname(x[["Package"]]), character(1))
    req_pkg <- c(other_pkg, loaded_pkg)
    names(req_pkg) <- NULL
    
    if (!dir.exists(dst)) {
        dir.create(dst)
    }
    
    for(i in req_pkg) {
        if (dir.exists(file.path(src, i))) {
            cat("Copying", i, "from src to dst\n")
            file.copy(from = file.path(src, i),
                      to = dst,
                      overwrite = TRUE,
                      copy.mode = TRUE,
                      recursive = TRUE)
        } else {
            cat(i, "is not in src\n")
        }
    }
}