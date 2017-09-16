\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{two-column-resume}[2017/09/14]
\LoadClass[11pt,letterpaper]{article}

\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage[nosfdefault]{raleway}
\RequirePackage[default]{droidsans}
\RequirePackage[T1]{fontenc}
\RequirePackage{titlesec}

\pagestyle{empty}

\newcommand{\altfont}{\usefont{T1}{Raleway-TLF}{el}{n}}

\newcommand{\name}[2]{
    \begin{center}
        \fontsize{40}{48}\altfont #1%
        ~%
        \fontseries{m}\selectfont #2%
    \end{center}
}

\newcommand{\contact}[1]{
    \begin{center}
        #1%
    \end{center}
}

\newcommand{\headerline}{\vspace{-\baselineskip}\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}}

\titlespacing{\section}{0px}{0px}{0px}
