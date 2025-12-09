\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dtek}[2013/04/07 Datateknologsektionen Chalmers]

\newif\ifincludeaddress
\includeaddresstrue
\DeclareOption{noincludeaddress}{\includeaddressfalse}

\ProcessOptions\relax

\LoadClass[11pt]{article}

\RequirePackage[quiet]{fontspec}
\RequirePackage{parskip}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[swedish]{babel}
\RequirePackage{lastpage}
\RequirePackage[unicode]{hyperref}
\RequirePackage[includeheadfoot, top=2.0cm, bottom=4cm]{geometry}
\RequirePackage{xparse}
\RequirePackage{etoolbox}

\RequirePackage{pdfpages}

\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\@author},
    colorlinks=true,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
  }
}

\DeclareDocumentCommand \subtitle {m} {%
  \DeclareDocumentCommand \@subtitle {}{#1}
}

\DeclareDocumentCommand \maketitle {} {%
  {\centering\bf\LARGE \@title\par}
  \ifdef{\@subtitle}{{\centering\Large \@subtitle\par}}{}
}

% Set up headers

\DeclareDocumentCommand \makehf {}{%
  \pagestyle{fancy}
  \fancyhf{}
  
  \newcommand{\headleft}{%
    \raisebox{-3mm}{\includegraphics[width=16mm]{dteklogo}}\hspace{1mm}
    \parbox[b]{10cm}{%
      \textbf{Datateknologsektionen}\\
      Chalmers studentkår\\
      \@title
    }
  }
  \newcommand{\headright}{%
    Sida \thepage\ av \pageref{LastPage}\\
    \@date
  }
  
  % Calculate header height
  \settototalheight\headheight{\headleft}
  \addtolength\headheight{1.0pt}
  
  \lhead{\headleft}
  \rhead{\headright}
  
  \renewcommand{\headrule}{
    \nointerlineskip
    \hskip 16mm\hrulefill
  }

  \renewcommand{\footrulewidth}{\headrulewidth}

  \ifincludeaddress
  
    \lfoot{%
      \flushleft Datateknologsektionen\\
      Rännvägen 8\\
      412 58 Göteborg
    }
    
    \rfoot{%
      \begin{flushright}
        \href{mailto:styret@dtek.se}{styret@dtek.se}\\
        \href{http://dtek.se}{www.dtek.se}
      \end{flushright}
    }
  \fi
}

\DeclareDocumentCommand \makeheadfoot {}{\makehf}

\DeclareDocumentCommand \makesign {m} {%
  \parbox{0.47\textwidth}{%
    \vspace{2cm}
    \rule{0.47\textwidth}{0.5pt}\\
    #1
  }
}

\endinput
