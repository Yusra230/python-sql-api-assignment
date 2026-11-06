# Python, SQL and Pytest Assignment

This repository contains solutions for all three assignment tasks.

## Project Structure

- `task1_github_api/github_api.py` - Fetches GitHub user details using the GitHub API.
- `task2_sql/library.sql` - Creates a library database, inserts eight books, and runs the required SQL queries.
- `task3_pytest/is_adult.py` - Contains the `is_adult(age)` function.
- `task3_pytest/test_is_adult.py` - Contains three pytest test cases.
- `requirements.txt` - Lists the required Python packages.

## Setup

Install the dependencies:

```bash
pip install -r requirements.txt
```

## Task 1: GitHub API

Run:

```bash
python task1_github_api/github_api.py
```

The script checks that each GitHub API response has status code `200` before reading and displaying the JSON data.

## Task 2: SQL

Run `task2_sql/library.sql` in a MySQL client or MySQL Workbench.

The script creates the `library` database and `books` table, inserts eight records, and includes all required SELECT and UPDATE queries.

## Task 3: Pytest

Run the tests from the repository root:

```bash
python -m pytest task3_pytest -v
```

Expected result: **3 passed**.
