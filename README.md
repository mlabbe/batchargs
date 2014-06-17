# BatchArgs #

You cannot use equals '=' in arguments passed to a batch file.  Passing this:

    somebat.bat a=b

Is tantamount to outputting this:

    somebat.bat a b

## Solution ##

`batchargs.bat` works around this by converting double underscores to equals signs.  Copy and paste the code from `batchargs.bat` into your batch file, so that:

    somebat.bat a__b

Equals this:

    somebat.bat a=b

## Usage ##

Once the loop is finished, the global variable `%args%` is set to the full list of args.

If there are parameters you do not want to convert, use shift to get rid of them.

