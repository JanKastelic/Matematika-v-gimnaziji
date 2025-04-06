\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{prip}[2003/01/14 Oblika v0.9]
\LoadClass{report}
% \LoadClass[11pt]{article}
\usepackage[slovene]{babel}
\usepackage[OT2,T1]{fontenc}
\usepackage[utf8]{inputenc}

\usepackage{lmodern}
\RequirePackage[a4paper,margin=2.5cm]{geometry}

% \usepackage[colorlinks]{hyperref}

\usepackage{xcolor}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{bbold}
\usepackage{fancyhdr}
\usepackage{mathpartir}
\usepackage{proof}
\usepackage[all,cmtip]{xy}
\usepackage{tikz}
\usepackage{tkz-graph}
\usepackage{circuitikz}
\usepackage{booktabs}
\usepackage{enumitem}

\setlist{nosep}
\RequirePackage{titlesec}
\RequirePackage{lastpage}
\RequirePackage{import}


\usepackage{float}
% \usepackage{gensymb}
\usetikzlibrary{calc}
\usetikzlibrary{through}
\usepackage{ulem}
\usepackage{graphicx}
\usepackage{mathtools}
\usepackage{multicol}
\usepackage{mathrsfs}
\usepackage{mathabx}
\usepackage{xparse}
\usepackage{arcs}
\usepackage{emptypage}
\usepackage{wrapfig}
\usepackage{colortbl}
\usepackage{hhline}
\usepackage{subcaption}
\usepackage{longtable}
\usepackage{wasysym}
\usepackage{tabularx}

{
  % \theoremstyle{plain}
  % \theorembodyfont{\itshape}
  \newtheorem{izrek}{Izrek}[chapter]
  \newtheorem{lema}[izrek]{Lema}
  % \newtheorem{izjava}[izrek]{Izjava}
  \newtheorem{posledica}[izrek]{Posledica}
  % \newtheorem{hipoteza}[izrek]{Hipoteza}
  \newtheorem{aksiom}[izrek]{Aksiom}
  \newtheorem{trditev}[izrek]{Trditev}
% }

% {
%   \theorembodyfont{\rmfamily}
  \newtheorem{definicija}[izrek]{Definicija}
  \newtheorem{primer}[izrek]{Primer}
  \newtheorem{opomba}[izrek]{Opomba}
  \newtheorem{naloga}[izrek]{Naloga}
}


\usepackage{color}
\definecolor{rdeca}{rgb}{1,0,0} % values Red, Green, Blue
\definecolor{modra}{rgb}{0,0,1} % values Red, Green, Blue

% naslov poglavja
\makeatletter
\renewcommand\chapter{\thispagestyle{fancy}%
\global\@topnum\z@
\@afterindentfalse
\secdef\@chapter\@schapter}
\makeatother

\makeatletter
\renewcommand{\@makechapterhead}[1]{%
\vspace{20 pt}%
{\setlength{\parindent}{0pt} \raggedright \normalfont
\bfseries\huge\thechapter\ #1
\par\nobreak\vspace{20 pt}}}
\makeatother


% slovenske crke
\catcode`\"=13
\def"#1{\v #1}


%okrajšave za številske množice
\def\RR{\mathbb{R}}
\def\CC{\mathbb{C}}
\def\QQ{\mathbb{Q}}
\def\NN{\mathbb{N}}
\def\ZZ{\mathbb{Z}}


%podatki o pripravi
\newcommand{\predmet}[1]{\gdef\predmet{#1}}
\newcommand{\razred}[1]{\gdef\razred{#1}}
\newcommand{\ucitelj}[1]{\gdef\ucitelj{#1}}
\newcommand{\sola}[1]{\gdef\sola{#1}}



\pagestyle{fancy}
\setlength{\headheight}{14pt}
\setlength{\headsep}{10pt}
\setlength{\columnsep}{10pt}
\setlength{\columnseprule}{0pt}
% \setlength{\oddsidemargin}{10pt}
% \setlength{\evensidemargin}{10pt}
\setlength\parindent{0pt}
\renewcommand{\footrulewidth}{0.5pt}
\renewcommand{\headrulewidth}{0.5pt}


\fancyhf{}
% Glava
\fancyhead[L]{\textbf{\MakeUppercase{\predmet}, \razred}}
\fancyhead[R]{\textbf{\stUre.\ ura}}
% Noga
\fancyfoot[L]{\ucitelj,\ \textit{\sola}}
\fancyfoot[R]{\datum\quad Stran \thepage{} od \pageref{LastPage}}


% podatki o uri
% #1=st. ure
% #2=datum
% #3=tema
% #4=poglavje
% #5=oblika
% #6=pripomocki
\newenvironment{priprava}[6]
{
\global\edef\stUre{#1}
\global\edef\datum{#2}

\clearpage
  \begin{tabularx}{\textwidth}{X X}
  {\bfseries Poglavje:} {#4} & {\bfseries Oblika:} {#5} \\
  {\bfseries Tema:} {#3} & {\bfseries Pripomočki:} {#6}
  \end{tabularx}
  \vspace{6pt}
\hrule
\vspace{1em}
}{\clearpage}


\endinput 
