module Bob exposing (hey)
import String as S
import Char as C

hey : String -> String
hey remark =

    if S.length (S.trim remark) == 0 then
        "Fine. Be that way!"

    else if isYelling remark then
        if String.endsWith "?" (S.trim remark) then
            "Calm down, I know what I'm doing!"
        else
            "Whoa, chill out!"

    else if S.endsWith "?" (S.trim remark) then
        "Sure."

    else
        "Whatever."

isYelling : String -> Bool
isYelling remark =
    S.any C.isAlpha remark
        && (remark
                |> S.filter C.isAlpha
                |> S.all C.isUpper
           )