port module Stylesheets exposing (..)

import Css.File exposing (CssFileStructure, CssCompilerProgram)
import Styles.GlobalCss as Global


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "global.css", Css.File.compile [ Global.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure
