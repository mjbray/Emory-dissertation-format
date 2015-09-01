% This file is an edited version of the one described below. It has been formatted specifically to
% meet the requirement for the Emory Special Pages required in a PhD dissertation.
% ===================================================================

% Turabian Formatting for LaTeX -- Theses and Dissertations
%
% Based on the Chicago Manual of Style (16th edition) and Kate Turabian's A Manual for Writers of Research Papers, Theses, and Dissertations (8th edition)
%
% ==============================
% Copyright 2013 Omar Abdool
%
% This work may be distributed and/or modified under the conditions of the LaTeX
% Project Public License (LPPL), either version 1.3 of this license or (at your
% option) any later version.
%
% The latest version of this license is in:
%	http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX version
% 2005/12/01 or later.
%
% LPPL Maintenance Status: maintained (by Omar Abdool)
%
% This work consists of the files: turabian-formatting.sty,
% turabian-researchpaper.cls, turabian-thesis.cls, turabian-formatting-doc.tex, % and turabian-formatting-doc.pdf (in addition to this README file).
%
% ==============================
%
%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Emory-special-pages}[2015/09/01 Emory Dissertation Special Pages]



% Options for document class, some passed to book class

\DeclareOption{draft}{%
	\PassOptionsToPackage{\CurrentOption}{turabian-formatting}
	\PassOptionsToClass{\CurrentOption}{book}}

\DeclareOption{raggedright}{%
	\PassOptionsToPackage{\CurrentOption}{turabian-formatting}}

\DeclareOption{emptymargins}{%
	\PassOptionsToPackage{\CurrentOption}{turabian-formatting}}

\DeclareOption{twocolumn}{\OptionNotUsed}

\DeclareOption{notitlepage}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

\ProcessOptions\relax


\LoadClass[titlepage,oneside]{book}



\RequirePackage{geometry}


\RequirePackage{turabian-formatting}

\geometry{bindingoffset=0.5in}
\setlength{\@bindingoffsetfm}{0.5in}
	

\institution{[Institution]}

\newcommand{\faculty}[1]{\def\@faculty{#1}}
\faculty{[Faculty]}

\newcommand{\committeeA}[1]{\def\@committeeA{#1}}
\committeeA{[CommitteeA]}

\newcommand{\committeeB}[1]{\def\@committeeB{#1}}
\committeeB{[CommitteeB]}

\newcommand{\committeeC}[1]{\def\@committeeC{#1}}
\committeeC{[CommitteeC]}

\newcommand{\field}[1]{\def\@field{#1}}
\field{[Field]}

\newcommand{\mydegree}[1]{\def\@mydegree{#1}}
\mydegree{[Degree]}

\newcommand{\prevDegreeA}[2]{\def\@prevDegreeA{#1\\#2}} %edit here for the number of degrees
\prevDegreeA{[DegreeA]}



\newcommand{\department}[1]{\def\@department{#1}}
\department{[Department]}




\newcommand{\location}[1]{\def\@location{#1}}
\location{[City], [State/Province]}

\pagenumbering{gobble}

\newcommand{\makedistribution}{%
	\normalfont\normalsize
	\vspace*{1.2\baselineskip}
	\parskip=0.833\baselineskip
	\noindent\textbf{Distribution Agreement}\par
	
	\noindent In presenting this dissertation as a partial fulfillment of the requirements for an advanced degree from Emory University and its agents the non-exclusive license to archive, make accessible, and display my dissertation in whole or in part in all forms of media, now or hereafter known, including display on the world wide web. I understand that I may select some access restrictions as part of the online submission of this dissertation. I retain all ownership rights to the copyright of the dissertation. I also retain the right to use in future works (such as article or books) all or part of this dissertation. \par
		
		\noindent Signature:\par
		\noindent\underline{\hspace*{2.5in}} \hfill\underline{\hspace*{1.5in}}\par
		\noindent\@author \hfill Date
	\clearpage
	}

\newcommand{\makeapproval}{%
	\normalfont\normalsize
	\begin{center}
		\ifthenelse{\equal{\@subtitle}{}}%
			{%
				{\Large\bfseries\@title}\par%
			}%
			{%
				{\bfseries\@title :}\par
				{\bfseries\@subtitle}\par%
			}
	
		By\\
		\@author\\
		\@mydegree\\
		\@field\par
		
		\underline{\hspace*{3.5in}}\\
		\@faculty\\
		Advisor\par
		
		\underline{\hspace*{3.5in}}\\
		\@committeeA\\
		Committee Member\par
		
		\underline{\hspace*{3.5in}}\\
		\@committeeB\\
		Committee Member\par
		
		\underline{\hspace*{3.5in}}\\
		\@committeeC\\
		Committee Member\par
		
		Accepted:\par
		\underline{\hspace*{3.5in}}\\
		Lisa A. Tedesco, Ph.D.\\
		Dean of the James T. Laney School of Graduate Studies\par
		\underline{\hspace*{1.5in}}\\
		Date

	\end{center}
	\clearpage
}

\newcommand{\makeabstracttitle}{%
	\normalfont\normalsize
	\begin{center}
		\vspace*{-1.2\baselineskip}
		\parskip=0.833\baselineskip
		\vspace*{\stretch{1}}
		\ifthenelse{\equal{\@subtitle}{}}%
			{%
				{\Large\bfseries\@title}\par%
			}%
			{%
				{\bfseries\@title :}\par
				{\bfseries\@subtitle}\par%
			}
		\vspace*{\stretch{1}}
		By\par
		\@author\par
		\@prevDegreeA\par
		
		\vspace*{1\baselineskip}
		Advisor: \@faculty\par
		\vspace*{\stretch{1}}
		An abstract of\\
		A dissertation submitted to the Faculty of the James T. Laney School of Graduate Studies of Emory University in partial fulfillment of the requirements for the degree of \@mydegree   in \@field\par
		2015
		\parskip=0pt
	\end{center}
	\clearpage
}

\newcommand{\makeabstract}{%
	\normalfont\normalsize
	\begin{center}
		Abstract\\
		\ifthenelse{\equal{\@subtitle}{}}%
			{%
				{\Large\bfseries\@title}\par%
			}%
			{%
				{\bfseries\@title :}\par
				{\bfseries\@subtitle}\par%
			}
		By\\
		\@author
	\end{center}
}


\renewcommand{\maketitle}{%
	\normalfont\normalsize
	\begin{center}
		\vspace*{-1.2\baselineskip}
		\parskip=0.833\baselineskip
		\vspace*{\stretch{1}}
		\ifthenelse{\equal{\@subtitle}{}}%
			{%
				{\Large\bfseries\@title}\par%
			}%
			{%
				{\bfseries\@title :}\par
				{\bfseries\@subtitle}\par%
			}
		\vspace*{\stretch{1}}
		By\par
		\@author\par
		\@prevDegreeA\par
		
		\vspace*{1\baselineskip}
		Advisor: \@faculty\par
		\vspace*{\stretch{1}}
		A dissertation submitted to the Faculty of the James T. Laney School of Graduate Studies of Emory University in partial fulfillment of the requirement for the degree of Doctor of Philosophy in Biostatistics.\par
		2015
		\parskip=0pt
	\end{center}
	\clearpage
}

\newcommand{\makeacknowledgements}{%
	\normalfont\normalsize
	\begin{center}
	\Large\bfseries{Acknowledgments}
	\par%
	\end{center}
}


