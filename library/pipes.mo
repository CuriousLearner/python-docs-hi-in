��          �               L  '   M  -   u  X   �     �  �     �   �  ,   .  	   [  �   e  1   #  �   U  ,   �           #   (  �   L  4   �  �   	  �     '   �	  -   �	  X   �	     1
  �   O
  �   �
  ,   c  	   �  �   �  1   X  �   �  ,       E     L  #   ]  �   �  4   	  �   >   **Source code:** :source:`Lib/pipes.py` :mod:`pipes` --- Interface to shell pipelines Add a new action at the beginning. See :meth:`append` for explanations of the arguments. An abstraction of a pipeline. Append a new action at the end. The *cmd* variable must be a valid bourne shell command. The *kind* variable consists of two letters. Because the module uses :program:`/bin/sh` command lines, a POSIX or compatible shell for :func:`os.system` and :func:`os.popen` is required. Copy *infile* to *outfile* through the pipe. Example:: If *flag* is true, turn debugging on. Otherwise, turn debugging off. When debugging is on, commands to be executed are printed, and the shell is given ``set -x`` command to be more verbose. Restore a pipeline template to its initial state. Return a file-like object, open to *file*, but read from or written to by the pipeline.  Note that only one of ``'r'``, ``'w'`` may be given. Return a new, equivalent, pipeline template. Similarly, the second letter can be either of ``'-'`` (which means  the command writes to standard output), ``'f'`` (which means the  command writes a file on the command line) or ``'.'`` (which means the command does not write anything, and hence must be last.) Template Objects Template objects following methods: The :mod:`pipes` module defines a class to abstract the concept of a *pipeline* --- a sequence of converters from one file to  another. The :mod:`pipes` module defines the following class: The first letter can be either of ``'-'`` (which means the command reads its standard input), ``'f'`` (which means the commands reads a given file on the command line) or ``'.'`` (which means the commands reads no input, and hence must be first.) Project-Id-Version: Python 3.7
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-05-06 23:28+0530
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: hi_IN
Language-Team: hi_IN <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 **Source code:** :source:`Lib/pipes.py` :mod:`pipes` --- Interface to shell pipelines Add a new action at the beginning. See :meth:`append` for explanations of the arguments. An abstraction of a pipeline. Append a new action at the end. The *cmd* variable must be a valid bourne shell command. The *kind* variable consists of two letters. Because the module uses :program:`/bin/sh` command lines, a POSIX or compatible shell for :func:`os.system` and :func:`os.popen` is required. Copy *infile* to *outfile* through the pipe. Example:: If *flag* is true, turn debugging on. Otherwise, turn debugging off. When debugging is on, commands to be executed are printed, and the shell is given ``set -x`` command to be more verbose. Restore a pipeline template to its initial state. Return a file-like object, open to *file*, but read from or written to by the pipeline.  Note that only one of ``'r'``, ``'w'`` may be given. Return a new, equivalent, pipeline template. Similarly, the second letter can be either of ``'-'`` (which means  the command writes to standard output), ``'f'`` (which means the  command writes a file on the command line) or ``'.'`` (which means the command does not write anything, and hence must be last.) Template Objects Template objects following methods: The :mod:`pipes` module defines a class to abstract the concept of a *pipeline* --- a sequence of converters from one file to  another. The :mod:`pipes` module defines the following class: The first letter can be either of ``'-'`` (which means the command reads its standard input), ``'f'`` (which means the commands reads a given file on the command line) or ``'.'`` (which means the commands reads no input, and hence must be first.) 