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

% \name{<first_name>}{<last_name>}
% Show name at the top. Last name is bolder.
\newcommand{\name}[2]{
    \begin{center}
        \fontsize{40}{48}\usefont{T1}{Raleway-TLF}{t}{n} #1%
        ~%
        \fontseries{m}\selectfont #2%
    \end{center}
}

% \contact{<line>}
% Show contact after name.
\newcommand{\contact}[1]{
    \begin{center}
        \fontsize{12}{14}\selectfont #1%
    \end{center}
}

% \headerline
% Draw a line that separates header and body.
\newcommand{\headerline}{\vspace{-0.5\baselineskip}\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}\\}

% \longitem{<title>}{<title_short_descriptions>}{<place>}{<time>}
% Add a new long item. Title short description will be hidden if empty.
\newcommand{\longitem}[4]{
    \begin{flushleft}
        {\fontsize{12}{14}\textbf{#1}}\\%
        \ifthenelse{\equal{#2}{}}{}{
            #2\\%
        }
        {\color[HTML]{606060}#3 | #4}%
    \end{flushleft}
}

% \shortitem{<item>}
% Add a short item.
\newcommand{\shortitem}[1]{
    \begin{flushleft}
        {\fontsize{12}{14}\textbf{#1}}%
    \end{flushleft}
}

% \itemdetails{<details>}
% Add item details. Can be used for both long and short items.
\newcommand{\itemdetails}[1]{
    \vspace{-1.5\baselineskip}
    \begin{flushleft}
        #1%
    \end{flushleft}
}
