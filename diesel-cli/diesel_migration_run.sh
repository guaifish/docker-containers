docker run --network=host -it -v "$(pwd):/app" -w /app --rm diesel-cli diesel migration run
