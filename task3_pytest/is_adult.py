def is_adult(age):
    """Return True if age is 18 or above; reject negative ages."""
    if age < 0:
        raise ValueError("Age cannot be negative.")

    return age >= 18
