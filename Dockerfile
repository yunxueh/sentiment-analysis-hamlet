FROM jupyter/datascience-notebook

USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN pip install NLTK
RUN pip install wordcloud
RUN pip install allennlp
