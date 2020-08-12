module Test.Generated.Main1319420011 exposing (main)

import Tests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "Tests" [Tests.tests] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 175317109295887, processes = 8, paths = ["/home/erik/snap/exercism/5/exercism/elm/two-fer/tests/Tests.elm"]}