#!/bin/bash

curl "http://localhost:4741/instruments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "instrument": {
      "name": "'"${NAME}"'",
      "description":"'"${DESC}"'",
      "rent": "'"${RBOO}"'",
      "sale": "'"${SBOO}"'",
      "price": "'"${PRICE}"'",
      "rate": "'"${RATE}"'",
      "contact": "'"${CONTACT}"'"
     }
  }'

echo
