module Main exposing (main)

import Html exposing (div, node, text)
import Html.Attributes exposing (attribute, class, id)
import Html.Events exposing (on, onClick)
import Onsen


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }


type alias Model =
    Int


type Msg
    = NoOp
    | Increment
    | Decrement


init : ( Model, Cmd msg )
init =
    0 ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        Increment ->
            (model + 1) ! []

        Decrement ->
            (model - 1) ! []


subscriptions : Model -> Sub Msg
subscriptions =
    always Sub.none


view : Model -> Html.Html Msg
view model =
    Onsen.page
        [ id "page1"
        ]
        [ Onsen.toolbar []
            [ div
                [ class "center"
                ]
                [ text "Page 1"
                ]
            ]
        , Onsen.button
            [ onClick Increment ]
            [ text <| "Click Me " ++ toString model ]
        ]
