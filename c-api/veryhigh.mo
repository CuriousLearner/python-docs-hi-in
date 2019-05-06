��    8      �              �  �  �  �  �  _    y   w  S  �  Z  E
  �  �  �   %    �  �   �  �   b  P    �  Y    @  3  P  <  �  b   �    $  �   3  G  �  D    y   K     �  �   �  N  �  �  �  �   m!  �   �!  �   �"  k   A#  �   �#  }   �$  o   %  r   }%  �   �%  n   �&  �   '  }   �'  �   (  t   �(  s   )  ~   �)  d    *  c   e*  l   �*  k   6+  �   �+  i   ',  �   �,  c   -  i   v-  g   �-  �  H.    �/  �   1  �  �1  �  +3  �  5  _  �6  y   8  S  8  Z  �9  �  .;  �   �<    6=  �   I?  �   �?  P  �@  �  �A    �C  3  �D  <  F  b   OG    �G  �   �H  G  LI  D  �J  y   �K     SL  �   mL  N   M  �  oN  �   �P  �   }Q  �   'R  k   �R  �   ;S  }   T  o   �T  r   U  �   ~U  n    V  �   �V  }   &W  �   �W  t   &X  s   �X  ~   Y  d   �Y  c   �Y  l   WZ  k   �Z  �   0[  i   �[  �   \  c   �\  i   ]  g   n]  �  �]    |_  �   �`   Can be set to point to a function with the prototype ``char *func(FILE *stdin, FILE *stdout, char *prompt)``, overriding the default function used to read a single line of input at the interpreter's prompt.  The function is expected to output the string *prompt* if it's not *NULL*, and then read a line of input from the provided standard input file, returning the resulting string.  For example, The :mod:`readline` module sets this hook to provide line-editing and tab-completion features. Can be set to point to a function with the prototype ``int func(void)``.  The function will be called when Python's interpreter prompt is about to become idle and wait for user input from the terminal.  The return value is ignored.  Overriding this hook can be used to integrate the interpreter's prompt with other event loops, as done in the :file:`Modules/_tkinter.c` in the Python source code. Evaluate a precompiled code object, given a particular environment for its evaluation.  This environment consists of a dictionary of global variables, a mapping object of local variables, arrays of arguments, keywords and defaults, a dictionary of default values for :ref:`keyword-only <keyword-only_parameter>` arguments and a closure tuple of cells. Evaluate an execution frame.  This is a simplified interface to :c:func:`PyEval_EvalFrameEx`, for backward compatibility. Execute Python source code from *str* in the context specified by the objects *globals* and *locals* with the compiler flags specified by *flags*.  *globals* must be a dictionary; *locals* can be any object that implements the mapping protocol.  The parameter *start* specifies the start token that should be used to parse the source code. Executes the Python source code from *command* in the :mod:`__main__` module according to the *flags* argument. If :mod:`__main__` does not already exist, it is created.  Returns ``0`` on success or ``-1`` if an exception was raised.  If there was an error, there is no way to get the exception information. For the meaning of *flags*, see below. If *fp* refers to a file associated with an interactive device (console or terminal input or Unix pseudo-terminal), return the value of :c:func:`PyRun_InteractiveLoop`, otherwise return the result of :c:func:`PyRun_SimpleFile`.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  If *filename* is *NULL*, this function uses ``"???"`` as the filename. Like :c:func:`Py_CompileStringObject`, but *filename* is a byte string decoded from the filesystem encoding (:func:`os.fsdecode`). Note also that several of these functions take :c:type:`FILE\*` parameters.  One particular issue which needs to be handled carefully is that the :c:type:`FILE` structure for different C libraries can be different and incompatible.  Under Windows (at least), it is possible for dynamically linked extensions to actually use different libraries, so care should be taken that :c:type:`FILE\*` parameters are only passed to these functions if it is certain that they were created by the same library that the Python runtime is using. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``-1``, but exit the process, as long as ``Py_InspectFlag`` is not set. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``1``, but exit the process, as long as ``Py_InspectFlag`` is not set. Parse Python source code from *str* using the start token *start* according to the *flags* argument.  The result can be used to create a code object which can be evaluated efficiently. This is useful if a code fragment must be evaluated many times. *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). Parse and compile the Python source code in *str*, returning the resulting code object.  The start token is given by *start*; this can be used to constrain the code which can be compiled and should be :const:`Py_eval_input`, :const:`Py_file_input`, or :const:`Py_single_input`.  The filename specified by *filename* is used to construct the code object and may appear in tracebacks or :exc:`SyntaxError` exception messages.  This returns *NULL* if the code cannot be parsed or compiled. Read and execute a single statement from a file associated with an interactive device according to the *flags* argument.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). Read and execute statements from a file associated with an interactive device until EOF is reached.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  Returns ``0`` at EOF or a negative number upon failure. Returns ``0`` when the input was executed successfully, ``-1`` if there was an exception, or an error code from the :file:`errcode.h` include file distributed as part of Python if there was a parse error.  (Note that :file:`errcode.h` is not included by :file:`Python.h`, so must be included specifically if needed.) Returns the result of executing the code as a Python object, or *NULL* if an exception was raised. Several of these functions accept a start symbol from the grammar as a parameter.  The available start symbols are :const:`Py_eval_input`, :const:`Py_file_input`, and :const:`Py_single_input`.  These are described following the functions which accept them as parameters. Similar to :c:func:`PyParser_SimpleParseStringFlagsFilename`, but the Python source code is read from *fp* instead of an in-memory string. Similar to :c:func:`PyRun_SimpleStringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  If *closeit* is true, the file is closed before PyRun_SimpleFileExFlags returns. Similar to :c:func:`PyRun_StringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). If *closeit* is true, the file is closed before :c:func:`PyRun_FileExFlags` returns. The C structure of the objects used to describe frame objects. The fields of this type are subject to change at any time. The Very High Level Layer The functions in this chapter will let you execute Python source code given in a file or a buffer, but they will not let you interact in a more detailed way with the interpreter. The integer *optimize* specifies the optimization level of the compiler; a value of ``-1`` selects the optimization level of the interpreter as given by :option:`-O` options.  Explicit levels are ``0`` (no optimization; ``__debug__`` is true), ``1`` (asserts are removed, ``__debug__`` is false) or ``2`` (docstrings are removed too). The main program for the standard interpreter.  This is made available for programs which embed Python.  The *argc* and *argv* parameters should be prepared exactly as those which are passed to a C program's :c:func:`main` function (converted to wchar_t according to the user's locale).  It is important to note that the argument list may be modified (but the contents of the strings pointed to by the argument list are not). The return value will be ``0`` if the interpreter exits normally (i.e., without an exception), ``1`` if the interpreter exits due to an exception, or ``2`` if the parameter list does not represent a valid Python command line. The result must be a string allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, or *NULL* if an error occurred. The result must be allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, instead of being allocated by :c:func:`PyMem_Malloc` or :c:func:`PyMem_Realloc`. The start symbol from the Python grammar for a single statement; for use with :c:func:`Py_CompileString`. This is the symbol used for the interactive interpreter loop. The start symbol from the Python grammar for isolated expressions; for use with :c:func:`Py_CompileString`. The start symbol from the Python grammar for sequences of statements as read from a file or other source; for use with :c:func:`Py_CompileString`.  This is the symbol to use when compiling arbitrarily long Python source code. This bit can be set in *flags* to cause division operator ``/`` to be interpreted as "true division" according to :pep:`238`. This function changes the flags of the current evaluation frame, and returns true on success, false on failure. This function now includes a debug assertion to help ensure that it does not silently discard an active exception. This is a simplified interface to :c:func:`PyEval_EvalCodeEx`, with just the code object, and global and local variables.  The other arguments are set to *NULL*. This is a simplified interface to :c:func:`PyParser_SimpleParseFileFlags` below, leaving *flags* set to ``0``. This is a simplified interface to :c:func:`PyParser_SimpleParseStringFlagsFilename` below, leaving  *filename* set to *NULL* and *flags* set to ``0``. This is a simplified interface to :c:func:`PyParser_SimpleParseStringFlagsFilename` below, leaving  *filename* set to *NULL*. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *closeit* argument set to ``0``. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *flags* argument set to *NULL*. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0``. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_InteractiveLoopFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_InteractiveOneFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleStringFlags` below, leaving the *PyCompilerFlags\** argument set to NULL. This is a simplified interface to :c:func:`PyRun_StringFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`Py_CompileStringExFlags` below, with *optimize* set to ``-1``. This is a simplified interface to :c:func:`Py_CompileStringFlags` below, leaving *flags* set to *NULL*. This is the main, unvarnished function of Python interpretation.  It is literally 2000 lines long.  The code object associated with the execution frame *f* is executed, interpreting bytecode and executing calls as needed. The additional *throwflag* parameter can mostly be ignored - if true, then it causes an exception to immediately be thrown; this is used for the :meth:`~generator.throw` methods of generator objects. This is the structure used to hold compiler flags.  In cases where code is only being compiled, it is passed as ``int flags``, and in cases where code is being executed, it is passed as ``PyCompilerFlags *flags``.  In this case, ``from __future__ import`` can modify *flags*. Whenever ``PyCompilerFlags *flags`` is *NULL*, :attr:`cf_flags` is treated as equal to ``0``, and any modification due to ``from __future__ import`` is discarded.  :: Project-Id-Version: Python 3.7
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
 Can be set to point to a function with the prototype ``char *func(FILE *stdin, FILE *stdout, char *prompt)``, overriding the default function used to read a single line of input at the interpreter's prompt.  The function is expected to output the string *prompt* if it's not *NULL*, and then read a line of input from the provided standard input file, returning the resulting string.  For example, The :mod:`readline` module sets this hook to provide line-editing and tab-completion features. Can be set to point to a function with the prototype ``int func(void)``.  The function will be called when Python's interpreter prompt is about to become idle and wait for user input from the terminal.  The return value is ignored.  Overriding this hook can be used to integrate the interpreter's prompt with other event loops, as done in the :file:`Modules/_tkinter.c` in the Python source code. Evaluate a precompiled code object, given a particular environment for its evaluation.  This environment consists of a dictionary of global variables, a mapping object of local variables, arrays of arguments, keywords and defaults, a dictionary of default values for :ref:`keyword-only <keyword-only_parameter>` arguments and a closure tuple of cells. Evaluate an execution frame.  This is a simplified interface to :c:func:`PyEval_EvalFrameEx`, for backward compatibility. Execute Python source code from *str* in the context specified by the objects *globals* and *locals* with the compiler flags specified by *flags*.  *globals* must be a dictionary; *locals* can be any object that implements the mapping protocol.  The parameter *start* specifies the start token that should be used to parse the source code. Executes the Python source code from *command* in the :mod:`__main__` module according to the *flags* argument. If :mod:`__main__` does not already exist, it is created.  Returns ``0`` on success or ``-1`` if an exception was raised.  If there was an error, there is no way to get the exception information. For the meaning of *flags*, see below. If *fp* refers to a file associated with an interactive device (console or terminal input or Unix pseudo-terminal), return the value of :c:func:`PyRun_InteractiveLoop`, otherwise return the result of :c:func:`PyRun_SimpleFile`.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  If *filename* is *NULL*, this function uses ``"???"`` as the filename. Like :c:func:`Py_CompileStringObject`, but *filename* is a byte string decoded from the filesystem encoding (:func:`os.fsdecode`). Note also that several of these functions take :c:type:`FILE\*` parameters.  One particular issue which needs to be handled carefully is that the :c:type:`FILE` structure for different C libraries can be different and incompatible.  Under Windows (at least), it is possible for dynamically linked extensions to actually use different libraries, so care should be taken that :c:type:`FILE\*` parameters are only passed to these functions if it is certain that they were created by the same library that the Python runtime is using. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``-1``, but exit the process, as long as ``Py_InspectFlag`` is not set. Note that if an otherwise unhandled :exc:`SystemExit` is raised, this function will not return ``1``, but exit the process, as long as ``Py_InspectFlag`` is not set. Parse Python source code from *str* using the start token *start* according to the *flags* argument.  The result can be used to create a code object which can be evaluated efficiently. This is useful if a code fragment must be evaluated many times. *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). Parse and compile the Python source code in *str*, returning the resulting code object.  The start token is given by *start*; this can be used to constrain the code which can be compiled and should be :const:`Py_eval_input`, :const:`Py_file_input`, or :const:`Py_single_input`.  The filename specified by *filename* is used to construct the code object and may appear in tracebacks or :exc:`SyntaxError` exception messages.  This returns *NULL* if the code cannot be parsed or compiled. Read and execute a single statement from a file associated with an interactive device according to the *flags* argument.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). Read and execute statements from a file associated with an interactive device until EOF is reached.  The user will be prompted using ``sys.ps1`` and ``sys.ps2``.  *filename* is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  Returns ``0`` at EOF or a negative number upon failure. Returns ``0`` when the input was executed successfully, ``-1`` if there was an exception, or an error code from the :file:`errcode.h` include file distributed as part of Python if there was a parse error.  (Note that :file:`errcode.h` is not included by :file:`Python.h`, so must be included specifically if needed.) Returns the result of executing the code as a Python object, or *NULL* if an exception was raised. Several of these functions accept a start symbol from the grammar as a parameter.  The available start symbols are :const:`Py_eval_input`, :const:`Py_file_input`, and :const:`Py_single_input`.  These are described following the functions which accept them as parameters. Similar to :c:func:`PyParser_SimpleParseStringFlagsFilename`, but the Python source code is read from *fp* instead of an in-memory string. Similar to :c:func:`PyRun_SimpleStringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`).  If *closeit* is true, the file is closed before PyRun_SimpleFileExFlags returns. Similar to :c:func:`PyRun_StringFlags`, but the Python source code is read from *fp* instead of an in-memory string. *filename* should be the name of the file, it is decoded from the filesystem encoding (:func:`sys.getfilesystemencoding`). If *closeit* is true, the file is closed before :c:func:`PyRun_FileExFlags` returns. The C structure of the objects used to describe frame objects. The fields of this type are subject to change at any time. The Very High Level Layer The functions in this chapter will let you execute Python source code given in a file or a buffer, but they will not let you interact in a more detailed way with the interpreter. The integer *optimize* specifies the optimization level of the compiler; a value of ``-1`` selects the optimization level of the interpreter as given by :option:`-O` options.  Explicit levels are ``0`` (no optimization; ``__debug__`` is true), ``1`` (asserts are removed, ``__debug__`` is false) or ``2`` (docstrings are removed too). The main program for the standard interpreter.  This is made available for programs which embed Python.  The *argc* and *argv* parameters should be prepared exactly as those which are passed to a C program's :c:func:`main` function (converted to wchar_t according to the user's locale).  It is important to note that the argument list may be modified (but the contents of the strings pointed to by the argument list are not). The return value will be ``0`` if the interpreter exits normally (i.e., without an exception), ``1`` if the interpreter exits due to an exception, or ``2`` if the parameter list does not represent a valid Python command line. The result must be a string allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, or *NULL* if an error occurred. The result must be allocated by :c:func:`PyMem_RawMalloc` or :c:func:`PyMem_RawRealloc`, instead of being allocated by :c:func:`PyMem_Malloc` or :c:func:`PyMem_Realloc`. The start symbol from the Python grammar for a single statement; for use with :c:func:`Py_CompileString`. This is the symbol used for the interactive interpreter loop. The start symbol from the Python grammar for isolated expressions; for use with :c:func:`Py_CompileString`. The start symbol from the Python grammar for sequences of statements as read from a file or other source; for use with :c:func:`Py_CompileString`.  This is the symbol to use when compiling arbitrarily long Python source code. This bit can be set in *flags* to cause division operator ``/`` to be interpreted as "true division" according to :pep:`238`. This function changes the flags of the current evaluation frame, and returns true on success, false on failure. This function now includes a debug assertion to help ensure that it does not silently discard an active exception. This is a simplified interface to :c:func:`PyEval_EvalCodeEx`, with just the code object, and global and local variables.  The other arguments are set to *NULL*. This is a simplified interface to :c:func:`PyParser_SimpleParseFileFlags` below, leaving *flags* set to ``0``. This is a simplified interface to :c:func:`PyParser_SimpleParseStringFlagsFilename` below, leaving  *filename* set to *NULL* and *flags* set to ``0``. This is a simplified interface to :c:func:`PyParser_SimpleParseStringFlagsFilename` below, leaving  *filename* set to *NULL*. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *closeit* argument set to ``0``. This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving the *flags* argument set to *NULL*. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *closeit* set to ``0``. This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_InteractiveLoopFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_InteractiveOneFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *closeit* set to ``0`` and *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`PyRun_SimpleStringFlags` below, leaving the *PyCompilerFlags\** argument set to NULL. This is a simplified interface to :c:func:`PyRun_StringFlags` below, leaving *flags* set to *NULL*. This is a simplified interface to :c:func:`Py_CompileStringExFlags` below, with *optimize* set to ``-1``. This is a simplified interface to :c:func:`Py_CompileStringFlags` below, leaving *flags* set to *NULL*. This is the main, unvarnished function of Python interpretation.  It is literally 2000 lines long.  The code object associated with the execution frame *f* is executed, interpreting bytecode and executing calls as needed. The additional *throwflag* parameter can mostly be ignored - if true, then it causes an exception to immediately be thrown; this is used for the :meth:`~generator.throw` methods of generator objects. This is the structure used to hold compiler flags.  In cases where code is only being compiled, it is passed as ``int flags``, and in cases where code is being executed, it is passed as ``PyCompilerFlags *flags``.  In this case, ``from __future__ import`` can modify *flags*. Whenever ``PyCompilerFlags *flags`` is *NULL*, :attr:`cf_flags` is treated as equal to ``0``, and any modification due to ``from __future__ import`` is discarded.  :: 