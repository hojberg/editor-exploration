module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Set exposing (Set)



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Slot =
    Int


type alias Suggestion =
    Int


type alias Slots =
    { previousSlots : List Slot
    , focused : Slot
    , nextSlots : List Slot
    }


type alias Model =
    { slots : Maybe Slots
    }


init : Model
init =
    { slots = Nothing
    }



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


typeahead : List Suggestion -> Html msg
typeahead suggestions =
    div [] [ text "typeahead" ]


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text "hi" ]
        ]
