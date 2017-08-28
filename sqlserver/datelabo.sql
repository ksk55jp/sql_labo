select
dateadd(month, -1, GETDATE()) "LastMonthToday"
,Convert(varchar, DATEADD(month, -1, GETDATE()), 112) "TextLMT"
,SubString(Convert(varchar, month, -1, GETDATE()), 112), 1, 6) "TestLM"
,SubString(Convert(varchar, month, -1, GETDATE()), 112), 1, 6)+'01' "TestLMF"
,SubString(SubString(Convert(Varchar, DateAdd(month, -1, GETDATE()), 112), 1, 6) + '01', 1, 4) 
+ '/' + SubString(SubString(Convet(Varchar, DateAdd(month, -1, GetDate()), 112), 1, 6) + '01', 5, 2)
+ '/' + SubString(SubString(Convet(Varchar, DateAdd(month, -1, GetDate()), 112), 1, 6) + '01', 7, 2)
+ '00:00:00' "TextB4DateTIME"
, Convert(DateTime, Substring(Convert(Varchar, DateAdd(month, -1, GETDATE()), 112), 1, 6) + '01', 112) "DEFINITIVE_PM1"
, Convert(DateTIme, SubString(Convert(Varchar, GETDATE(), 112), 1, 6), + '01', 112) "DTTHISM1"
, Convert(DateTIme, SubString(Convert(Varchar, GETDATE(), 112), 1, 6), + '01', 112)-1 "DTTHISM1-1<KORE>"
