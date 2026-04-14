# What is it?

This project aims to create a template for tests and list of exercises for the Federal University of Ceará (UFC). For this, a class called ** ufcdocument.cls ** was created, which has a set of environments and commands related to the document.

This document is intended for UFC professors who wish to have a UFC LaTeX template to carry out their assessments and / or exercise lists.

## Tips

If you want to insert the questions:
```tex
\begin{question}
    \item Question Description.
\end{question}
```

If you want to insert pontuation **\points{}** in the questions:
```tex
\begin{question}
    \item Question Description.\points{3.5}
\end{question}
```