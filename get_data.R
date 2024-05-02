library(TAF)

message("Downloading alb-2021.zip")
download(
  "https://oceanfish.spc.int/en/publications/doc_download/2107-alb-2021zip",
  destfile="alb-2021.zip", quiet=FALSE)
message("done")

message("Unzipping alb-2021.zip")
taf.unzip("alb-2021.zip")
message("done")

message("Moving runs to grid folder")
mkdir("grid")
cp("ALB21_M1/*", "grid", move=TRUE)
cp("ALB21_M2/*", "grid", move=TRUE)
message("done")

rmdir(c("ALB21_M1", "ALB21_M2"))
unlink("executables.files.2021", recursive=TRUE)
