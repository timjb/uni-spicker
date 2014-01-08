\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheat-sheet}[2013/11/14 LaTeX class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper,10pt]{article}

\usepackage[utf8]{inputenc}
\usepackage[ngerman]{babel}

\usepackage[landscape]{geometry}
\geometry{top=1cm,left=1cm,right=1cm,bottom=1cm}

\usepackage{amsmath,amsthm,amsfonts,amssymb}

\setcounter{secnumdepth}{0} % Keine Abschnittsnummerierung
\pagestyle{empty} % Header und Footer abschalten
\setlength{\parindent}{0pt} % Keine Einrückung
\setlength{\parskip}{0pt plus 10ex} % Kein Abstand zwischen Absätzen
% Weniger Platzverbrauch durch section-Kommandos
\makeatletter
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {-1ex plus -.5ex minus 2ex}%
                                {2.5ex plus .2ex}%x
                                {\normalfont\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
                                {-1ex plus -.5ex minus -.2ex}%
                                {1ex plus .2ex}%
                                {\normalfont\small\bfseries}}
\makeatother

\theoremstyle{definition}

\newtheorem*{nota}{Notation}
\newtheorem*{defn}{Definition}
\newtheorem*{bsp}{Beispiel}
\newtheorem*{satz}{Satz}
\newtheorem*{lem}{Lemma}
\newtheorem*{kor}{Korollar}
\newtheorem*{acht}{Achtung}
\newtheorem*{strat}{Strategie}
\newtheorem*{prob}{Problem}
\newtheorem*{abk}{Abkürzung}
\newtheorem*{alg}{Algorithmus}
\newtheorem*{verf}{Verfahren}
\newtheorem*{eig}{Eigenschaft}
\newtheorem*{eign}{Eigenschaften}
\newtheorem*{prop}{Proposition}

\theoremstyle{remark}
\newtheorem*{bem}{Bemerkung}

\usepackage{enumitem}
\setitemize[0]{leftmargin=10pt,itemindent=0pt,itemsep=0pt}
\setenumerate[0]{leftmargin=10pt,itemindent=0pt,itemsep=0pt}

% Färbe \emph{} violett
\usepackage{color,graphicx,overpic}
\definecolor{Emph}{rgb}{0.2,0.2,0.8} % softer red for display
\renewcommand{\emph}[1]{\textcolor{Emph}{\bf{#1}}}

\usepackage{cclicenses}
\usepackage{hyperref}

\definecolor{gray}{rgb}{0.5,0.5,0.5}

\makeatletter
\def\url@foostyle{%
  \@ifundefined{selectfont}{\def\UrlFont{\sf}}{\def\UrlFont{\small\ttfamily}}}
\makeatother

% Titel
\renewcommand{\maketitle}[1]{
  \begin{center}
    \Large{\underline{#1}} \\
    {\footnotesize \color{gray} \cc \!\!\!\!\!\! \ccby \!\! Tim Baumann, \scriptsize \href{http://timbaumann.info/uni-spicker}{http://timbaumann.info/uni-spicker}}
  \end{center}
}

\everymath{\displaystyle} % Display style überall!

% Römische Ziffern
\makeatletter
\newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother

% Mathematische Symbole
\newcommand{\R}{\mathbb{R}} % Reelle Zahlen
\newcommand{\N}{\mathbb{N}} % Natürliche Zahlen
\newcommand{\Z}{\mathbb{Z}} % Ganze Zahlen
\newcommand{\C}{\mathbb{C}} % Komplexe Zahlen
\newcommand{\Q}{\mathbb{Q}} % Rationale Zahlen
\renewcommand{\d}{\mathrm{d}} % Differentiator

\newcommand{\id}{\mathrm{id}}

% Integrale
\newcommand{\Int}[4]{{\textstyle \int\limits_{#1}^{#2}} #3 \,\d #4}
\newcommand{\Intdx}[3]{\Int{#1}{#2}{#3}{x}}
\newcommand{\Intab}[2]{\Int{a}{b}{#1}{#2}}
\newcommand{\Intabdx}[1]{\Intdx{a}{b}{#1}}

% Schöne Mengen { #1 | #2 }
% siehe http://tex.stackexchange.com/questions/13634/define-pretty-sets-in-latex-esp-how-to-do-the-condition-separator
\usepackage{mathtools}
\DeclarePairedDelimiterX\Set[2]{\lbrace}{\rbrace}%
 { #1 \,\delimsize|\, #2 }

% Offene und abgeschlossene Teilmengen
% http://tex.stackexchange.com/questions/22371/subseteq-circ-as-a-single-symbol-open-subset
\newcommand\opn{\mathrel{\ooalign{$\subset$\cr
  \hidewidth\raise.1ex\hbox{$\circ\mkern.5mu$}\cr}}}
\newcommand\cls{\mathrel{\ooalign{$\subset$\cr
  \hidewidth\raise.1ex\hbox{$\bullet\mkern.5mu$}\cr}}}

% Kleinere Vereinigungs-, Schnitt-, Summen- und Produktsymbole
\let\myBigcup\bigcup
\DeclareMathOperator*{\textbigcup}{{\textstyle \myBigcup}}
\renewcommand{\bigcup}{\textbigcup\limits}
\let\myBigcap\bigcap
\DeclareMathOperator*{\textbigcap}{{\textstyle \myBigcap}}
\renewcommand{\bigcap}{\textbigcap\limits}
\let\myBigsqcup\bigsqcup
\DeclareMathOperator*{\textbigsqcup}{{\textstyle \myBigsqcup}}
\renewcommand{\bigsqcup}{\textbigsqcup\limits}
%\let\myBigsqcap\bigsqcap
%\DeclareMathOperator*{\textbigsqcap}{{\textstyle \myBigsqcap}}
%\renewcommand{\bigsqcap}{\textbigsqcap\limits}
\let\myProd\prod
\DeclareMathOperator*{\textprod}{{\textstyle \myProd}}
\renewcommand{\prod}{\textprod}
\let\mySum\sum
\DeclareMathOperator*{\textsum}{{\textstyle \mySum}}
\renewcommand{\sum}{\textsum\limits}

\usepackage{multicol}
\AtBeginDocument{
  \raggedright % Flattersatz
  \footnotesize
  \begin{multicols}{3}
  % multicol parameters
  % These lengths are set only within the two main columns
  %\setlength{\columnseprule}{0.25pt}
  \setlength{\premulticols}{1pt}
  \setlength{\postmulticols}{1pt}
  \setlength{\multicolsep}{1pt}
  \setlength{\columnsep}{2pt}
}
\AtEndDocument{
  \end{multicols}
}

