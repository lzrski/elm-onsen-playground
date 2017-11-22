module Main exposing (main)

import Html exposing (node, text)
import Html.Attributes exposing (attribute)


main =
    Html.node "ons-button"
        [ attribute "onClick" "window.alert('Hello, World!')" ]
        [ text "Click Me" ]
