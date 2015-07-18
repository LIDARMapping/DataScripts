% Rock Paper Scissors

computerMoves = ['Dwayne'; 'Paypal'; 'Twizzlers'];

userMove = input("Dwayne(1), Paypal(2), Twizzlers(3)... shoot! ");
if (class(userMove) ~= 'double')
  disp('Expected a numnber but we''ll go with it')
else
  disp(['u chose ' computerMoves(userMove,:)])
endif

compMove = ceil(rand(1) * 3);


disp(['i choose ' computerMoves(compMove,:)])

winConditions = [0 1 -1; -1 0 1; 1 -1 0];

switch winConditions(compMove, userMove)
    case 0
        disp("we drew")
    case 1
        disp('u win')
        disp([computerMoves(userMove,:) ' beats ' computerMoves(compMove,:)])
    case -1
        disp('u lose')
        disp([computerMoves(compMove,:) ' beats ' computerMoves(userMove,:)])
    otherwise
        disp('lolwut')
endswitch

