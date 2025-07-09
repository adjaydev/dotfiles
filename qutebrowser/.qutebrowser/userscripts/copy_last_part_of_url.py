#!/usr/bin/env python3
import sys
from urllib.parse import urlparse
import pyperclip  # You might need to install this: pip install pyperclip

# Get the URL from the first command-line argument
if len(sys.argv) > 1:
    url = sys.argv[1]
    parsed_url = urlparse(url)
    path = parsed_url.path

    # Handle potential trailing slashes
    if path.endswith("/"):
        path = path.rstrip("/")

    last_segment = path.rsplit("/", 1)[-1]

    if last_segment:
        pyperclip.copy(last_segment)
        print(f"Copied: {last_segment}")
    else:
        print("No last segment found in URL path.")
else:
    print("No URL provided.")
