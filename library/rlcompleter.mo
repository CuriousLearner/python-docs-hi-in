��          �               �   -   �   ;        W  ,   i  	   �  �   �  p  r  �   �  -   d  �   �  �   +  �     �    -   �  ;   �     �  ,   	  	   3	  �   =	  p  
  �   �  -     �   /  �   �  �   �   **Source code:** :source:`Lib/rlcompleter.py` :mod:`rlcompleter` --- Completion function for GNU readline Completer Objects Completer objects have the following method: Example:: If called for *text* that doesn't include a period character (``'.'``), it will complete from names currently defined in :mod:`__main__`, :mod:`builtins` and keywords (as defined by the :mod:`keyword` module). If called for a dotted name, it will try to evaluate anything without obvious side-effects (functions will not be evaluated, but it can generate calls to :meth:`__getattr__`) up to the last part, and find matches for the rest via the :func:`dir` function.  Any exception raised during the evaluation of the expression is caught, silenced and :const:`None` is returned. On platforms without :mod:`readline`, the :class:`Completer` class defined by this module can still be used for custom purposes. Return the *state*\ th completion for *text*. The :mod:`rlcompleter` module defines a completion function suitable for the :mod:`readline` module by completing valid Python identifiers and keywords. The :mod:`rlcompleter` module is designed for use with Python's :ref:`interactive mode <tut-interactive>`.  Unless Python is run with the :option:`-S` option, the module is automatically imported and configured (see :ref:`rlcompleter-config`). When this module is imported on a Unix platform with the :mod:`readline` module available, an instance of the :class:`Completer` class is automatically created and its :meth:`complete` method is set as the :mod:`readline` completer. Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/rlcompleter.py` :mod:`rlcompleter` --- Completion function for GNU readline Completer Objects Completer objects have the following method: Example:: If called for *text* that doesn't include a period character (``'.'``), it will complete from names currently defined in :mod:`__main__`, :mod:`builtins` and keywords (as defined by the :mod:`keyword` module). If called for a dotted name, it will try to evaluate anything without obvious side-effects (functions will not be evaluated, but it can generate calls to :meth:`__getattr__`) up to the last part, and find matches for the rest via the :func:`dir` function.  Any exception raised during the evaluation of the expression is caught, silenced and :const:`None` is returned. On platforms without :mod:`readline`, the :class:`Completer` class defined by this module can still be used for custom purposes. Return the *state*\ th completion for *text*. The :mod:`rlcompleter` module defines a completion function suitable for the :mod:`readline` module by completing valid Python identifiers and keywords. The :mod:`rlcompleter` module is designed for use with Python's :ref:`interactive mode <tut-interactive>`.  Unless Python is run with the :option:`-S` option, the module is automatically imported and configured (see :ref:`rlcompleter-config`). When this module is imported on a Unix platform with the :mod:`readline` module available, an instance of the :class:`Completer` class is automatically created and its :meth:`complete` method is set as the :mod:`readline` completer. 