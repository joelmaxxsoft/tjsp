% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cjsg.R
\name{cjsg_parms}
\alias{cjsg_parms}
\title{Parâmetros de pesquisa}
\usage{
cjsg_parms(session, livre = "", data_inicial_julg = NULL,
  data_final_julg = NULL, data_inicial_reg = NULL, data_final_reg = NULL,
  secoes = "", classes = "", assuntos = "")
}
\arguments{
\item{session}{sessão da CJSG.}

\item{livre}{string com pesquisa livre por palavras-chave.}

\item{data_inicial_julg}{data inicial da decisão em formado \%Y-\%m-\%d.}

\item{data_final_julg}{data final da decisão em formado \%Y-\%m-\%d.}

\item{data_inicial_reg}{data inicial de registro em formado \%Y-\%m-\%d.}

\item{data_final_reg}{data final de registro em formado \%Y-\%m-\%d.}

\item{secoes}{vetor com as secoes que se deseja pesquisar. Obter o vetor de \code{\link{list_secoes_2inst}}.}

\item{classes}{códigos das classes.}

\item{assuntos}{códigos dos assuntos.}
}
\value{
objeto de classe \code{form}.
}
\description{
Inclui parâmetros de pesquisa da CJPG. Ainda falta adicionar comarcas, magistrados, classe e assunto na versão oficial do pacote.
}
\details{
O intervalo de datas, caso seja incluído, precisa ser de no máximo um ano.
}
\examples{
\dontrun{
library(tjsp)
s <- cjsg_session()
sec <- head(list_secoes_2inst(), 10)$cod
parms <- cjsg_parms(s, livre = 'acordam', data_inicial = '2015-01-01', data_final = '2015-05-01', secoes = sec)
parms
cjsg(s, parms, max_pag = 1, path = '.')
}
}
