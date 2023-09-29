module WelcomeTranslation where

-- https://www.codewars.com/kata/577ff15ad648a14b780000e7/train/haskell

import Data.Maybe (fromMaybe)

welcome :: String -> String
welcome lang = fromMaybe "Welcome" . lookup lang $ database

database =
  [ ("english", "Welcome"),
    ("czech", "Vitejte"),
    ("danish", "Velkomst"),
    ("dutch", "Welkom"),
    ("estonian", "Tere tulemast"),
    ("finnish", "Tervetuloa"),
    ("flemish", "Welgekomen"),
    ("french", "Bienvenue"),
    ("german", "Willkommen"),
    ("irish", "Failte"),
    ("italian", "Benvenuto"),
    ("latvian", "Gaidits"),
    ("lithuanian", "Laukiamas"),
    ("polish", "Witamy"),
    ("spanish", "Bienvenido"),
    ("swedish", "Valkommen"),
    ("welsh", "Croeso"),
    ("ukrainian", "Ласкаво просимо"),
    ("croatian", "Dobrodošli"),
    ("serbian", "Добродошли"),
    ("russian", "Добро пожаловать"),
    ("albanian", "Mirë se vini"),
    ("slovak", "Vitajte"),
    ("slovenian", "Dobrodošli"),
    ("turkish", "Hoşgeldiniz"),
    ("hawaiian", "Welina"),
    ("japanese", "ようこそ"),
    ("chinese", "欢迎")
  ]
