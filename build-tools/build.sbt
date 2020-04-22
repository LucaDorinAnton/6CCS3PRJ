ThisBuild / scalaVersion := "2.12.10"

lazy val assembler = (project in file("."))
  .settings(
    name := "buildtools",
    mainClass in (Compile, run) := Some("buildtools.assembler.Assembler"),
    libraryDependencies += "org.scala-lang" % "scala-reflect" % scalaVersion.value,
    libraryDependencies += "net.jcazevedo" %% "moultingyaml" % "0.4.2"
  )
