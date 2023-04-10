#!/usr/bin/env python

import sys
import os
import subprocess as sub
# webdriver for firefox requires geckodriver installed
from selenium import webdriver as wd
from time import sleep

if len(sys.argv) != 2:
  print("Usage: 'lilyload my_lilypond_file' (without '.ly'!)")
  exit()

which_process = sub.run(["which", "lilypond"], capture_output=True, text=True)
lily_exec = which_process.stdout.strip()

filename = sys.argv[1]
lily_file = f"{filename}.ly"
lily_path = f"{os.getcwd()}/{filename}.ly"
pdf_path = f"{os.getcwd()}/{filename}.pdf"

if not os.path.exists(lily_file):
  print(f"File '{lily_path}' does not exist.")
  exit()

previous_file_time = os.stat(lily_path).st_mtime
pdf_is_rendered = False
driver = wd.Firefox()

if os.path.exists(pdf_path):
  driver.get(f"file://{pdf_path}")
  pdf_is_rendered = True

while True:

  current_file_time = os.stat(lily_path).st_mtime
  if previous_file_time < current_file_time:
    # compile
    lilypond_process = sub.run([lily_exec,  lily_path])
    if lilypond_process.returncode == 0:
      if not pdf_is_rendered:
        # render
        driver.get(f"file://{pdf_path}")
        pdf_is_rendered = True
      else:
        # refresh
        driver.refresh()
    previous_file_time = current_file_time
  sleep(1)



