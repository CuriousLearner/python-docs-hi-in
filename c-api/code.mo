��    	      d               �      �   �   �   �   X  �   Q  ,   �  .   *  y   Y  Y   �  �  -     �  �   �  �   Z  �   S  ,   �  .   ,  y   [  Y   �   Code Objects Code objects are a low-level detail of the CPython implementation. Each one represents a chunk of executable code that hasn't yet been bound into a function. Return a new code object.  If you need a dummy code object to create a frame, use :c:func:`PyCode_NewEmpty` instead.  Calling :c:func:`PyCode_New` directly can bind you to a precise Python version since the definition of the bytecode changes often. Return a new empty code object with the specified filename, function name, and first line number.  It is illegal to :func:`exec` or :func:`eval` the resulting code object. Return the number of free variables in *co*. Return true if *co* is a :class:`code` object. The C structure of the objects used to describe code objects.  The fields of this type are subject to change at any time. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`code` type. Project-Id-Version: Python 3.7
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
 Code Objects Code objects are a low-level detail of the CPython implementation. Each one represents a chunk of executable code that hasn't yet been bound into a function. Return a new code object.  If you need a dummy code object to create a frame, use :c:func:`PyCode_NewEmpty` instead.  Calling :c:func:`PyCode_New` directly can bind you to a precise Python version since the definition of the bytecode changes often. Return a new empty code object with the specified filename, function name, and first line number.  It is illegal to :func:`exec` or :func:`eval` the resulting code object. Return the number of free variables in *co*. Return true if *co* is a :class:`code` object. The C structure of the objects used to describe code objects.  The fields of this type are subject to change at any time. This is an instance of :c:type:`PyTypeObject` representing the Python :class:`code` type. 