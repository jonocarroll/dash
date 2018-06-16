runSelectionAsJob <- function() {

  ## Get the document context.
  context <- rstudioapi::getActiveDocumentContext()$selection[[1]]$text

  ## if not empty selection
  if (!is.null(context) && context != "") {

    ## save selection to a temporary file
    tf <- tempfile("dashJob", fileext = ".R")
    writeLines(context, con = tf, sep = "\n")

    ## run the temp script as a job, returning the
    ## results to the global environment
    .rs.api.runScriptJob(
      path = path.expand(tf),
      importEnv = TRUE,
      workingDir = getwd(),
      exportEnv = "R_GlobalEnv"
    )

  }

  ## delete temporary file
  on.exit({
    ## allow time for scripting to start
    Sys.sleep(5)
    unlink(tf)
  })

}
