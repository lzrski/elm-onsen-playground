module Main exposing (main)

import Html exposing (node, text)
import Html.Attributes exposing (attribute)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


type alias Model =
    ()


type Msg
    = NoOp


init : ( Model, Cmd msg )
init =
    () ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    () ! []


subscriptions : Model -> Sub Msg
subscriptions =
    always Sub.none


view : Model -> Html.Html Msg
view model =
    Html.node "ons-button"
        [ attribute "onClick" "window.alert('Hello, World!')" ]
        [ text "Click Me" ]
