#!/bin/bash

echo "Starting proscheduler..."
rm /usr/local/workspace/proscheduler/tmp/pids/server.pid
cd proscheduler

rm -rf ~/.ssh/*
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPSGW25qPIdfVoPJ9gLpgKyc66sgKH+GfnBnkFV4A62pEVQ/bxjjhcNCao4aXKwsvMxIlGrw6vg64YMg2RP8gTUf7mQXS1zlofM8Ke9LKkz0ifiOLLb54SAmtRDS4donGRJ/eCHIxB2JW63cD5j0MLZbIS2hoqDCGazXc8qCuBoLWhnT1vprGkevWW1p84Dx5TuiboBf/NzNwp0+4/fWqERXStWcOln7x8hC0JyFVaQJUaHj5yTUu89oXWms+s+LbsmtSpsI9mkUMnG7ALTJdbqWGcCvHDsoYrHyO6G+6h3N6GcXRJG/s7nwF/BBcQOOLFEBSW2NMtkWVU5ARHe5Pp matt" > ~/.ssh/id_rsa.pub
echo "-----BEGIN OPENSSH PRIVATE KEY-----" > ~/.ssh/id_rsa
echo "b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcn" >> ~/.ssh/id_rsa
echo "NhAAAAAwEAAQAAAQEAz0hltuajyHX1aDyfYC6YCsnOurICh/hn5wZ5BVeAOtqRFUP28Y44" >> ~/.ssh/id_rsa
echo "XDQmqOGlysLLzMSJRq8Or4OuGDINkT/IE1H+5kF0tc5aHzPCnvSypM9In4jiy2+eEgJrUQ" >> ~/.ssh/id_rsa
echo "0uHaJxkSf3ghyMQdiVut3A+Y9DC2WyEtoaKgwhms13PKgrgaC1oZ09b6axpHr1ltafOA8e" >> ~/.ssh/id_rsa
echo "U7om6AX/zczcKdPuP31qhEV0rVnDpZ+8fIQtCchVWkCVGh4+ck1LvPaF1prPrPi27JrUqb" >> ~/.ssh/id_rsa
echo "CPZpFDJxuwC0yXW6lhnArxw7KGKx8juhvuodzehnF0SRv7O58BfwQXEDjixRAUltjTLZFl" >> ~/.ssh/id_rsa
echo "VOQER3uT6QAAA8AbYnc5G2J3OQAAAAdzc2gtcnNhAAABAQDPSGW25qPIdfVoPJ9gLpgKyc" >> ~/.ssh/id_rsa
echo "66sgKH+GfnBnkFV4A62pEVQ/bxjjhcNCao4aXKwsvMxIlGrw6vg64YMg2RP8gTUf7mQXS1" >> ~/.ssh/id_rsa
echo "zlofM8Ke9LKkz0ifiOLLb54SAmtRDS4donGRJ/eCHIxB2JW63cD5j0MLZbIS2hoqDCGazX" >> ~/.ssh/id_rsa
echo "c8qCuBoLWhnT1vprGkevWW1p84Dx5TuiboBf/NzNwp0+4/fWqERXStWcOln7x8hC0JyFVa" >> ~/.ssh/id_rsa
echo "QJUaHj5yTUu89oXWms+s+LbsmtSpsI9mkUMnG7ALTJdbqWGcCvHDsoYrHyO6G+6h3N6GcX" >> ~/.ssh/id_rsa
echo "RJG/s7nwF/BBcQOOLFEBSW2NMtkWVU5ARHe5PpAAAAAwEAAQAAAQA07ugKrRtmNblVxSVu" >> ~/.ssh/id_rsa
echo "CngJST/hrVO4JVdjR+Pf2ViFrwsdwx1s0kTSRv8YYYdVICmrQQVNZ6b4a0gqJZ4RWZheVr" >> ~/.ssh/id_rsa
echo "IhWtXTF78r+Kvaq+Jy8/w3wV0pVnenYbbGG/eK2dDmoK40K9YleonCDp8ZG9yjLHUtG0VT" >> ~/.ssh/id_rsa
echo "N4XdYlrwwoFZuJsCUXDyJpm5DvQEczbOFQ9TFBMKg8AOGyDCfjJbRxGvjgBZveDzUXJtJ4" >> ~/.ssh/id_rsa
echo "B4QYDpPcICMOJ3Cu/Lpf8wKJOJfMgBjEAFOdMvhcrNklEGQhw/m1YsV5E5DRgR5SP5IHCC" >> ~/.ssh/id_rsa
echo "jaQPUOF+UTtFSxIdKQDT+gDf4ORdREP75Ro9FuSjtBWBAAAAgQDB/WqO8TiS+zFYReQo52" >> ~/.ssh/id_rsa
echo "0CWv8I0XDhYnBT2HCqQ1K9PlES/L479kMutg4lL09SZL5kJnDqMyV/ffdoMMUAQ+GUgKQF" >> ~/.ssh/id_rsa
echo "bOebvbQt0ShdZN4LWrOXJGnO1LsyGmBqCrPwazWlqb7+rvAp9S+GWt0m6kSGxabT2Uh3fL" >> ~/.ssh/id_rsa
echo "WokEtw2ZW4XgAAAIEA5rAskPgK483kErUkX8ON3A2leGaH8LpqyRhXakZBfbSKB0WsqkiF" >> ~/.ssh/id_rsa
echo "l8p9BlN2bLJHIslsH3e5EqzXvbvlIAQPMBPVbJ2ViWeY0aB+uVSt9l9EL8imv+seOi2NZv" >> ~/.ssh/id_rsa
echo "jLFm58aVySyOD0i5R88xcC85KpHSmvhg7OiNRDEyk/u3DDcmsAAACBAOYGyXcO/QeaQAww" >> ~/.ssh/id_rsa
echo "4czlZOiS4LPpZ2GGfEd6vcmUgEElZYZADhkZwu1nuCLMzleax1jc43zWpEVxrwN7gjvdht" >> ~/.ssh/id_rsa
echo "94CHEUhVuDPQ7X6Vg79L1ZhqLHbwAnaXMqJ6yg8T9vnJAht75DpVTgTj3CojWlx0EM6Q7N" >> ~/.ssh/id_rsa
echo "54SYT3Nr/dVnOm/7AAAABG1hdHQBAgMEBQY=" >> ~/.ssh/id_rsa
echo "-----END OPENSSH PRIVATE KEY-----" >> ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa

git config --global user.name "matt"

#debug git credentials!
#git config --global --list
#ssh -vT git@github.com

bundle config set path /usr/local/workspace/tmp/bundle
#bundle install

#rake db:migrate:with_data

#rails generate migration AddOriginalCreatedAtToDerivedConstraints original_created_at:datetime
#rails generate migration AddStrategyTypeToOptimizerJobs strategy_type:string

bundle exec rake db:migrate

#bundle exec rake spec

bundle exec rake log:clear
rails server -b 0.0.0.0

#tail -f /dev/null 
