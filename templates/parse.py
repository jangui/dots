import argparse
import sys

class MyParser(argparse.ArgumentParser):
    def error(self, message):
        sys.stderr.write('error: %s\n' % message)
        self.print_help()
        sys.exit(1)

def main():
    parser = MyParser(description="")
    parser.add_argument("arg_name", help="", nargs="1", default="",  type=str)
    parser.add_argument("-v", help="", type=str) #optional
    parser.parse_args()

    #print(args.arg_name)
