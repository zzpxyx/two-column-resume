\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{two-column-resume}[2017/09/14]
\LoadClass[11pt,letterpaper]{article}

\RequirePackage[margin=1.5cm]{geometry}
\RequirePackage[nosfdefault]{raleway}
\RequirePackage[default]{droidsans}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{ifthen}
\RequirePackage{xcolor}

\pagestyle{empty}

\titlespacing{\section}{0px}{0px}{0px}
\titleformat{\section}{\fontsize{16}{20}\usefont{T1}{Raleway-TLF}{l}{n}}{}{0pt}{}

\newcommand{\name}[2]{
    \begin{center}
        \fontsize{40}{48}\usefont{T1}{Raleway-TLF}{t}{n} #1%
        ~%
        \fontseries{m}\selectfont #2%
    \end{center}
}

\newcommand{\contact}[1]{
    \begin{center}
        #1%
    \end{center}
}

\newcommand{\headerline}{\vspace{-0.5\baselineskip}\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}\\}

\newcommand{\longitem}[4]{
    \begin{flushleft}
        \textbf{#1}\\%
        \ifthenelse{\equal{#2}{}}{}{
            #2\\%
        }
        {\color[HTML]{606060}#3 | #4}%
    \end{flushleft}
}

\newcommand{\shortitem}[1]{
    \begin{flushleft}
        \textbf{#1}
    \end{flushleft}
}

\newcommand{\itemdetails}[1]{
    \vspace{-1.5\baselineskip}
    \begin{flushleft}
        #1
    \end{flushleft}
}
