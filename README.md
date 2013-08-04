tex-swag
========

LaTeX stuntin'. This is my collection of LaTeX <code>.sty</code> and
<code>.cls</code>.

Files
=====

* <code>maketex.sh</code>: A makefile for building and viewing LaTeX
  documents
* <code>bkc.sty</code>: A custom style class with custom
  configurations and macros for mathematics, computer science, and
  problem set related documents.
* <code>proof.sty</code>: A package for typesetting inference
  rules. <code>bkc.sty</code> is dependent on this package.

Installation
============

To install <code>maketex.sh</code> on a Mac just move it into your
bin.  <pre><code>$ cp <path-to-repository>/maketex.sh /usr/local/bin
</code></pre> On a Linux machine, you will have to slightly modify the
script. On line 30 of <code>maketex.sh</code> replace the line
<pre><code>$ open $1.pdf</code></pre> with <pre><code>$ <application-name>
$1.pdf</code></pre>

To install the <code>.sty</code> and <code>.cls</code> files on Mac
<pre><code>$ cp *.sty *.cls ~/Library/texmf/tex/latex/ </code></pre>
If the directory <code>~/Library/texmf/</code> does not exist, you
will have to create it. In Linux or Windows you will want to run
<pre><code>
    $ export TEXDIR=`kpsewhich -var-value=TEXMFHOME`
    $ cp *.sty *.cls $TEXDIR
    $ texhash
</code></pre>
You may need root access to run the <code>texhash</code> command.

Usage
=====

Usage of <code>maketex.sh</code> is straightforward. At the command line type
<pre><code> $ maketex <filename> </code></pre>
Note that you **do not** include the <code>.tex</code> file extension.

The main <code>.sty</code> file is <code>bkc.sty</code>. To use in a
TeX document just import the package via
<pre><code>
    \documentclass{article}
    \usepackage{bkc}
    % rest of preamble
    ...
    \begin{document}
    ...
    \end{document}
</code></pre>
I'll in depth review of the provided macros soon when I have time.

Contributors
============
* Ben Carriel
