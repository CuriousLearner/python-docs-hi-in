��    -      �              �  &   �  C     �   X  1   	  #   ;  ~   _  1   �  ;     �   L  ;  �  m  ,  �   �  �   F	  Z   1
  1   �
  2   �
  1   �
  *   #     N  �   `  �   5     �  �   �  �   �  T   �  �   �  }   �  7   ,  a   d     �  �   �  �   Y    .    0  >   O  Q  �  T   �  ;   5  '   q  �   �  �   �  f    �   ~  �   L  �  *  &   �  C   �  �     1   �  #   �  ~     1   �  ;   �  �      ;  �   m  �!  �   Y#  �   $  Z   �$  1   K%  2   }%  1   �%  *   �%     &  �   &  �   �&     �'  �   �'  �   �(  T   G)  �   �)  }   m*  7   �*  a   #+     �+  �   �,  �   -    �-    �.  >   0  Q  M0  T   �1  ;   �1  '   02  �   X2  �   E3  f  �3  �   =5  �   6   **Source code:** :source:`Lib/gzip.py` :class:`GzipFile` also provides the following method and attribute: :class:`GzipFile` supports the :class:`io.BufferedIOBase` interface, including iteration and the :keyword:`with` statement.  Only the :meth:`truncate` method isn't implemented. :mod:`gzip` --- Support for :program:`gzip` files Accepts a :term:`path-like object`. Added support for *filename* being a file object, support for text mode, and the *encoding*, *errors* and *newline* arguments. Added support for the ``'x'`` and ``'xb'`` modes. Added support for the ``'x'``, ``'xb'`` and ``'xt'`` modes. Added support for writing arbitrary :term:`bytes-like objects <bytes-like object>`. The :meth:`~io.BufferedIOBase.read` method now accepts an argument of ``None``. All :program:`gzip` compressed streams are required to contain this timestamp field.  Some programs, such as :program:`gunzip`\ , make use of the timestamp.  The format is the same as the return value of :func:`time.time` and the :attr:`~os.stat_result.st_mtime` attribute of the object returned by :func:`os.stat`. Calling a :class:`GzipFile` object's :meth:`close` method does not close *fileobj*, since you might wish to append more material after the compressed data.  This also allows you to pass an :class:`io.BytesIO` object opened for writing as *fileobj*, and retrieve the resulting memory buffer using the :class:`io.BytesIO` object's :meth:`~io.BytesIO.getvalue` method. Compress the *data*, returning a :class:`bytes` object containing the compressed data.  *compresslevel* has the same meaning as in the :class:`GzipFile` constructor above. Constructor for the :class:`GzipFile` class, which simulates most of the methods of a :term:`file object`, with the exception of the :meth:`truncate` method.  At least one of *fileobj* and *filename* must be given a non-trivial value. Decompress the *data*, returning a :class:`bytes` object containing the uncompressed data. Example of how to GZIP compress a binary string:: Example of how to GZIP compress an existing file:: Example of how to create a compressed GZIP file:: Example of how to read a compressed file:: Examples of usage For binary mode, this function is equivalent to the :class:`GzipFile` constructor: ``GzipFile(filename, mode, compresslevel)``. In this case, the *encoding*, *errors* and *newline* arguments must not be provided. For text mode, a :class:`GzipFile` object is created, and wrapped in an :class:`io.TextIOWrapper` instance with the specified encoding, error handling behavior, and line ending(s). Module :mod:`zlib` Note that additional file formats which can be decompressed by the :program:`gzip` and :program:`gunzip` programs, such  as those produced by :program:`compress` and :program:`pack`, are not supported by this module. Note that the file is always opened in binary mode. To open a compressed file in text mode, use :func:`.open` (or wrap your :class:`GzipFile` with an :class:`io.TextIOWrapper`). Open a gzip-compressed file in binary or text mode, returning a :term:`file object`. Read *n* uncompressed bytes without advancing the file position. At most one single read on the compressed stream is done to satisfy the call.  The number of bytes returned may be more or less than requested. Support for the :keyword:`with` statement was added, along with the *mtime* constructor argument and :attr:`mtime` attribute. Support for zero-padded and unseekable files was added. The *compresslevel* argument is an integer from 0 to 9, as for the :class:`GzipFile` constructor. The *compresslevel* argument is an integer from ``0`` to ``9`` controlling the level of compression; ``1`` is fastest and produces the least compression, and ``9`` is slowest and produces the most compression. ``0`` is no compression. The default is ``9``. The *filename* argument can be an actual filename (a :class:`str` or :class:`bytes` object), or an existing file object to read from or write to. The *mode* argument can be any of ``'r'``, ``'rb'``, ``'a'``, ``'ab'``, ``'w'``, ``'wb'``, ``'x'`` or ``'xb'`` for binary mode, or ``'rt'``, ``'at'``, ``'wt'``, or ``'xt'`` for text mode. The default is ``'rb'``. The *mode* argument can be any of ``'r'``, ``'rb'``, ``'a'``, ``'ab'``, ``'w'``, ``'wb'``, ``'x'``, or ``'xb'``, depending on whether the file will be read or written.  The default is the mode of *fileobj* if discernible; otherwise, the default is ``'rb'``. The *mtime* argument is an optional numeric timestamp to be written to the last modification time field in the stream when compressing.  It should only be provided in compression mode.  If omitted or ``None``, the current time is used.  See the :attr:`mtime` attribute for more details. The :meth:`io.BufferedIOBase.read1` method is now implemented. The :mod:`gzip` module provides the :class:`GzipFile` class, as well as the :func:`.open`, :func:`compress` and :func:`decompress` convenience functions. The :class:`GzipFile` class reads and writes :program:`gzip`\ -format files, automatically compressing or decompressing the data so that it looks like an ordinary :term:`file object`. The basic data compression module needed to support the :program:`gzip` file format. The data compression is provided by the :mod:`zlib` module. The module defines the following items: The new class instance is based on *fileobj*, which can be a regular file, an :class:`io.BytesIO` object, or any other object which simulates a file.  It defaults to ``None``, in which case *filename* is opened to provide a file object. This module provides a simple interface to compress and decompress files just like the GNU programs :program:`gzip` and :program:`gunzip` would. When *fileobj* is not ``None``, the *filename* argument is only used to be included in the :program:`gzip` file header, which may include the original filename of the uncompressed file.  It defaults to the filename of *fileobj*, if discernible; otherwise, it defaults to the empty string, and in this case the original filename is not included in the header. When decompressing, the value of the last modification time field in the most recently read header may be read from this attribute, as an integer.  The initial value before reading any headers is ``None``. While calling :meth:`peek` does not change the file position of the :class:`GzipFile`, it may change the position of the underlying file object (e.g. if the :class:`GzipFile` was constructed with the *fileobj* parameter). Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/gzip.py` :class:`GzipFile` also provides the following method and attribute: :class:`GzipFile` supports the :class:`io.BufferedIOBase` interface, including iteration and the :keyword:`with` statement.  Only the :meth:`truncate` method isn't implemented. :mod:`gzip` --- Support for :program:`gzip` files Accepts a :term:`path-like object`. Added support for *filename* being a file object, support for text mode, and the *encoding*, *errors* and *newline* arguments. Added support for the ``'x'`` and ``'xb'`` modes. Added support for the ``'x'``, ``'xb'`` and ``'xt'`` modes. Added support for writing arbitrary :term:`bytes-like objects <bytes-like object>`. The :meth:`~io.BufferedIOBase.read` method now accepts an argument of ``None``. All :program:`gzip` compressed streams are required to contain this timestamp field.  Some programs, such as :program:`gunzip`\ , make use of the timestamp.  The format is the same as the return value of :func:`time.time` and the :attr:`~os.stat_result.st_mtime` attribute of the object returned by :func:`os.stat`. Calling a :class:`GzipFile` object's :meth:`close` method does not close *fileobj*, since you might wish to append more material after the compressed data.  This also allows you to pass an :class:`io.BytesIO` object opened for writing as *fileobj*, and retrieve the resulting memory buffer using the :class:`io.BytesIO` object's :meth:`~io.BytesIO.getvalue` method. Compress the *data*, returning a :class:`bytes` object containing the compressed data.  *compresslevel* has the same meaning as in the :class:`GzipFile` constructor above. Constructor for the :class:`GzipFile` class, which simulates most of the methods of a :term:`file object`, with the exception of the :meth:`truncate` method.  At least one of *fileobj* and *filename* must be given a non-trivial value. Decompress the *data*, returning a :class:`bytes` object containing the uncompressed data. Example of how to GZIP compress a binary string:: Example of how to GZIP compress an existing file:: Example of how to create a compressed GZIP file:: Example of how to read a compressed file:: Examples of usage For binary mode, this function is equivalent to the :class:`GzipFile` constructor: ``GzipFile(filename, mode, compresslevel)``. In this case, the *encoding*, *errors* and *newline* arguments must not be provided. For text mode, a :class:`GzipFile` object is created, and wrapped in an :class:`io.TextIOWrapper` instance with the specified encoding, error handling behavior, and line ending(s). Module :mod:`zlib` Note that additional file formats which can be decompressed by the :program:`gzip` and :program:`gunzip` programs, such  as those produced by :program:`compress` and :program:`pack`, are not supported by this module. Note that the file is always opened in binary mode. To open a compressed file in text mode, use :func:`.open` (or wrap your :class:`GzipFile` with an :class:`io.TextIOWrapper`). Open a gzip-compressed file in binary or text mode, returning a :term:`file object`. Read *n* uncompressed bytes without advancing the file position. At most one single read on the compressed stream is done to satisfy the call.  The number of bytes returned may be more or less than requested. Support for the :keyword:`with` statement was added, along with the *mtime* constructor argument and :attr:`mtime` attribute. Support for zero-padded and unseekable files was added. The *compresslevel* argument is an integer from 0 to 9, as for the :class:`GzipFile` constructor. The *compresslevel* argument is an integer from ``0`` to ``9`` controlling the level of compression; ``1`` is fastest and produces the least compression, and ``9`` is slowest and produces the most compression. ``0`` is no compression. The default is ``9``. The *filename* argument can be an actual filename (a :class:`str` or :class:`bytes` object), or an existing file object to read from or write to. The *mode* argument can be any of ``'r'``, ``'rb'``, ``'a'``, ``'ab'``, ``'w'``, ``'wb'``, ``'x'`` or ``'xb'`` for binary mode, or ``'rt'``, ``'at'``, ``'wt'``, or ``'xt'`` for text mode. The default is ``'rb'``. The *mode* argument can be any of ``'r'``, ``'rb'``, ``'a'``, ``'ab'``, ``'w'``, ``'wb'``, ``'x'``, or ``'xb'``, depending on whether the file will be read or written.  The default is the mode of *fileobj* if discernible; otherwise, the default is ``'rb'``. The *mtime* argument is an optional numeric timestamp to be written to the last modification time field in the stream when compressing.  It should only be provided in compression mode.  If omitted or ``None``, the current time is used.  See the :attr:`mtime` attribute for more details. The :meth:`io.BufferedIOBase.read1` method is now implemented. The :mod:`gzip` module provides the :class:`GzipFile` class, as well as the :func:`.open`, :func:`compress` and :func:`decompress` convenience functions. The :class:`GzipFile` class reads and writes :program:`gzip`\ -format files, automatically compressing or decompressing the data so that it looks like an ordinary :term:`file object`. The basic data compression module needed to support the :program:`gzip` file format. The data compression is provided by the :mod:`zlib` module. The module defines the following items: The new class instance is based on *fileobj*, which can be a regular file, an :class:`io.BytesIO` object, or any other object which simulates a file.  It defaults to ``None``, in which case *filename* is opened to provide a file object. This module provides a simple interface to compress and decompress files just like the GNU programs :program:`gzip` and :program:`gunzip` would. When *fileobj* is not ``None``, the *filename* argument is only used to be included in the :program:`gzip` file header, which may include the original filename of the uncompressed file.  It defaults to the filename of *fileobj*, if discernible; otherwise, it defaults to the empty string, and in this case the original filename is not included in the header. When decompressing, the value of the last modification time field in the most recently read header may be read from this attribute, as an integer.  The initial value before reading any headers is ``None``. While calling :meth:`peek` does not change the file position of the :class:`GzipFile`, it may change the position of the underlying file object (e.g. if the :class:`GzipFile` was constructed with the *fileobj* parameter). 