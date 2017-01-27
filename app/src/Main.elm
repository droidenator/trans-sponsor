module Main exposing (..)

import Html exposing (..)
import Html.CssHelpers exposing (..)
import Html.Attributes exposing (..)
import GlobalCss exposing (..)
import Json.Encode as Encode
import SharedStyles exposing (..)


{ id, class, classList } =
    globalNamespace
main : Html a
main =
    div []
        [ header []
            [ img [ id ReactiveLogo, src "http://heygirl.io/img/gosling-horiz-2.gif" ] []
            , nav []
                navElems
            , span [ id BuyTickets ]
                [ text "BUY TICKETS" ]
            ]
        , div []
            [ img [ src "https://media.giphy.com/media/UBnp9TRCuffi0/giphy.gif" ] [] ]
        ]


navElems =
    [ "SPEAKERS", "SCHEDULE", "WORKSHOPS", "VENUE", "BLOG", "CONTACT" ]
        |> List.map (\name -> span [ class [ NavLink ] ] [ text name ])

styles =
    Css.asPairs >> Html.Attributes.style
