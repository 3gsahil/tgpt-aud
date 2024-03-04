# tgpt-aud
convert tgpt responses to audio feedback using piper . query based .

programs and dependencies required for the script to work:

   - tgpt ''can be installed via pip - pip3 install tgpt''
   - aplay : comes pre installed with  ''alsa-utils'' .

  -  piper <https://github.com/rhasspy/piper> : This is a program responsible for converting text to audio. It seems to be a custom program, so you need to have it installed and available in your working directory or accessible through your system's PATH. im using en_US-libritts-high.onnx language model here .


#steps#

'' cd /path/to/directory ''

'' make install ''

#launch#

"" tgpt-aud ""

#Uninstall#

''make uninstall''


