% bkcnotes.cls (A class file for typesetting notes)

% version 1
% Mar 18.2014

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bkcnotes}
\LoadClass[12pt]{article}

\RequirePackage{bkc}

\renewcommand\maketitle{
  \begin{titlepage}
    \begin{center}

      \includegraphics[width=0.15\textwidth]{~/Pictures/lambdablack.png}~\\[1cm]

      \textsc{\LARGE Types and Semantics}\\[1.5cm]

      % Title
      \HRule \\[0.4cm]
      { \huge \bfseries Parametricity I \\[0.4cm] }

      \HRule \\[1.5cm]

      % Author and supervisor
      \begin{center}
        \texttt{BKC}
      \end{center}

      \vfill

      % Bottom of the page
      {\large \today}

    \end{center}
  \end{titlepage}
}