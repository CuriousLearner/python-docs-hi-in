��          t               �   '   �   2   �   �  (  X  �  �   8  �   �  �  u  W  f	  W  �
  G     �  ^  '   �  2     �  ;  X  �  �   K  �   �  �  �  W  y  W  �  G   )   **Source code:** :source:`Lib/cgitb.py` :mod:`cgitb` --- Traceback manager for CGI scripts The :mod:`cgitb` module provides a special exception handler for Python scripts. (Its name is a bit misleading.  It was originally designed to display extensive traceback information in HTML for CGI scripts.  It was later generalized to also display this information in plain text.)  After this module is activated, if an uncaught exception occurs, a detailed, formatted report will be displayed.  The report includes a traceback showing excerpts of the source code for each level, as well as the values of the arguments and local variables to currently running functions, to help you debug the problem.  Optionally, you can save this information to a file instead of sending it to the browser. The optional argument *display* defaults to ``1`` and can be set to ``0`` to suppress sending the traceback to the browser. If the argument *logdir* is present, the traceback reports are written to files.  The value of *logdir* should be a directory where these files will be placed. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. If the optional argument *format* is ``"html"``, the output is formatted as HTML.  Any other value forces plain text output.  The default value is ``"html"``. The options to the :func:`enable` function control whether the report is displayed in the browser and whether the report is logged to a file for later analysis. This function causes the :mod:`cgitb` module to take over the interpreter's default handling for exceptions by setting the value of :attr:`sys.excepthook`. This function handles an exception using the default settings (that is, show a report in the browser, but don't log to a file). This can be used when you've caught an exception and want to report it using :mod:`cgitb`.  The optional *info* argument should be a 3-tuple containing an exception type, exception value, and traceback object, exactly like the tuple returned by :func:`sys.exc_info`.  If the *info* argument is not supplied, the current exception is obtained from :func:`sys.exc_info`. This function handles the exception described by *info* (a 3-tuple containing the result of :func:`sys.exc_info`), formatting its traceback as HTML and returning the result as a string. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. This function handles the exception described by *info* (a 3-tuple containing the result of :func:`sys.exc_info`), formatting its traceback as text and returning the result as a string. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. To enable this feature, simply add this to the top of your CGI script:: Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/cgitb.py` :mod:`cgitb` --- Traceback manager for CGI scripts The :mod:`cgitb` module provides a special exception handler for Python scripts. (Its name is a bit misleading.  It was originally designed to display extensive traceback information in HTML for CGI scripts.  It was later generalized to also display this information in plain text.)  After this module is activated, if an uncaught exception occurs, a detailed, formatted report will be displayed.  The report includes a traceback showing excerpts of the source code for each level, as well as the values of the arguments and local variables to currently running functions, to help you debug the problem.  Optionally, you can save this information to a file instead of sending it to the browser. The optional argument *display* defaults to ``1`` and can be set to ``0`` to suppress sending the traceback to the browser. If the argument *logdir* is present, the traceback reports are written to files.  The value of *logdir* should be a directory where these files will be placed. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. If the optional argument *format* is ``"html"``, the output is formatted as HTML.  Any other value forces plain text output.  The default value is ``"html"``. The options to the :func:`enable` function control whether the report is displayed in the browser and whether the report is logged to a file for later analysis. This function causes the :mod:`cgitb` module to take over the interpreter's default handling for exceptions by setting the value of :attr:`sys.excepthook`. This function handles an exception using the default settings (that is, show a report in the browser, but don't log to a file). This can be used when you've caught an exception and want to report it using :mod:`cgitb`.  The optional *info* argument should be a 3-tuple containing an exception type, exception value, and traceback object, exactly like the tuple returned by :func:`sys.exc_info`.  If the *info* argument is not supplied, the current exception is obtained from :func:`sys.exc_info`. This function handles the exception described by *info* (a 3-tuple containing the result of :func:`sys.exc_info`), formatting its traceback as HTML and returning the result as a string. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. This function handles the exception described by *info* (a 3-tuple containing the result of :func:`sys.exc_info`), formatting its traceback as text and returning the result as a string. The optional argument *context* is the number of lines of context to display around the current line of source code in the traceback; this defaults to ``5``. To enable this feature, simply add this to the top of your CGI script:: 