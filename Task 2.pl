
% ---------- Dataset ----------

user(maha, 1234).
user(ali, 5678).
user(sara, 9999).



% ---------- Start Login ----------

start :-

    login(3).



% ---------- No Attempts Left ----------

login(0) :-

    write('Sorry, you exceeded the maximum number of attempts, try again later.'),
    nl.



% ---------- Login ----------

login(Attempts) :-

    Attempts > 0,

    write('Enter username: '),
    read(Username),

    write('Enter password: '),
    read(Password),

    check_login(Username, Password, Attempts).



% ---------- Correct Login ----------

check_login(Username, Password, _) :-

    user(Username, Password),

    write('Login Successful'),
    nl.



% ---------- Incorrect Login ----------

check_login(Username, Password, Attempts) :-

    \+ user(Username, Password),

    write('Login Unsuccessful'),
    nl,

    NewAttempts is Attempts - 1,

    login(NewAttempts).
