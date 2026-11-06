import requests

# GitHub usernames to look up
usernames = ["octocat", "torvalds", "gaearon"]

for username in usernames:
    url = f"https://api.github.com/users/{username}"

    try:
        response = requests.get(url, timeout=10)

        # Process the response only if the status code is 200
        if response.status_code == 200:
            user_data = response.json()
            print(f"Login: {user_data['login']}")
            print(f"Public repositories: {user_data['public_repos']}")
            print("-" * 30)
        else:
            print(
                f"Could not fetch {username}. "
                f"HTTP Status Code: {response.status_code}"
            )

    except requests.exceptions.RequestException as error:
        print(f"Request failed for {username}: {error}")
