# Lex Iterata - Archive test

[Lex Iterata](https://refli.be/fr/lex) is a project to collect and transform
the content of the Belgian Official Journal web site. It presents that content
in an enhanced format for human comprehension, while also providing structured
data tailored for machine consumption.

This Git repository is an experiment to generate one Markdown file (similar to
what is done in [iterata-md](https://github.com/hypered/iterata-md)) for one
example legislative text, and doing it again for all its archived versions.

Each version of one text is recorded in a separate commit. This lets us have a
better idea of what Git can offer, including existing the GitHub interface to
explore the different versions.

# Exploring on GitHub

## Diff view

On GitHub, you can [view the list of
commits](https://github.com/hypered/iterata-archive/commits/main/) (and thus of
each versions of the text) then click a particular commit. This shows the
differences (or "diff" for short) between the previous version and the version
mentioned in the commit message.

**Note**: sometimes GitHub shows a message "Large diffs are not rendered by
default." with a link "Load diff" to force it to show the commit.

## Blame view

Another interesting view is what developers name "Blame". When you view a
particular commit (as explained above), there is a little "..." button on the
top right of the filename. When clicking that button, it shows a menu with one
entry labeled "View file".

Clicking "View file" will show you the file at that particular commit (and
thus, version), without trying to show the "diff" with the previous version.

Above the content of the file, there are three buttons: "Preview" (which is
already selected), "Code" (which allows to see the raw Markdown code), and
"Blame".

When you click "Blame", you should see two columns on the screen. Here is for
instance the [Blame
view](https://github.com/hypered/iterata-archive/blame/cf4756b9019423e5c9e73c5d3b80301ba6c674b6/texts/1999/01/1999011160.md)
of the file at version 84.

On that screen, the right column shows the raw content of the file (which uses
the Markdown syntax). The left column shows which commits have contributed to
which parts of the file.

# Exploring from the command-line

When exploring the history of this text on the command-line, we suggest to use
a command such as:

```
$ git log -p --reverse --word-diff
```
