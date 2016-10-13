# seddiff
Tool for diffing files, pre-filtered using 'sed' to prevent seeing
extraneous differences

Use seddiff -h to see usage information

Pass a sed operation (or multiple sed operations, in a file) to the program
and these are applied to both the files involved in the diff.

This is useful for omitting things from the files that cause superfluous
diff results.  For example, in log files, timestamps, temp file names,
dates, or other values, can be different between two different files,
but not represent any real change worth evaluating.

This tool allows you to replace those types of things in the files with
static strings, allowing the diff to procede and show just the important
(or "real") differences.

todo:
 * give some examples
 * explain predefined types
