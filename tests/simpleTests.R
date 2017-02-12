
if (Sys.getenv("Run_gtrendsR_Tests")=="yes") {
    ## These simple tests rely on the existence of a .Rprofile file with account and
    ## password Otherwise we would have to hardcode then, and that is not something one
    ## should store in a code repository.

    library(gtrendsR)

    res <- gtrends(c("NHL", "NBA", "MLB", "MLS"))
    print(summary(res))

    res <- gtrends("NHL", geo = c("CA", "US"))
    print(summary(res))
}
