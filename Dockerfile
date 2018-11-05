FROM python:3
RUN pip install imageio
# install ffmpeg from imageio.
RUN python -c "import imageio; imageio.plugins.ffmpeg.download()"

FROM bethgelab/deeplearning:cuda9.0-cudnn7
RUN apt-get update
RUN pip install --upgrade pip
RUN apt-get -y install ffmpeg
RUN pip install deeplabcut
#install the dependenices, but not the full package yet... 

RUN pip install tensorflow-gpu==1.8
RUN pip install ipywidgets
RUN pip3 install ipywidgets
RUN pip3 install seaborn
