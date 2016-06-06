organization := "org.indyscala"
name := "doobie-in-repl"

version := "0.0.1-SNAPSHOT"

scalaVersion := "2.11.8"

libraryDependencies ++= Seq(
  "org.tpolecat" %% "doobie-core" % "0.2.3",
  "com.lihaoyi" %% "ammonite-repl" % "0.5.8" cross CrossVersion.full
)
