#!/usr/bin/env python

import sys
import os
import subprocess as sub
from selenium import webdriver as wd

if len(sys.argv) != 2:
    print("Usage: 'lilyload my_lilypond_file' (without '.ly'!)")
    exit()

which_process = sub.run(["which", "lilypond"])
lily_exec = which_process.stdout

filename = sys.argv[1]
lily_file = f"{filename}.ly"
lily_path = f"{os.getcwd()}/{filename}.ly"
pdf_path = f"{os.getcwd()}/{filename}.pdf"

# previous_file_time = now
# pdf_is_rendered = False
# while True:

if not os.path.exists(lily_file):
    print(f"File '{lily_path}' does not exist.")

# current_file_time = ?
# if previous_file_time < current_file_time:
  # compile
  # render/refresh (pdf_is_rendered)
# previous_file_time = current_file_time
# time.sleep(2)

lilypond_process = sub.run([lily_exec,  lily_path])

if lilypond_process.returncode == 0:
    driver = wd.Firefox()
    driver.get(f"file://{pdf_path}")




