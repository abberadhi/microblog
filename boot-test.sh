#!/bin/sh

source .venv/bin/activate
# while true; do
#     flask db upgrade
#     if [[ "$?" == "0" ]]; then
#         break
#     fi
#     echo Upgrade command failed, retrying in 5 secs...
#     sleep 5
# done
cd volume && python3 -m py.test -c pytest.ini tests/unit
