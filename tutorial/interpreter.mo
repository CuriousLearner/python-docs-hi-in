��          �               �  V  �  B   4     w  �  �  �   r  	   �  u   �  5   s     �     �  �   �    �  �   �  �   q	     F
  #   [
  �   
    m  ;  �  �   �    Y     `  �   }  �  1  <  �      G      �  h  V  �  B   A     �  �  �  �     	      u   
  5   �     �     �  �   �    �  �   �  �   ~      S!  #   h!  �   �!    z"  ;  �#  �   �%    f&     m'  �   �'  �  >(  <  �)    %-  G   -.   A second way of starting the interpreter is ``python -c command [arg] ...``, which executes the statement(s) in *command*, analogous to the shell's :option:`-c` option.  Since Python statements often contain spaces or other characters that are special to the shell, it is usually advised to quote *command* in its entirety with single quotes. All command line options are described in :ref:`using-on-general`. Argument Passing By default, Python source files are treated as encoded in UTF-8.  In that encoding, characters of most languages in the world can be used simultaneously in string literals, identifiers and comments --- although the standard library only uses ASCII characters for identifiers, a convention that any portable code should follow.  To display all these characters properly, your editor must recognize that the file is UTF-8, and it must use a font that supports all the characters in the file. Continuation lines are needed when entering a multi-line construct. As an example, take a look at this :keyword:`if` statement:: Footnotes For example, to declare that Windows-1252 encoding is to be used, the first line of your source code file should be:: For more on interactive mode, see :ref:`tut-interac`. Interactive Mode Invoking the Interpreter On Unix, the Python 3.x interpreter is by default not installed with the executable named ``python``, so that it does not conflict with a simultaneously installed Python 2.x executable. On Windows machines, the Python installation is usually placed in :file:`C:\\Python37`, though you can change this when you're running the installer.  To add this directory to your path,  you can type the following command into the command prompt in a DOS box:: One exception to the *first line* rule is when the source code starts with a :ref:`UNIX "shebang" line <tut-scripts>`.  In this case, the encoding declaration should be added as the second line of the file.  For example:: Some Python modules are also useful as scripts.  These can be invoked using ``python -m module [arg] ...``, which executes the source file for *module* as if you had spelled out its full name on the command line. Source Code Encoding The Interpreter and Its Environment The Python interpreter is usually installed as :file:`/usr/local/bin/python3.7` on those machines where it is available; putting :file:`/usr/local/bin` in your Unix shell's search path makes it possible to start it by typing the command: The interpreter operates somewhat like the Unix shell: when called with standard input connected to a tty device, it reads and executes commands interactively; when called with a file name argument or with a file as standard input, it reads and executes a *script* from that file. The interpreter's line-editing features include interactive editing, history substitution and code completion on systems that support readline.  Perhaps the quickest check to see whether command line editing is supported is typing :kbd:`Control-P` to the first Python prompt you get.  If it beeps, you have command line editing; see Appendix :ref:`tut-interacting` for an introduction to the keys.  If nothing appears to happen, or if ``^P`` is echoed, command line editing isn't available; you'll only be able to use backspace to remove characters from the current line. To declare an encoding other than the default one, a special comment line should be added as the *first* line of the file.  The syntax is as follows:: Typing an end-of-file character (:kbd:`Control-D` on Unix, :kbd:`Control-Z` on Windows) at the primary prompt causes the interpreter to exit with a zero exit status.  If that doesn't work, you can exit the interpreter by typing the following command: ``quit()``. Using the Python Interpreter When a script file is used, it is sometimes useful to be able to run the script and enter interactive mode afterwards.  This can be done by passing :option:`-i` before the script. When commands are read from a tty, the interpreter is said to be in *interactive mode*.  In this mode it prompts for the next command with the *primary prompt*, usually three greater-than signs (``>>>``); for continuation lines it prompts with the *secondary prompt*, by default three dots (``...``). The interpreter prints a welcome message stating its version number and a copyright notice before printing the first prompt: When known to the interpreter, the script name and additional arguments thereafter are turned into a list of strings and assigned to the ``argv`` variable in the ``sys`` module.  You can access this list by executing ``import sys``.  The length of the list is at least one; when no script and no arguments are given, ``sys.argv[0]`` is an empty string.  When the script name is given as ``'-'`` (meaning  standard input), ``sys.argv[0]`` is set to ``'-'``.  When :option:`-c` *command* is used, ``sys.argv[0]`` is set to ``'-c'``.  When :option:`-m` *module* is used, ``sys.argv[0]``  is set to the full name of the located module.  Options found after  :option:`-c` *command* or :option:`-m` *module* are not consumed  by the Python interpreter's option processing but left in ``sys.argv`` for  the command or module to handle. to the shell. [#]_ Since the choice of the directory where the interpreter lives is an installation option, other places are possible; check with your local Python guru or system administrator.  (E.g., :file:`/usr/local/python` is a popular alternative location.) where *encoding* is one of the valid :mod:`codecs` supported by Python. Project-Id-Version: Python 3.7
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
 A second way of starting the interpreter is ``python -c command [arg] ...``, which executes the statement(s) in *command*, analogous to the shell's :option:`-c` option.  Since Python statements often contain spaces or other characters that are special to the shell, it is usually advised to quote *command* in its entirety with single quotes. All command line options are described in :ref:`using-on-general`. Argument Passing By default, Python source files are treated as encoded in UTF-8.  In that encoding, characters of most languages in the world can be used simultaneously in string literals, identifiers and comments --- although the standard library only uses ASCII characters for identifiers, a convention that any portable code should follow.  To display all these characters properly, your editor must recognize that the file is UTF-8, and it must use a font that supports all the characters in the file. Continuation lines are needed when entering a multi-line construct. As an example, take a look at this :keyword:`if` statement:: Footnotes For example, to declare that Windows-1252 encoding is to be used, the first line of your source code file should be:: For more on interactive mode, see :ref:`tut-interac`. Interactive Mode Invoking the Interpreter On Unix, the Python 3.x interpreter is by default not installed with the executable named ``python``, so that it does not conflict with a simultaneously installed Python 2.x executable. On Windows machines, the Python installation is usually placed in :file:`C:\\Python37`, though you can change this when you're running the installer.  To add this directory to your path,  you can type the following command into the command prompt in a DOS box:: One exception to the *first line* rule is when the source code starts with a :ref:`UNIX "shebang" line <tut-scripts>`.  In this case, the encoding declaration should be added as the second line of the file.  For example:: Some Python modules are also useful as scripts.  These can be invoked using ``python -m module [arg] ...``, which executes the source file for *module* as if you had spelled out its full name on the command line. Source Code Encoding The Interpreter and Its Environment The Python interpreter is usually installed as :file:`/usr/local/bin/python3.7` on those machines where it is available; putting :file:`/usr/local/bin` in your Unix shell's search path makes it possible to start it by typing the command: The interpreter operates somewhat like the Unix shell: when called with standard input connected to a tty device, it reads and executes commands interactively; when called with a file name argument or with a file as standard input, it reads and executes a *script* from that file. The interpreter's line-editing features include interactive editing, history substitution and code completion on systems that support readline.  Perhaps the quickest check to see whether command line editing is supported is typing :kbd:`Control-P` to the first Python prompt you get.  If it beeps, you have command line editing; see Appendix :ref:`tut-interacting` for an introduction to the keys.  If nothing appears to happen, or if ``^P`` is echoed, command line editing isn't available; you'll only be able to use backspace to remove characters from the current line. To declare an encoding other than the default one, a special comment line should be added as the *first* line of the file.  The syntax is as follows:: Typing an end-of-file character (:kbd:`Control-D` on Unix, :kbd:`Control-Z` on Windows) at the primary prompt causes the interpreter to exit with a zero exit status.  If that doesn't work, you can exit the interpreter by typing the following command: ``quit()``. Using the Python Interpreter When a script file is used, it is sometimes useful to be able to run the script and enter interactive mode afterwards.  This can be done by passing :option:`-i` before the script. When commands are read from a tty, the interpreter is said to be in *interactive mode*.  In this mode it prompts for the next command with the *primary prompt*, usually three greater-than signs (``>>>``); for continuation lines it prompts with the *secondary prompt*, by default three dots (``...``). The interpreter prints a welcome message stating its version number and a copyright notice before printing the first prompt: When known to the interpreter, the script name and additional arguments thereafter are turned into a list of strings and assigned to the ``argv`` variable in the ``sys`` module.  You can access this list by executing ``import sys``.  The length of the list is at least one; when no script and no arguments are given, ``sys.argv[0]`` is an empty string.  When the script name is given as ``'-'`` (meaning  standard input), ``sys.argv[0]`` is set to ``'-'``.  When :option:`-c` *command* is used, ``sys.argv[0]`` is set to ``'-c'``.  When :option:`-m` *module* is used, ``sys.argv[0]``  is set to the full name of the located module.  Options found after  :option:`-c` *command* or :option:`-m` *module* are not consumed  by the Python interpreter's option processing but left in ``sys.argv`` for  the command or module to handle. to the shell. [#]_ Since the choice of the directory where the interpreter lives is an installation option, other places are possible; check with your local Python guru or system administrator.  (E.g., :file:`/usr/local/python` is a popular alternative location.) where *encoding* is one of the valid :mod:`codecs` supported by Python. 