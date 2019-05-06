��    *      l              �  m   �  �   +  Y   $  �  ~  �   &  Y    �   m    T	  �   j
  �  X  Z   '  *   �  �  �  '   �  $   �  �   �     }  �   �  �  W  O     �   P    6  9   V  �   �  "  F  [   i  _   �  X   %  1   ~  �   �  �   �    �  w   �  ,      >   L   �   �   Q   H!  3   �!  �  �!  �   b#     K$  �  k$  m   �%  �   [&  Y   T'  �  �'  �   V)  Y  C*  �   �+    �,  �   �-  �  �.  Z   W0  *   �0  �  �0  '   �2  $   �2  �   3     �3  �   �3  �  �4  O  06  �   �9    f:  9   �<  �   �<  "  v=  [   �>  _   �>  X   U?  1   �?  �   �?  �   �@    �A  w   �B  ,   OC  >   |C  �   �C  Q   xD  3   �D  �  �D  �   �F     {G   **(Unix version)** A zero value is returned to indicate success. An exception is raised when the call failed. **(Unix version)** Maps *length* bytes from the file specified by the file descriptor *fileno*, and returns a mmap object.  If *length* is ``0``, the maximum length of the map will be the current size of the file when :class:`~mmap.mmap` is called. **(Windows version)** A nonzero value returned indicates success; zero indicates failure. **(Windows version)** Maps *length* bytes from the file specified by the file handle *fileno*, and creates a mmap object.  If *length* is larger than the current size of the file, the file is extended to contain *length* bytes.  If *length* is ``0``, the maximum length of the map is the current size of the file, except that if the file is empty Windows raises an exception (you cannot create an empty mapping on Windows). *access* may be specified in lieu of *flags* and *prot* as an optional keyword parameter.  It is an error to specify both *flags*, *prot* and *access*.  See the description of *access* above for information on how to use this parameter. *flags* specifies the nature of the mapping. :const:`MAP_PRIVATE` creates a private copy-on-write mapping, so changes to the contents of the mmap object will be private to this process, and :const:`MAP_SHARED` creates a mapping that's shared with all other processes mapping the same areas of the file.  The default value is :const:`MAP_SHARED`. *offset* may be specified as a non-negative integer offset. mmap references will be relative to the offset from the beginning of the file. *offset* defaults to 0.  *offset* must be a multiple of the :const:`ALLOCATIONGRANULARITY`. *offset* may be specified as a non-negative integer offset. mmap references will be relative to the offset from the beginning of the file. *offset* defaults to 0. *offset* must be a multiple of :const:`ALLOCATIONGRANULARITY` which is equal to :const:`PAGESIZE` on Unix systems. *prot*, if specified, gives the desired memory protection; the two most useful values are :const:`PROT_READ` and :const:`PROT_WRITE`, to specify that the pages may be read or written.  *prot* defaults to :const:`PROT_READ \| PROT_WRITE`. *tagname*, if specified and not ``None``, is a string giving a tag name for the mapping.  Windows allows you to have many different mappings against the same file.  If you specify the name of an existing tag, that tag is opened, otherwise a new tag of this name is created.  If this parameter is omitted or ``None``, the mapping is created without a name.  Avoiding the use of the tag parameter will assist in keeping your code portable between Unix and Windows. :class:`~mmap.mmap` can also be used as a context manager in a :keyword:`with` statement:: :mod:`mmap` --- Memory-mapped file support A memory-mapped file is created by the :class:`~mmap.mmap` constructor, which is different on Unix and on Windows.  In either case you must provide a file descriptor for a file opened for update. If you wish to map an existing Python file object, use its :meth:`fileno` method to obtain the correct value for the *fileno* parameter.  Otherwise, you can open the file using the :func:`os.open` function, which returns a file descriptor directly (the file still needs to be closed when done). Added :const:`ACCESS_DEFAULT` constant. Argument can be omitted or ``None``. Closes the mmap. Subsequent calls to other methods of the object will result in a ValueError exception being raised. This will not close the open file. Context manager support. Copy the *count* bytes starting at offset *src* to the destination index *dest*.  If the mmap was created with :const:`ACCESS_READ`, then calls to move will raise a :exc:`TypeError` exception. Flushes changes made to the in-memory copy of a file back to disk. Without use of this call there is no guarantee that changes are written back before the object is destroyed.  If *offset* and *size* are specified, only changes to the given range of bytes will be flushed to disk; otherwise, the whole extent of the mapping is flushed.  *offset* must be a multiple of the :const:`PAGESIZE` or :const:`ALLOCATIONGRANULARITY`. For both the Unix and Windows versions of the constructor, *access* may be specified as an optional keyword parameter. *access* accepts one of four values: :const:`ACCESS_READ`, :const:`ACCESS_WRITE`, or :const:`ACCESS_COPY` to specify read-only, write-through or copy-on-write memory respectively, or :const:`ACCESS_DEFAULT` to defer to *prot*.  *access* can be used on both Unix and Windows.  If *access* is not specified, Windows mmap returns a write-through mapping.  The initial memory values for all three access types are taken from the specified file.  Assignment to an :const:`ACCESS_READ` memory map raises a :exc:`TypeError` exception.  Assignment to an :const:`ACCESS_WRITE` memory map affects both memory and the underlying file. Assignment to an :const:`ACCESS_COPY` memory map affects memory but does not update the underlying file. If you want to create a memory-mapping for a writable, buffered file, you should :func:`~io.IOBase.flush` the file first.  This is necessary to ensure that local modifications to the buffers are actually available to the mapping. Memory-mapped file objects behave like both :class:`bytearray` and like :term:`file objects <file object>`.  You can use mmap objects in most places where :class:`bytearray` are expected; for example, you can use the :mod:`re` module to search through a memory-mapped file.  You can also change a single byte by doing ``obj[index] = 97``, or change a subsequence by assigning to a slice: ``obj[i1:i2] = b'...'``.  You can also read and write data starting at the current file position, and :meth:`seek` through the file to different positions. Memory-mapped file objects support the following methods: Resizes the map and the underlying file, if any. If the mmap was created with :const:`ACCESS_READ` or :const:`ACCESS_COPY`, resizing the map will raise a :exc:`TypeError` exception. Return a :class:`bytes` containing up to *n* bytes starting from the current file position. If the argument is omitted, ``None`` or negative, return all bytes from the current file position to the end of the mapping. The file position is updated to point after the bytes that were returned. Return the length of the file, which can be larger than the size of the memory-mapped area. Returns a byte at the current file position as an integer, and advances the file position by 1. Returns a single line, starting at the current file position and up to the next newline. Returns the current position of the file pointer. Returns the highest index in the object where the subsequence *sub* is found, such that *sub* is contained in the range [*start*, *end*]. Optional arguments *start* and *end* are interpreted as in slice notation. Returns ``-1`` on failure. Returns the lowest index in the object where the subsequence *sub* is found, such that *sub* is contained in the range [*start*, *end*]. Optional arguments *start* and *end* are interpreted as in slice notation. Returns ``-1`` on failure. Set the file's current position.  *whence* argument is optional and defaults to ``os.SEEK_SET`` or ``0`` (absolute file positioning); other values are ``os.SEEK_CUR`` or ``1`` (seek relative to the current position) and ``os.SEEK_END`` or ``2`` (seek relative to the file's end). The next example demonstrates how to create an anonymous map and exchange data between the parent and child processes:: The number of bytes written is now returned. This example shows a simple way of using :class:`~mmap.mmap`:: To ensure validity of the created memory mapping the file specified by the descriptor *fileno* is internally automatically synchronized with physical backing store on Mac OS X and OpenVMS. To map anonymous memory, -1 should be passed as the fileno along with the length. Writable :term:`bytes-like object` is now accepted. Write the bytes in *bytes* into memory at the current position of the file pointer and return the number of bytes written (never less than ``len(bytes)``, since if the write fails, a :exc:`ValueError` will be raised).  The file position is updated to point after the bytes that were written.  If the mmap was created with :const:`ACCESS_READ`, then writing to it will raise a :exc:`TypeError` exception. Write the integer *byte* into memory at the current position of the file pointer; the file position is advanced by ``1``. If the mmap was created with :const:`ACCESS_READ`, then writing to it will raise a :exc:`TypeError` exception. ``True`` if the file is closed. Project-Id-Version: Python 3.7
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
 **(Unix version)** A zero value is returned to indicate success. An exception is raised when the call failed. **(Unix version)** Maps *length* bytes from the file specified by the file descriptor *fileno*, and returns a mmap object.  If *length* is ``0``, the maximum length of the map will be the current size of the file when :class:`~mmap.mmap` is called. **(Windows version)** A nonzero value returned indicates success; zero indicates failure. **(Windows version)** Maps *length* bytes from the file specified by the file handle *fileno*, and creates a mmap object.  If *length* is larger than the current size of the file, the file is extended to contain *length* bytes.  If *length* is ``0``, the maximum length of the map is the current size of the file, except that if the file is empty Windows raises an exception (you cannot create an empty mapping on Windows). *access* may be specified in lieu of *flags* and *prot* as an optional keyword parameter.  It is an error to specify both *flags*, *prot* and *access*.  See the description of *access* above for information on how to use this parameter. *flags* specifies the nature of the mapping. :const:`MAP_PRIVATE` creates a private copy-on-write mapping, so changes to the contents of the mmap object will be private to this process, and :const:`MAP_SHARED` creates a mapping that's shared with all other processes mapping the same areas of the file.  The default value is :const:`MAP_SHARED`. *offset* may be specified as a non-negative integer offset. mmap references will be relative to the offset from the beginning of the file. *offset* defaults to 0.  *offset* must be a multiple of the :const:`ALLOCATIONGRANULARITY`. *offset* may be specified as a non-negative integer offset. mmap references will be relative to the offset from the beginning of the file. *offset* defaults to 0. *offset* must be a multiple of :const:`ALLOCATIONGRANULARITY` which is equal to :const:`PAGESIZE` on Unix systems. *prot*, if specified, gives the desired memory protection; the two most useful values are :const:`PROT_READ` and :const:`PROT_WRITE`, to specify that the pages may be read or written.  *prot* defaults to :const:`PROT_READ \| PROT_WRITE`. *tagname*, if specified and not ``None``, is a string giving a tag name for the mapping.  Windows allows you to have many different mappings against the same file.  If you specify the name of an existing tag, that tag is opened, otherwise a new tag of this name is created.  If this parameter is omitted or ``None``, the mapping is created without a name.  Avoiding the use of the tag parameter will assist in keeping your code portable between Unix and Windows. :class:`~mmap.mmap` can also be used as a context manager in a :keyword:`with` statement:: :mod:`mmap` --- Memory-mapped file support A memory-mapped file is created by the :class:`~mmap.mmap` constructor, which is different on Unix and on Windows.  In either case you must provide a file descriptor for a file opened for update. If you wish to map an existing Python file object, use its :meth:`fileno` method to obtain the correct value for the *fileno* parameter.  Otherwise, you can open the file using the :func:`os.open` function, which returns a file descriptor directly (the file still needs to be closed when done). Added :const:`ACCESS_DEFAULT` constant. Argument can be omitted or ``None``. Closes the mmap. Subsequent calls to other methods of the object will result in a ValueError exception being raised. This will not close the open file. Context manager support. Copy the *count* bytes starting at offset *src* to the destination index *dest*.  If the mmap was created with :const:`ACCESS_READ`, then calls to move will raise a :exc:`TypeError` exception. Flushes changes made to the in-memory copy of a file back to disk. Without use of this call there is no guarantee that changes are written back before the object is destroyed.  If *offset* and *size* are specified, only changes to the given range of bytes will be flushed to disk; otherwise, the whole extent of the mapping is flushed.  *offset* must be a multiple of the :const:`PAGESIZE` or :const:`ALLOCATIONGRANULARITY`. For both the Unix and Windows versions of the constructor, *access* may be specified as an optional keyword parameter. *access* accepts one of four values: :const:`ACCESS_READ`, :const:`ACCESS_WRITE`, or :const:`ACCESS_COPY` to specify read-only, write-through or copy-on-write memory respectively, or :const:`ACCESS_DEFAULT` to defer to *prot*.  *access* can be used on both Unix and Windows.  If *access* is not specified, Windows mmap returns a write-through mapping.  The initial memory values for all three access types are taken from the specified file.  Assignment to an :const:`ACCESS_READ` memory map raises a :exc:`TypeError` exception.  Assignment to an :const:`ACCESS_WRITE` memory map affects both memory and the underlying file. Assignment to an :const:`ACCESS_COPY` memory map affects memory but does not update the underlying file. If you want to create a memory-mapping for a writable, buffered file, you should :func:`~io.IOBase.flush` the file first.  This is necessary to ensure that local modifications to the buffers are actually available to the mapping. Memory-mapped file objects behave like both :class:`bytearray` and like :term:`file objects <file object>`.  You can use mmap objects in most places where :class:`bytearray` are expected; for example, you can use the :mod:`re` module to search through a memory-mapped file.  You can also change a single byte by doing ``obj[index] = 97``, or change a subsequence by assigning to a slice: ``obj[i1:i2] = b'...'``.  You can also read and write data starting at the current file position, and :meth:`seek` through the file to different positions. Memory-mapped file objects support the following methods: Resizes the map and the underlying file, if any. If the mmap was created with :const:`ACCESS_READ` or :const:`ACCESS_COPY`, resizing the map will raise a :exc:`TypeError` exception. Return a :class:`bytes` containing up to *n* bytes starting from the current file position. If the argument is omitted, ``None`` or negative, return all bytes from the current file position to the end of the mapping. The file position is updated to point after the bytes that were returned. Return the length of the file, which can be larger than the size of the memory-mapped area. Returns a byte at the current file position as an integer, and advances the file position by 1. Returns a single line, starting at the current file position and up to the next newline. Returns the current position of the file pointer. Returns the highest index in the object where the subsequence *sub* is found, such that *sub* is contained in the range [*start*, *end*]. Optional arguments *start* and *end* are interpreted as in slice notation. Returns ``-1`` on failure. Returns the lowest index in the object where the subsequence *sub* is found, such that *sub* is contained in the range [*start*, *end*]. Optional arguments *start* and *end* are interpreted as in slice notation. Returns ``-1`` on failure. Set the file's current position.  *whence* argument is optional and defaults to ``os.SEEK_SET`` or ``0`` (absolute file positioning); other values are ``os.SEEK_CUR`` or ``1`` (seek relative to the current position) and ``os.SEEK_END`` or ``2`` (seek relative to the file's end). The next example demonstrates how to create an anonymous map and exchange data between the parent and child processes:: The number of bytes written is now returned. This example shows a simple way of using :class:`~mmap.mmap`:: To ensure validity of the created memory mapping the file specified by the descriptor *fileno* is internally automatically synchronized with physical backing store on Mac OS X and OpenVMS. To map anonymous memory, -1 should be passed as the fileno along with the length. Writable :term:`bytes-like object` is now accepted. Write the bytes in *bytes* into memory at the current position of the file pointer and return the number of bytes written (never less than ``len(bytes)``, since if the write fails, a :exc:`ValueError` will be raised).  The file position is updated to point after the bytes that were written.  If the mmap was created with :const:`ACCESS_READ`, then writing to it will raise a :exc:`TypeError` exception. Write the integer *byte* into memory at the current position of the file pointer; the file position is advanced by ``1``. If the mmap was created with :const:`ACCESS_READ`, then writing to it will raise a :exc:`TypeError` exception. ``True`` if the file is closed. 