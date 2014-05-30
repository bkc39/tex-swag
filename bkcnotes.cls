% bkcnotes.cls (A class file for typesetting notes)

% version 1
% Mar 18.2014

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bkcnotes}
\LoadClass[12pt]{article}

\RequirePackage{bkc}

%% Sets the name of the course on the title page
\newcommand{\setcourse}[1]{\def\@course{#1}}
\newcommand{\show@course}{\@course}

%% Sets the title of the notes
\newcommand{\setnotetitle}[1]{\def\@notetitle{#1}}
\newcommand{\show@notetitle}{\@notetitle}

%% Sets the picture to be shown on the title page
\newcommand{\setnoteimage}[1]{\def\@noteimage{#1}}
\newcommand{\show@noteimage}{\@noteimage}

%% Sets the author of the notes
\def\@author{BKC} %% default author is me

\renewcommand\maketitle{
  \begin{titlepage}
    \begin{center}

      \includegraphics[width=0.15\textwidth]{\show@noteimage}~\\[1cm]

      \textsc{\LARGE \show@course}\\[1.5cm]

      % Title
      \hrule \vspace{0.3cm}
      { \huge \bfseries \show@notetitle \\[0.4cm] }

      \hrule

      % Author and supervisor
      \begin{center}
        \texttt{\@author}
      \end{center}

      \vfill

      % Bottom of the page
      {\large \today}

    \end{center}
  \end{titlepage}
}