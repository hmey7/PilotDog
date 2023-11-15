#!/bin/bash

while true; do
    response=$(curl -k -f https://www.pilotdog.tech/api/get_eligible_proof?address=0x0D548b394f2d7be11f511606339A1E80a70A35a1 2>&1)
    if [[ $response == *"502 Bad Gateway"* ]]; then
        echo "Received Bad Gateway error. Retrying in 60 seconds..."
        sleep 60
    else
        echo "Request successful."
        # Do something with the response (e.g., update the file)
        echo "$response" >> Update.tsx
        break
    fi
done
