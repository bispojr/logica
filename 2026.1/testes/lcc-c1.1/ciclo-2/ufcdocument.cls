%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   UFC Exam Class File                                                            %%
%%   @author: Maurício Moreira Neto - 12-08-2020                                    %%
%%   This class defines the pattern used in the exam of the UFC.                    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufcdocument}[2020/12/08 UFC Exam]

\newcommand{\headlineolor}{\normalcolor}
\LoadClass[onecolumn, a4paper, twoside]{article} %% this template is based on the article tamplate. 
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\definecolor{slcolor}{HTML}{FFFFFF}

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{green}{\renewcommand{\headlinecolor}{\color{green}}}
\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\university}{Universidade Federal de Jataí (UFJ)}

\RequirePackage{graphicx}
\RequirePackage{anyfontsize}
\RequirePackage{multirow}
\RequirePackage[bottom=0.5in, top=0.5in, left=0.3in, right=0.5in]{geometry}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Creating the header of the document.
%%  This header is composed by a table with the information about the institution,
%%  course, student and others.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeheader}{

    \begin{table}
        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{tabular}{|l|p{11.7cm}|p{4cm}|}
        \hline
        \multirow{6}{*}{\includegraphics[scale=0.12]{logo-ufj.png}} & \multicolumn{2}{l|}{\textbf{\university}} \\ \cline{2-3} 
                & \textbf{Disciplina:} \course{} & \textbf{Código:} \codeCourse{}             \\ \cline{2-3} 
                & \multicolumn{2}{l|}{\textbf{Professor(a):} \prof{}}                 \\ \cline{2-3} 
                & \multicolumn{2}{l|}{\textbf{Semestre:} \semester{}}                     \\ \cline{2-3} 
                & \textbf{Discente:} \student{}                  & \textbf{Matrícula:} \registration{}          \\ \cline{2-3} 
                & \multicolumn{2}{l|}{\textbf{Curso:} \graduate{}}                        \\ \hline
        \end{tabular}
        \end{table}

        \fontsize{0.38cm}{0.5cm}\selectfont 
        \begin{center}
            \centering{\textbf{\theme{}}}
        \end{center}
}


\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setlength{\textwidth}{17.5cm}
\setlength{\textheight}{24cm}
\setcounter{secnumdepth}{0}

\newcommand{\points}[1]{
    \fontsize{0.38cm}{0.1cm}\selectfont 
    \fontfamily{lmr}
    \textbf{(#1 pontos)}
}

\RequirePackage{amssymb}
\RequirePackage{lmodern}
\RequirePackage{enumitem}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Creating the instructions of the document.
%  This instructions are based on the pattern of exams of UFC.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeinstructions}
{
    \fontsize{0.38cm}{0.2cm}\selectfont 
    \textbf{\textcolor{red}{Leia as Instruções:}} 


    \fontfamily{lmss}
    \fontsize{0.35cm}{0.2cm}\selectfont 
    \newenvironment{instlist}
    {
        \renewcommand{\labelitemi}{\color{black}$\bullet$}\bfseries
    \begin{itemize}\setlength\itemsep{0em}}
    {\end{itemize}}   
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Environment for questions
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{question}{
    \fontfamily{lmr}
    \begin{enumerate}[topsep=0pt,itemsep=5ex,partopsep=1ex,parsep=1ex]}{\end{enumerate}
}


