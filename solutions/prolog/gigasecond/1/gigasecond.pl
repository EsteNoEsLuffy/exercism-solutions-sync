:- use_module(library(date_time)).

add_gigasecond(Date, GigasecondDate) :-
    date_time_stamp(Date, TimeStamp),
    date_time_value(time_zone, Date, TZ),
    TimeStamp2 is TimeStamp + 1000000000,
    stamp_date_time(TimeStamp2, GigasecondDate, TZ).

gigasecond(InputDate, OutputDate) :-
    add_gigasecond(InputDate, OutputDate).