# ---------------------------------------------------------------------------
# \file       transform.py
# \author     (c) 2024 Jens Kallup - paule32
# \copyright  all rights reserved.
# ---------------------------------------------------------------------------
import sys
import re

def delete_pattern(filename, pattern):
    with open(filename, 'r', encoding='utf-8') as file:
        content = file.read()
    
    updated_content = re.sub(pattern, '', content)
    with open(filename, 'w', encoding='utf-8') as file:
        file.write(updated_content)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <filename>")
        sys.exit(1)
    
    filename = sys.argv[1]
    #
    # delete comments
    delete_pattern(filename,
    r"\;.*[\r\n]")
    #
    delete_pattern(filename, r"EXTERN\tFPC\_DO\_EXIT[\r\n]")
    delete_pattern(filename, r"EXTERN\tfpc\_initializeunits[\r\n]")
    #
    delete_pattern(filename,
    r"EXTERN[ \t]*VMT.*[\r\n]")
    #
    delete_pattern(filename,
    r"EXTERN[ \t]*QT_STRING.*CREATE.*QSTRING")
    #
    delete_pattern(filename,
    r"%LINE[ \t]*\d+\+\d+.*[\r\n]*\t\tlea\trsp,\[rsp-40\]")
    #
    delete_pattern(filename,
    r"%LINE[ \t]*\d+\+\d+.*[\r\n]*\t\tlea\tr8,\[.*\][\r\n]*\t\tmov\tedx,1[\r\n]*\t\tlea\trcx,\[.*\][\r\n]*\t\tcall.*[\r\n]")
    #
    delete_pattern(filename,
    r"%LINE[ \t]*\d+\+\d+[\r\n]*\t\tnop[\r\n]*\t\tlea\trsp,\[rsp\+40\]")
    #
    delete_pattern(filename,
    r"\t\tnop[\r\n]*\t\tlea\trsp,\[rsp\+40\]")
    #
    delete_pattern(filename,
    r"\%LINE.*[\r\n]")
    
    sys.exit(0)
    