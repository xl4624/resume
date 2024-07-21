\ProvidesClass{resume}
\LoadClass{article}

\usepackage{tabularx, ragged2e, parskip, fontspec, lmodern}
\usepackage[hmargin=1.25cm, vmargin=1cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage[default]{lato}
\usepackage[none]{hyphenat}
\usepackage{enumitem}
\fontspec{Lato}
\thispagestyle{empty}
\sloppy  % removes long words from overlapping the right margin

\usepackage{selnolig}
\nolig{ti}{t|i}
\nolig{tf}{t|f}
\nolig{ft}{f|t}
\nolig{tt}{t|t}

\definecolor{light}{HTML}{707070}

\newcommand{\header}[3]{
  \begin{tabularx}{\linewidth}{@{}X@{}r@{}}
    \multicolumn{2}{c}{\lato\fontseries{l}\fontsize{35pt}{12pt}\selectfont#1} \\
    {\lato\fontseries{l}\fontsize{20pt}{12pt}\selectfont #2} &   
    {\fontsize{12.5pt}{12pt}\selectfont #3}
  \end{tabularx}
}

\renewcommand{\section}[2][]{
  \vspace{-1mm}
  \fontsize{17pt}{24pt} 
  \selectfont
  \textcolor{light}{#2}
  \fontsize{10.5pt}{24pt}
  \selectfont
  \textcolor{light}{#1}
  \hspace{-1mm}\texorpdfstring{
    \leaders\hbox{\rule[.7ex]{1pt}{0.25pt}}\hfill
    }{}
}

\renewcommand{\subsection}[1]{
  \vspace{-0.25mm}
  \fontsize{12.5pt}{12pt}
  \selectfont
  \textbf{#1}
}

\newcommand{\team}[1]{
  \hspace{-2mm}
  \fontsize{10.5pt}{12pt}
  \selectfont#1
}

\newcommand{\positiondate}[1]{
  \hfill
  \fontsize{10.5pt}{12pt}
  \selectfont
  #1
}

\newcommand{\technologies}[1]{
  \fontsize{10.5pt}{12pt}
  \selectfont
  \textcolor{light}{\textit{#1}}
  \vspace{2pt}
}

\newcommand{\body}[1]{
  \fontsize{11pt}{12pt} #1
}

\setlist[itemize]{leftmargin=*}

\newenvironment{tightemize}{
  \fontsize{10.5pt}{12pt}
  \selectfont
  \vspace{-6mm}
  \begin{itemize}
    \itemsep1pt
    \parskip0pt
    \parsep0pt
    }{
  \end{itemize}
  \vspace{1.5pt}
}
