��          �               <     =  I   P  c   �     �  0     ,   D     q  3   x  o   �  �     C   �  f   �  l   [  B   �  �     H   �     �  �  �     w  I   �  c   �     8  0   M  ,   ~     �  3   �  o   �  �   V	  C   �	  f   .
  l   �
  B     �   E  H   �        Byte Array Objects Concat bytearrays *a* and *b* and return a new bytearray with the result. Create a new bytearray object from *string* and its length, *len*.  On failure, *NULL* is returned. Direct API functions Macro version of :c:func:`PyByteArray_AsString`. Macro version of :c:func:`PyByteArray_Size`. Macros Resize the internal buffer of *bytearray* to *len*. Return a new bytearray object from any object, *o*, that implements the :ref:`buffer protocol <bufferobjects>`. Return the contents of *bytearray* as a char array after checking for a *NULL* pointer.  The returned array always has an extra null byte appended. Return the size of *bytearray* after checking for a *NULL* pointer. Return true if the object *o* is a bytearray object or an instance of a subtype of the bytearray type. Return true if the object *o* is a bytearray object, but not an instance of a subtype of the bytearray type. These macros trade safety for speed and they don't check pointers. This instance of :c:type:`PyTypeObject` represents the Python bytearray type; it is the same object as :class:`bytearray` in the Python layer. This subtype of :c:type:`PyObject` represents a Python bytearray object. Type check macros Project-Id-Version: Python 3.7
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
 Byte Array Objects Concat bytearrays *a* and *b* and return a new bytearray with the result. Create a new bytearray object from *string* and its length, *len*.  On failure, *NULL* is returned. Direct API functions Macro version of :c:func:`PyByteArray_AsString`. Macro version of :c:func:`PyByteArray_Size`. Macros Resize the internal buffer of *bytearray* to *len*. Return a new bytearray object from any object, *o*, that implements the :ref:`buffer protocol <bufferobjects>`. Return the contents of *bytearray* as a char array after checking for a *NULL* pointer.  The returned array always has an extra null byte appended. Return the size of *bytearray* after checking for a *NULL* pointer. Return true if the object *o* is a bytearray object or an instance of a subtype of the bytearray type. Return true if the object *o* is a bytearray object, but not an instance of a subtype of the bytearray type. These macros trade safety for speed and they don't check pointers. This instance of :c:type:`PyTypeObject` represents the Python bytearray type; it is the same object as :class:`bytearray` in the Python layer. This subtype of :c:type:`PyObject` represents a Python bytearray object. Type check macros 