import argparse
import os


parser = argparse.ArgumentParser()

#pass in arguments
parser.add_argument(dest = "region", help = "Enter AWS Region")
parser.add_argument(dest = "num2", help = "Second Number")
parser.add_argument(dest = "operator", help = "Operation")
