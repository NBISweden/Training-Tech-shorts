# decide on a base image
FROM ubuntu:24.04

# install dependencies
RUN apt update ; apt install -y default-jre samtools bwa wget python3 zip libgomp1 figlet

# get gatk
RUN wget https://github.com/broadinstitute/gatk/releases/download/4.6.2.0/gatk-4.6.2.0.zip ; \
    unzip gatk-4.6.2.0.zip ; \ 
    ln -s /gatk-4.6.2.0/gatk /bin/ ; \
    ln -s /bin/python3 /bin/python

