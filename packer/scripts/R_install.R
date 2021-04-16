local({r <- getOption("repos")
       r["CRAN"] <- "http://cloud.r-project.org"
       options(repos=r)
})
# jupyter may be installed in /usr/local/bin
# The base path may not include this
path_original <- Sys.getenv("PATH")
Sys.setenv(PATH = paste(path_original, "/usr/local/bin", sep = ":"))
install.packages("https://cran.r-project.org/src/contrib/Archive/pbdZMQ/pbdZMQ_0.3-3.tar.gz", repos=NULL, type="source")
install.packages('IRkernel')
IRkernel::installspec(user = FALSE)
