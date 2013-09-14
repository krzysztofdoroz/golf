
-define(C(X),erlang:list_to_integer(X)).
main([X])->[A,B,C]=string:tokens(X,","),D=?C(B),E=?C(C),if D==1->V=string:len(A);true->V=erlang:list_to_integer(A,D)end,if E==1->p(V);true->io:format("~s\n",[erlang:integer_to_list(V,E)])end.
p(N)->if N==0->io:format("\n");true->io:format("~s",["1"]),p(N-1)end.
