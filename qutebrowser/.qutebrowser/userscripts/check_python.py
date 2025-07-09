#!/usr/bin/env python3
import sys

output_file = "/tmp/qutebrowser_python_path.txt"

try:
    with open(output_file, "w") as f:
        f.write(sys.executable + "\n")
    print(f"Python executable path written to {output_file}")
except Exception as e:
    print(f"Error writing to file: {e}")
