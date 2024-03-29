# Specyfikacja realizowanej aplikacji

## Tytuł aplikacji

CurrencyApp

## Autor/Autorzy

- [Bartosz Nieroda](https://github.com/qymaensheel), bnieroda@student.agh.edu.pl
- [Tomasz Wojakowski](https://github.com/Wojaqqq), twojakowski@student.agh.edu.pl

## Wizja aplikacji

Aplikacja będzie służyć do przeliczania dwóch wybranych przez użytkownika walut oraz do wyświetlania wykresów wartości waluty w czasie.

## Wymagania
Wymagania funkcjonalne:
- Przeliczanie dowolnych walut po aktualnym kursie
- Wyświetlanie wykresów wartości waluty w wybranej jednostce czasu

Wymagania pozafunkcjonalne:
- Ekran menu i dwa ekrany z zawartością
- Wykorzystanie z zewnętrznego API do aktualizacji danych na żywo

## Wykorzystane narzędzia

### Framework(i) iOS SDK

AVSpeechSynthesizer
Swift Charts


### Frameworki/biblioteki zewnętrzne

1. Alamofire (https://github.com/Alamofire/Alamofire) - Obsługa requestów pobierających dane z zewnętrznego API
2. Money (https://github.com/danthorpe/Money) - Przechowywanie walut w specjalnych zmiennych

## Dane

Przechowywany będzie ostatnio pobrany przelicznik walut. Dane będą wykorzystywane w sytuacji braku internetu

## Repozytorium

[https://github.com/qymaensheel/CurrencyApp](https://github.com/qymaensheel/CurrencyApp)
