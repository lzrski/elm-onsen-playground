module Onsen exposing (..)

import Html


node name =
    Html.node ("ons-" ++ name)


button =
    node "button"


navigator =
    node "navigator"


page =
    node "page"


toolbar =
    node "toolbar"
