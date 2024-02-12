import os

def generate_secret_key(length=32):
    key = os.urandom(length)
    key_hex = key.hex()
    print("Secret Key:", key_hex)

# Example: Generate a 32-character secret key
generate_secret_key(32)

