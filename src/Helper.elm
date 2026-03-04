module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map toStatus grades


toStatus : Float -> GradeStatus
toStatus grade =
    if grade < 0 then
        Pending

    else if grade >= 7 then
        Approved

    else
        Failed


type AirplaneStatus
    = Canceled
    | Delayed
    | OnTime
    | Boarding


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Canceled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Abordar"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
