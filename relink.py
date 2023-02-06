#!/usr/bin/env python3
import argparse
import os
import sys
import typing

from pathlib import Path

class Options:
    dry_run: str

def execute(cmd: str, options: argparse.Namespace) -> None:
    if options.relink:
        os.system(cmd)
    else:
        print(cmd)

def repo_path_to_home_path(repo_path: Path) -> str:
    return Path("/home") / os.getenv("USER") / repo_path.name

def link(repo_path: Path, options: argparse.Namespace) -> None:
    home_path = repo_path_to_home_path(repo_path)
    execute(f"rm -rf {home_path}", options)
    execute(f"ln {repo_path} {home_path}", options)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Relink dotrc files")
    parser.add_argument('--relink', '-l', action='store_true', default=False,
                        help='''Actually remove the old files and create
                        hardlinks. Default: False''')

    options = parser.parse_args()

    if not options.relink:
        parser.print_help(sys.stderr)
        print("")
        print("If invoked with --relink, will perform the following:")
        print("")

    dotrcs = (Path(__file__).parent / "dotrc").glob(".*")
    dotrcs = filter(lambda f: ".git" not in str(f), dotrcs) 
    for file in dotrcs:
        link(file, options)
