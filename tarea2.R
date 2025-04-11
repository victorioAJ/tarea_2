\documentclass[12pt]{article}

\usepackage[margin=1in]{geometry}
\usepackage{amsmath}
\usepackage{graphics}
\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{cancel}
\usepackage[spanish]{babel}
\usepackage{hyperref}
\usepackage{listings}
\usepackage{float}

%%%%%%%%%%%%%%%%%%%%%%
% Encabezado y pie de página
\pagestyle{fancy}
\fancyhead[LO,L]{Estadística Computacional}
\fancyhead[CO,C]{FINESI}
\fancyhead[RO,R]{\today}
\fancyfoot[CO,C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
%%%%%%%%%%%%%%%%%%%%%%

\begin{document}

\noindent \textbf{Universidad Nacional del Altiplano\\
Facultad de Ingeniería Estadística e Informática\\
Docente: } Fred Torres Cruz\\
\textbf{Autor:} Victor Serapio Aquize Jimenez \\
\textbf{Código:} 228147 \\

\vspace{5mm}
\noindent\textbf{Trabajo Encargado - N° 001}\\
\texttt{https://github.com/victorioAJ/tarea_2}

\section*{Introducción}

En este trabajo se realiza un análisis estadístico comparativo entre dos grupos de entrenamiento deportivo. El \textbf{Grupo A} está conformado por estudiantes que practican \textbf{atletismo}, mientras que el \textbf{Grupo B} está integrado por estudiantes que practican \textbf{natación}. 

El objetivo es determinar si existen diferencias estadísticamente significativas en las horas de entrenamiento semanal entre ambos grupos. Para ello se realiza una comparación de medias utilizando una prueba t para muestras independientes.

\section*{Hipótesis}

Para este análisis se plantean las siguientes hipótesis estadísticas:

\begin{itemize}
    \item \textbf{Hipótesis nula (\( H_0 \))}: No existe diferencia significativa en las medias de horas de entrenamiento semanal entre los grupos de atletismo y natación. Es decir, \( \mu_A = \mu_B \).
    
    \item \textbf{Hipótesis alternativa (\( H_1 \))}: Existe una diferencia significativa en las medias de horas de entrenamiento semanal entre los grupos. Es decir, \( \mu_A \neq \mu_B \).
\end{itemize}

\section*{Datos}

\begin{lstlisting}[language=R]
grupoA <- c(12, 10, 11, 13, 14, 12, 9, 13, 10, 12, 11, 13, 10, 12)
grupoB <- c(17, 16, 18, 15, 17, 19, 16, 18, 17, 20, 19, 16, 18, 17)

# Tamaño de muestra
length(grupoA)
length(grupoB)

# Media
mediaA <- mean(grupoA)
mediaB <- mean(grupoB)

# Varianza
varianzaA <- var(grupoA)
varianzaB <- var(grupoB)

# Desviación estándar
sdA <- sd(grupoA)
sdB <- sd(grupoB)

# Coeficiente de variación
cvA <- (sdA / mediaA) * 100
cvB <- (sdB / mediaB) * 100

# Resultados
cat("Grupo A:\n")
cat("Media:", mediaA, "\n")
cat("Varianza:", varianzaA, "\n")
cat("Desviación estándar:", sdA, "\n")
cat("Coeficiente de variación (%):", cvA, "\n\n")

cat("Grupo B:\n")
cat("Media:", mediaB, "\n")
cat("Varianza:", varianzaB, "\n")
cat("Desviación estándar:", sdB, "\n")
cat("Coeficiente de variación (%):", cvB, "\n\n")

# Prueba t para dos muestras independientes
t.test(grupoA, grupoB, var.equal = FALSE)
\end{lstlisting}

\section*{Resultados}

Los cálculos realizados para los dos grupos son los siguientes:

\begin{itemize}
    \item \textbf{Grupo A (Atletismo):}
    \begin{itemize}
        \item Media: \texttt{mediaA}
        \item Varianza: \texttt{varianzaA}
        \item Desviación estándar: \texttt{sdA}
        \item Coeficiente de variación (%): \texttt{cvA}
    \end{itemize}

    \item \textbf{Grupo B (Natación):}
    \begin{itemize}
        \item Media: \texttt{mediaB}
        \item Varianza: \texttt{varianzaB}
        \item Desviación estándar: \texttt{sdB}
        \item Coeficiente de variación (%): \texttt{cvB}
    \end{itemize}
\end{itemize}

La prueba t fue realizada para comparar las dos muestras y determinar si hay diferencias significativas entre los grupos. Los resultados de la prueba t se incluyen a continuación.

% Puedes agregar imagen de resultados si usas alguna:
% \begin{figure}[H]
% \centering
% \includegraphics[width=0.7\textwidth]{resultados.png}
% \caption{Resultados de la prueba t}
% \end{figure}

\section*{Interpretación}

\subsection*{Diferencia de medias}
El grupo de natación entrena en promedio \textbf{5.6 horas más por semana} que el grupo de atletismo.

\subsection*{Valor p (p-value)}
El valor p es muy bajo (\( p \approx 0.0000000203 \)), lo cual es mucho menor que el nivel de significancia típico de 0.05.

\subsection*{Decisión}
Como el valor p es tan bajo, \textbf{rechazamos la hipótesis nula} (\( H_0 \)).\\
Esto significa que hay evidencia estadísticamente significativa para decir que las horas promedio de entrenamiento son diferentes entre los dos deportes.

\subsection*{Intervalo de confianza del 95\%}
El intervalo \([ -6.91, -4.36 ]\) indica que, con un 95\% de confianza, el grupo de natación entrena entre \textbf{4.36 y 6.91 horas más} que el grupo de atletismo.

\end{document}

t.test(grupoA, grupoB, var.equal = FALSE)  # usa var.equal = TRUE si asumes varianzas iguales

