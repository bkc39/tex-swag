%% bkcpset.cls (A class file for problem set formats)
%%
%% version 1
%% Jan 17, 2014

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bkcpset}
\LoadClass[12pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Package Imports %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{DejaVuSansMono}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[tmargin=1in,bmargin=1in,lmargin=1.25in,rmargin=1.25in]{geometry}
\RequirePackage{relsize}
\RequirePackage{parskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PAGE PROPERTIES %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}

% Sets name to be used at the left of each page header
\newcommand{\setname}[1]{\def\@name{#1}}
\newcommand{\show@name}{\@name}

% Sets assignment title
\newcommand{\setassn}[1]{\def\@assn{#1}}
\newcommand{\show@assn}{\@assn}

% Sets the default date
\newcommand{\setdate}[1]{\def\@date{#1}}
\newcommand{\show@date}{\@date}

% Default values for the variables in the header
\def\@name{Ben Carriel} % default set to Yours Truly
\def\@assn{}
\def\@date{\today} % defaults to current date

% header
\lhead{\show@name}
\chead{\show@assn}
\rhead{\show@date}

\headheight 13.0pt
\parskip 7.2pt
\parindent 1cm

% Font
\renewcommand*{\familydefault}{\sfdefault} % sans-serif; delete to make serif

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MACROS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%
%Redefining sections as problems
%
\makeatletter
\newenvironment{problem}{ \@startsection {section} {1}
  {-.2em} {-3.5ex plus -1ex minus -.2ex} {2.3ex plus .2ex}
  {\pagebreak[3]%forces pagebreak when space is small; use \eject
               %for better results
    \large\bf\noindent{Problem } \vspace{-1.5ex}} }
% vspace and center dividing line option -- CURRENTLY AFTER SOLUTION
{%\vspace{-2ex}\begin{center} \rule{0.3\linewidth}{.3pt}\end{center}}
}
\makeatother

\newenvironment{subproblems}{\enumerate}{\endenumerate}
\newenvironment{subproblem}{\item}{}

\makeatletter
\newenvironment{solution}
{\let\oldqedsymbol=\qedsymbol%
  \def\@addpunct##1{}%
  \begin{proof}[\bfseries\upshape Solution]}%
  {\end{proof}%
  \renewcommand{\qedsymbol}{\oldqedsymbol}
  \vspace{-2ex}\begin{center} \rule{0.3\linewidth}{.3pt}\end{center}
}
\makeatother

%%
%% End of file 'bkcpset.cls'