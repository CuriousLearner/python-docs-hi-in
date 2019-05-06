��    V      �              |  %   }    �  +   �     �  4    �   9	  H   �	  <   4
  <   q
     �
  N   �
  %     ^   ;  %   �  �   �  �   �  V   .  V  �  �   �  �   �  �   �  9  t  �   �  "   :  *   ]  7   �  4   �  �   �     �  	   �  U  �    H  �   O  O   �    6  �   R  6   �  B   6  F   y     �  |   �  �   M  9   �       �     4   �  )   �       d      �"  �   '  ,   �'  �   �'  3   �(  r   )    )    �*  �   �+  F   M,  0   �,  �   �,  �   b-  �   �-  �   �.  4   g/  6   �/  6   �/  6   
0  �  A0  �   �1  G   �2  8   3  �   H3  �   �3  ,   d4  �  �4  ^   a7    �7  o   @:  W   �:  C   ;  �   L;  b   �;     G<  3   V<  �  �<  %   >    2>  +   M@     y@  4  �@  �   �A  H   zB  <   �B  <    C     =C  N   UC  %   �C  ^   �C  %   )D  �   OD  �   2E  V   �E  V  F  �   kG  �   cH  �   9I  9  J  �   =M  "   �M  *   �M  7   N  4   ON  �   �N     nO  	   wO  U  �O    �P  �   �Q  O   uR    �R  �   �S  6   �T  B   �T  F   U     OU  |   _U  �   �U  9   cV     �V  �   �V  4   2W  )   gW     �W  d  �W    [  �   �_  ,   :`  �   g`  3   ga  r   �a    b    c  �    d  F   �d  0   #e  �   Te  �   �e  �   |f  �   g  4   �g  6   +h  6   bh  6   �h  �  �h  �   |j  G   Vk  8   �k  �   �k  �   fl  ,   �l  �   m  ^   �o    Op  o   �r  W   ?s  C   �s  �   �s  b   st     �t  3   �t   **Source code:** :source:`Lib/csv.py` :class:`Writer` objects (:class:`DictWriter` instances and objects returned by the :func:`writer` function) have the following public methods.  A *row* must be an iterable of strings or numbers for :class:`Writer` objects and a dictionary mapping fieldnames to strings or numbers (by passing them through :func:`str` first) for :class:`DictWriter` objects.  Note that complex numbers are written out surrounded by parens. This may cause some problems for other programs which read CSV files (assuming they support complex numbers at all). :mod:`csv` --- CSV File Reading and Writing :pep:`305` - CSV File API A one-character string used by the writer to escape the *delimiter* if *quoting* is set to :const:`QUOTE_NONE` and the *quotechar* if *doublequote* is :const:`False`. On reading, the *escapechar* removes any special meaning from the following character. It defaults to :const:`None`, which disables escaping. A one-character string used to quote fields containing special characters, such as the *delimiter* or *quotechar*, or which contain new-line characters.  It defaults to ``'"'``. A one-character string used to separate fields.  It defaults to ``','``. A read-only description of the dialect in use by the parser. A read-only description of the dialect in use by the writer. A short usage example:: A slightly more advanced use of the reader --- catching and reporting errors:: Added support of arbitrary iterables. All other optional or keyword arguments are passed to the underlying :class:`reader` instance. An example for :class:`Sniffer` use:: Analyze the given *sample* and return a :class:`Dialect` subclass reflecting the parameters found.  If the optional *delimiters* parameter is given, it is interpreted as a string containing possible valid delimiter characters. Analyze the sample text (presumed to be in CSV format) and return :const:`True` if the first row appears to be a series of column headers. And while the module doesn't directly support parsing strings, it can easily be done:: Associate *dialect* with *name*.  *name* must be a string. The dialect can be specified either by passing a sub-class of :class:`Dialect`, or by *fmtparams* keyword arguments, or both, with keyword arguments overriding parameters of the dialect. For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. Controls how instances of *quotechar* appearing inside a field should themselves be quoted.  When :const:`True`, the character is doubled. When :const:`False`, the *escapechar* is used as a prefix to the *quotechar*.  It defaults to :const:`True`. Controls when quotes should be generated by the writer and recognised by the reader.  It can take on any of the :const:`QUOTE_\*` constants (see section :ref:`csv-contents`) and defaults to :const:`QUOTE_MINIMAL`. Create an object that operates like a regular reader but maps the information in each row to an :mod:`OrderedDict <collections.OrderedDict>` whose keys are given by the optional *fieldnames* parameter. Create an object which operates like a regular writer but maps dictionaries onto output rows.  The *fieldnames* parameter is a :mod:`sequence <collections.abc>` of keys that identify the order in which values in the dictionary passed to the :meth:`writerow` method are written to file *f*.  The optional *restval* parameter specifies the value to be written if the dictionary is missing a key in *fieldnames*.  If the dictionary passed to the :meth:`writerow` method contains a key not found in *fieldnames*, the optional *extrasaction* parameter indicates what action to take. If it is set to ``'raise'``, the default value, a :exc:`ValueError` is raised. If it is set to ``'ignore'``, extra values in the dictionary are ignored. Any other optional or keyword arguments are passed to the underlying :class:`writer` instance. Delete the dialect associated with *name* from the dialect registry.  An :exc:`Error` is raised if *name* is not a registered dialect name. Dialects and Formatting Parameters Dialects support the following attributes: DictReader objects have the following public attribute: DictWriter objects have the following public method: Each row read from the csv file is returned as a list of strings.  No automatic data type conversion is performed unless the ``QUOTE_NONNUMERIC`` format option is specified (in which case unquoted fields are transformed into floats). Examples Footnotes If ``newline=''`` is not specified, newlines embedded inside quoted fields will not be interpreted correctly, and on platforms that use ``\r\n`` linendings on write an extra ``\r`` will be added.  It should always be safe to specify ``newline=''``, since the csv module does its own (:term:`universal <universal newlines>`) newline handling. If a row has more fields than fieldnames, the remaining data is put in a list and stored with the fieldname specified by *restkey* (which defaults to ``None``).  If a non-blank row has fewer fields than fieldnames, the missing values are filled-in with ``None``. If not passed as a parameter when creating the object, this attribute is initialized upon first access or when the first record is read from the file. Instructs :class:`reader` to perform no special processing of quote characters. Instructs :class:`writer` objects to never quote fields.  When the current *delimiter* occurs in output data it is preceded by the current *escapechar* character.  If *escapechar* is not set, the writer will raise :exc:`Error` if any characters that require escaping are encountered. Instructs :class:`writer` objects to only quote those fields which contain special characters such as *delimiter*, *quotechar* or any of the characters in *lineterminator*. Instructs :class:`writer` objects to quote all fields. Instructs :class:`writer` objects to quote all non-numeric fields. Instructs the reader to convert all non-quoted fields to type *float*. Module Contents Note that unlike the :class:`DictReader` class, the *fieldnames* parameter of the :class:`DictWriter` class is not optional. On output, if *doublequote* is :const:`False` and no *escapechar* is set, :exc:`Error` is raised if a *quotechar* is found in a field. Raised by any of the functions when an error is detected. Reader Objects Reader objects (:class:`DictReader` instances and objects returned by the :func:`reader` function) have the following public methods: Reader objects have the following public attributes: Reading a file with an alternate format:: Registering a new dialect:: Return a reader object which will iterate over lines in the given *csvfile*. *csvfile* can be any object which supports the :term:`iterator` protocol and returns a string each time its :meth:`!__next__` method is called --- :term:`file objects <file object>` and list objects are both suitable.   If *csvfile* is a file object, it should be opened with ``newline=''``. [1]_  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. Return a writer object responsible for converting the user's data into delimited strings on the given file-like object.  *csvfile* can be any object with a :func:`write` method.  If *csvfile* is a file object, it should be opened with ``newline=''`` [1]_.  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. To make it as easy as possible to interface with modules which implement the DB API, the value :const:`None` is written as the empty string.  While this isn't a reversible transformation, it makes it easier to dump SQL NULL data values to CSV files without preprocessing the data returned from a ``cursor.fetch*`` call. All other non-string data are stringified with :func:`str` before being written. Return the dialect associated with *name*.  An :exc:`Error` is raised if *name* is not a registered dialect name.  This function returns an immutable :class:`Dialect`. Return the names of all registered dialects. Return the next row of the reader's iterable object as a list (if the object was returned from :func:`reader`) or a dict (if it is a :class:`DictReader` instance), parsed according to the current dialect.  Usually you should call this as ``next(reader)``. Returned rows are now of type :class:`OrderedDict`. Returns the current maximum field size allowed by the parser. If *new_limit* is given, this becomes the new limit. Since :func:`open` is used to open a CSV file for reading, the file will by default be decoded into unicode using the system default encoding (see :func:`locale.getpreferredencoding`).  To decode a file using a different encoding, use the ``encoding`` argument of open:: The *fieldnames* parameter is a :term:`sequence`.  If *fieldnames* is omitted, the values in the first row of file *f* will be used as the fieldnames.  Regardless of how the fieldnames are determined, the ordered dictionary preserves their original ordering. The :class:`Dialect` class is a container class relied on primarily for its attributes, which are used to define the parameters for a specific :class:`reader` or :class:`writer` instance. The :class:`Sniffer` class is used to deduce the format of a CSV file. The :class:`Sniffer` class provides two methods: The :class:`excel_tab` class defines the usual properties of an Excel-generated TAB-delimited file.  It is registered with the dialect name ``'excel-tab'``. The :class:`excel` class defines the usual properties of an Excel-generated CSV file.  It is registered with the dialect name ``'excel'``. The :class:`reader` is hard-coded to recognise either ``'\r'`` or ``'\n'`` as end-of-line, and ignores *lineterminator*. This behavior may change in the future. The :class:`unix_dialect` class defines the usual properties of a CSV file generated on UNIX systems, i.e. using ``'\n'`` as line terminator and quoting all fields.  It is registered with the dialect name ``'unix'``. The :mod:`csv` module defines the following classes: The :mod:`csv` module defines the following constants: The :mod:`csv` module defines the following exception: The :mod:`csv` module defines the following functions: The :mod:`csv` module implements classes to read and write tabular data in CSV format.  It allows programmers to say, "write this data in the format preferred by Excel," or "read data from this file which was generated by Excel," without knowing the precise details of the CSV format used by Excel.  Programmers can also describe the CSV formats understood by other applications or define their own special-purpose CSV formats. The :mod:`csv` module's :class:`reader` and :class:`writer` objects read and write sequences.  Programmers can also read and write data in dictionary form using the :class:`DictReader` and :class:`DictWriter` classes. The Python Enhancement Proposal which proposed this addition to Python. The corresponding simplest possible writing example is:: The number of lines read from the source iterator. This is not the same as the number of records returned, as records can span multiple lines. The same applies to writing in something other than the system default encoding: specify the encoding argument when opening the output file. The simplest example of reading a CSV file:: The so-called CSV (Comma Separated Values) format is the most common import and export format for spreadsheets and databases.  CSV format was used for many years prior to attempts to describe the format in a standardized way in :rfc:`4180`.  The lack of a well-defined standard means that subtle differences often exist in the data produced and consumed by different applications.  These differences can make it annoying to process CSV files from multiple sources. Still, while the delimiters and quoting characters vary, the overall format is similar enough that it is possible to write a single module which can efficiently manipulate such data, hiding the details of reading and writing the data from the programmer. The string used to terminate lines produced by the :class:`writer`. It defaults to ``'\r\n'``. To make it easier to specify the format of input and output records, specific formatting parameters are grouped together into dialects.  A dialect is a subclass of the :class:`Dialect` class having a set of specific methods and a single :meth:`validate` method.  When creating :class:`reader` or :class:`writer` objects, the programmer can specify a string or a subclass of the :class:`Dialect` class as the dialect parameter.  In addition to, or instead of, the *dialect* parameter, the programmer can also specify individual formatting parameters, which have the same names as the attributes defined below for the :class:`Dialect` class. When :const:`True`, whitespace immediately following the *delimiter* is ignored. The default is :const:`False`. When ``True``, raise exception :exc:`Error` on bad CSV input. The default is ``False``. Write a row with the field names (as specified in the constructor). Write all elements in *rows* (an iterable of *row* objects as described above) to the writer's file object, formatted according to the current dialect. Write the *row* parameter to the writer's file object, formatted according to the current dialect. Writer Objects Writer objects have the following public attribute: Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/csv.py` :class:`Writer` objects (:class:`DictWriter` instances and objects returned by the :func:`writer` function) have the following public methods.  A *row* must be an iterable of strings or numbers for :class:`Writer` objects and a dictionary mapping fieldnames to strings or numbers (by passing them through :func:`str` first) for :class:`DictWriter` objects.  Note that complex numbers are written out surrounded by parens. This may cause some problems for other programs which read CSV files (assuming they support complex numbers at all). :mod:`csv` --- CSV File Reading and Writing :pep:`305` - CSV File API A one-character string used by the writer to escape the *delimiter* if *quoting* is set to :const:`QUOTE_NONE` and the *quotechar* if *doublequote* is :const:`False`. On reading, the *escapechar* removes any special meaning from the following character. It defaults to :const:`None`, which disables escaping. A one-character string used to quote fields containing special characters, such as the *delimiter* or *quotechar*, or which contain new-line characters.  It defaults to ``'"'``. A one-character string used to separate fields.  It defaults to ``','``. A read-only description of the dialect in use by the parser. A read-only description of the dialect in use by the writer. A short usage example:: A slightly more advanced use of the reader --- catching and reporting errors:: Added support of arbitrary iterables. All other optional or keyword arguments are passed to the underlying :class:`reader` instance. An example for :class:`Sniffer` use:: Analyze the given *sample* and return a :class:`Dialect` subclass reflecting the parameters found.  If the optional *delimiters* parameter is given, it is interpreted as a string containing possible valid delimiter characters. Analyze the sample text (presumed to be in CSV format) and return :const:`True` if the first row appears to be a series of column headers. And while the module doesn't directly support parsing strings, it can easily be done:: Associate *dialect* with *name*.  *name* must be a string. The dialect can be specified either by passing a sub-class of :class:`Dialect`, or by *fmtparams* keyword arguments, or both, with keyword arguments overriding parameters of the dialect. For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. Controls how instances of *quotechar* appearing inside a field should themselves be quoted.  When :const:`True`, the character is doubled. When :const:`False`, the *escapechar* is used as a prefix to the *quotechar*.  It defaults to :const:`True`. Controls when quotes should be generated by the writer and recognised by the reader.  It can take on any of the :const:`QUOTE_\*` constants (see section :ref:`csv-contents`) and defaults to :const:`QUOTE_MINIMAL`. Create an object that operates like a regular reader but maps the information in each row to an :mod:`OrderedDict <collections.OrderedDict>` whose keys are given by the optional *fieldnames* parameter. Create an object which operates like a regular writer but maps dictionaries onto output rows.  The *fieldnames* parameter is a :mod:`sequence <collections.abc>` of keys that identify the order in which values in the dictionary passed to the :meth:`writerow` method are written to file *f*.  The optional *restval* parameter specifies the value to be written if the dictionary is missing a key in *fieldnames*.  If the dictionary passed to the :meth:`writerow` method contains a key not found in *fieldnames*, the optional *extrasaction* parameter indicates what action to take. If it is set to ``'raise'``, the default value, a :exc:`ValueError` is raised. If it is set to ``'ignore'``, extra values in the dictionary are ignored. Any other optional or keyword arguments are passed to the underlying :class:`writer` instance. Delete the dialect associated with *name* from the dialect registry.  An :exc:`Error` is raised if *name* is not a registered dialect name. Dialects and Formatting Parameters Dialects support the following attributes: DictReader objects have the following public attribute: DictWriter objects have the following public method: Each row read from the csv file is returned as a list of strings.  No automatic data type conversion is performed unless the ``QUOTE_NONNUMERIC`` format option is specified (in which case unquoted fields are transformed into floats). Examples Footnotes If ``newline=''`` is not specified, newlines embedded inside quoted fields will not be interpreted correctly, and on platforms that use ``\r\n`` linendings on write an extra ``\r`` will be added.  It should always be safe to specify ``newline=''``, since the csv module does its own (:term:`universal <universal newlines>`) newline handling. If a row has more fields than fieldnames, the remaining data is put in a list and stored with the fieldname specified by *restkey* (which defaults to ``None``).  If a non-blank row has fewer fields than fieldnames, the missing values are filled-in with ``None``. If not passed as a parameter when creating the object, this attribute is initialized upon first access or when the first record is read from the file. Instructs :class:`reader` to perform no special processing of quote characters. Instructs :class:`writer` objects to never quote fields.  When the current *delimiter* occurs in output data it is preceded by the current *escapechar* character.  If *escapechar* is not set, the writer will raise :exc:`Error` if any characters that require escaping are encountered. Instructs :class:`writer` objects to only quote those fields which contain special characters such as *delimiter*, *quotechar* or any of the characters in *lineterminator*. Instructs :class:`writer` objects to quote all fields. Instructs :class:`writer` objects to quote all non-numeric fields. Instructs the reader to convert all non-quoted fields to type *float*. Module Contents Note that unlike the :class:`DictReader` class, the *fieldnames* parameter of the :class:`DictWriter` class is not optional. On output, if *doublequote* is :const:`False` and no *escapechar* is set, :exc:`Error` is raised if a *quotechar* is found in a field. Raised by any of the functions when an error is detected. Reader Objects Reader objects (:class:`DictReader` instances and objects returned by the :func:`reader` function) have the following public methods: Reader objects have the following public attributes: Reading a file with an alternate format:: Registering a new dialect:: Return a reader object which will iterate over lines in the given *csvfile*. *csvfile* can be any object which supports the :term:`iterator` protocol and returns a string each time its :meth:`!__next__` method is called --- :term:`file objects <file object>` and list objects are both suitable.   If *csvfile* is a file object, it should be opened with ``newline=''``. [1]_  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. Return a writer object responsible for converting the user's data into delimited strings on the given file-like object.  *csvfile* can be any object with a :func:`write` method.  If *csvfile* is a file object, it should be opened with ``newline=''`` [1]_.  An optional *dialect* parameter can be given which is used to define a set of parameters specific to a particular CSV dialect.  It may be an instance of a subclass of the :class:`Dialect` class or one of the strings returned by the :func:`list_dialects` function.  The other optional *fmtparams* keyword arguments can be given to override individual formatting parameters in the current dialect.  For full details about the dialect and formatting parameters, see section :ref:`csv-fmt-params`. To make it as easy as possible to interface with modules which implement the DB API, the value :const:`None` is written as the empty string.  While this isn't a reversible transformation, it makes it easier to dump SQL NULL data values to CSV files without preprocessing the data returned from a ``cursor.fetch*`` call. All other non-string data are stringified with :func:`str` before being written. Return the dialect associated with *name*.  An :exc:`Error` is raised if *name* is not a registered dialect name.  This function returns an immutable :class:`Dialect`. Return the names of all registered dialects. Return the next row of the reader's iterable object as a list (if the object was returned from :func:`reader`) or a dict (if it is a :class:`DictReader` instance), parsed according to the current dialect.  Usually you should call this as ``next(reader)``. Returned rows are now of type :class:`OrderedDict`. Returns the current maximum field size allowed by the parser. If *new_limit* is given, this becomes the new limit. Since :func:`open` is used to open a CSV file for reading, the file will by default be decoded into unicode using the system default encoding (see :func:`locale.getpreferredencoding`).  To decode a file using a different encoding, use the ``encoding`` argument of open:: The *fieldnames* parameter is a :term:`sequence`.  If *fieldnames* is omitted, the values in the first row of file *f* will be used as the fieldnames.  Regardless of how the fieldnames are determined, the ordered dictionary preserves their original ordering. The :class:`Dialect` class is a container class relied on primarily for its attributes, which are used to define the parameters for a specific :class:`reader` or :class:`writer` instance. The :class:`Sniffer` class is used to deduce the format of a CSV file. The :class:`Sniffer` class provides two methods: The :class:`excel_tab` class defines the usual properties of an Excel-generated TAB-delimited file.  It is registered with the dialect name ``'excel-tab'``. The :class:`excel` class defines the usual properties of an Excel-generated CSV file.  It is registered with the dialect name ``'excel'``. The :class:`reader` is hard-coded to recognise either ``'\r'`` or ``'\n'`` as end-of-line, and ignores *lineterminator*. This behavior may change in the future. The :class:`unix_dialect` class defines the usual properties of a CSV file generated on UNIX systems, i.e. using ``'\n'`` as line terminator and quoting all fields.  It is registered with the dialect name ``'unix'``. The :mod:`csv` module defines the following classes: The :mod:`csv` module defines the following constants: The :mod:`csv` module defines the following exception: The :mod:`csv` module defines the following functions: The :mod:`csv` module implements classes to read and write tabular data in CSV format.  It allows programmers to say, "write this data in the format preferred by Excel," or "read data from this file which was generated by Excel," without knowing the precise details of the CSV format used by Excel.  Programmers can also describe the CSV formats understood by other applications or define their own special-purpose CSV formats. The :mod:`csv` module's :class:`reader` and :class:`writer` objects read and write sequences.  Programmers can also read and write data in dictionary form using the :class:`DictReader` and :class:`DictWriter` classes. The Python Enhancement Proposal which proposed this addition to Python. The corresponding simplest possible writing example is:: The number of lines read from the source iterator. This is not the same as the number of records returned, as records can span multiple lines. The same applies to writing in something other than the system default encoding: specify the encoding argument when opening the output file. The simplest example of reading a CSV file:: The so-called CSV (Comma Separated Values) format is the most common import and export format for spreadsheets and databases.  CSV format was used for many years prior to attempts to describe the format in a standardized way in :rfc:`4180`.  The lack of a well-defined standard means that subtle differences often exist in the data produced and consumed by different applications.  These differences can make it annoying to process CSV files from multiple sources. Still, while the delimiters and quoting characters vary, the overall format is similar enough that it is possible to write a single module which can efficiently manipulate such data, hiding the details of reading and writing the data from the programmer. The string used to terminate lines produced by the :class:`writer`. It defaults to ``'\r\n'``. To make it easier to specify the format of input and output records, specific formatting parameters are grouped together into dialects.  A dialect is a subclass of the :class:`Dialect` class having a set of specific methods and a single :meth:`validate` method.  When creating :class:`reader` or :class:`writer` objects, the programmer can specify a string or a subclass of the :class:`Dialect` class as the dialect parameter.  In addition to, or instead of, the *dialect* parameter, the programmer can also specify individual formatting parameters, which have the same names as the attributes defined below for the :class:`Dialect` class. When :const:`True`, whitespace immediately following the *delimiter* is ignored. The default is :const:`False`. When ``True``, raise exception :exc:`Error` on bad CSV input. The default is ``False``. Write a row with the field names (as specified in the constructor). Write all elements in *rows* (an iterable of *row* objects as described above) to the writer's file object, formatted according to the current dialect. Write the *row* parameter to the writer's file object, formatted according to the current dialect. Writer Objects Writer objects have the following public attribute: 