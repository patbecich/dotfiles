
// http://stackoverflow.com/questions/24551668/automatically-clearing-the-screen-on-recompile-in-sbt

triggeredMessage := Watched.clearWhenTriggered


def clearConsoleCommand = Command.command("clear") { state =>
  val cr = new jline.console.ConsoleReader()
  cr.clearScreen
  state
}

// I wonder if this will supercede a more important 'root' variable elsewhere...
//val root = project.in(file(".")).settings(commands += clearConsoleCommand)
