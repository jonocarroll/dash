# dash

RStudio Addin to Run a Selection as a Background Job

![](./tools/dash.png)

RStudio daily release now includes a Jobs pane. See this excellent demo from @hrbrmstr for details.

<a href="http://www.youtube.com/watch?feature=player_embedded&v=EBlk1kRbKeU
" target="_blank"><img src="http://img.youtube.com/vi/EBlk1kRbKeU/0.jpg" 
alt="RStudio Jobs" width="240" height="180" border="10" /></a>

This allows one to source a script as a background job. But what about incidental code? This Addin allows one to highlight a region of code to be run as a background job.

## Installation

You can install the development version of `dash` from GitHub or GitLab

``` r
devtools::install_github("jonocarroll/dash")
devtools::install_gitlab("jonocarroll/dash")
```

## NOTES

* `dash` hastily pre-empts any official implementation, and as such will be rendered useless once that is complete.
* `dash` has been tested with RStudio 1.2.719. The API is under constant development and as such this could break at any daily release. I will try to keep up as best as I can. The internals became available as PR #2923 was merged, which means the earliest daily this should be compatible with is probably 

| Filename | Published | Commit | Build ID |
|:-----|:-----|:-----|:-----|
| rstudio-1.2.712-amd64.deb	| 2018-06-08 20:22:28 |	87458be9 | da7b43c700e714272546b76297fc64a8-12 |

* There doesn't appear to be an exported way to STOP a job, so keep an eye on your infinite loops.
* `dash` writes the selection as a temporary file and sources that, so the selected code must be valid.
* Obviously requires a fairly recent version of RStudio.
* `install_gitlab` requires the development version of `r-lib/devtools`.
