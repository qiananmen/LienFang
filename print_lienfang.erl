#!/usr/local/bin/escript

main(_Args) ->
    io:setopts([{encoding, unicode}]),
    print(   32,   126,  0),
    print(12288, 12288, 40),
    print(65281, 65374,  2),
    print(12353, 12435, 30),
    io:format("~n~n~ts~n", ["あのイーハトーヴォの"]),
    io:format("~ts~n", ["すきとおった風、"]),
    io:format("~ts~n", ["夏でも底に冷たさをもつ青いそら、"]),
    io:format("~ts~n", ["うつくしい森で飾られたモーリオ市、"]),
    io:format("~ts~n", ["郊外のぎらぎらひかる草の波。"]),
    io:format("~ts~n", ["祇辻飴葛蛸鯖鰯噌庖箸"]),
    io:format("~ts~n", ["АБВГДЕЖЗИЙКЛМ"]),
    io:format("~ts~n", ["абвгдежзийклм"]).

print(H, T, C) when C >= 40 ->
    io:format("~n"),
    print(H, T, 0);
print(T, T, _) ->
    io:format("~ts", [[T]]);
print(H, T, C) when H > 255 ->
    io:format("~ts", [[H]]),
    print(H+1, T, C+2);
print(H, T, C) ->
    io:format("~ts", [[H]]),
    print(H+1, T, C+1).
