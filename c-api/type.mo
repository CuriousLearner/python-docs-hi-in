��          �               \  @   ]  N   �  �   �     �  �   �  �   �  �   A  $  �  	    '   &  �   N  �   �  n   e	  }   �	  ?   R
  >   �
  �   �
  e   �     	  �    @   �  N   �  �   (       �     �   �  �   |  $  2  	  W  '   a  �   �  �   
  n   �  }     ?   �  >   �  �     e   �     D   Clear the internal lookup cache. Return the current version tag. Creates and returns a heap type object from the *spec* passed to the function. Creates and returns a heap type object from the *spec*. In addition to that, the created heap type contains all types contained by the *bases* tuple as base types. This allows the caller to reference other heap types as base types. Finalize a type object.  This should be called on all type objects to finish their initialization.  This function is responsible for adding inherited slots from a type's base class.  Return ``0`` on success, or return ``-1`` and sets an exception on error. Generic handler for the :c:member:`~PyTypeObject.tp_alloc` slot of a type object.  Use Python's default memory allocation mechanism to allocate a new instance and initialize all its contents to *NULL*. Generic handler for the :c:member:`~PyTypeObject.tp_new` slot of a type object.  Create a new instance using the type's :c:member:`~PyTypeObject.tp_alloc` slot. Invalidate the internal lookup cache for the type and all of its subtypes.  This function must be called after any manual modification of the attributes or base classes of the type. Return the :c:member:`~PyTypeObject.tp_flags` member of *type*. This function is primarily meant for use with `Py_LIMITED_API`; the individual flag bits are guaranteed to be stable across Python releases, but access to :c:member:`~PyTypeObject.tp_flags` itself is not part of the limited API. Return the function pointer stored in the given slot. If the result is *NULL*, this indicates that either the slot is *NULL*, or that the function was called with invalid parameters. Callers will typically cast the result pointer into the appropriate function type. Return true if *a* is a subtype of *b*. Return true if the object *o* is a type object, but not a subtype of the standard type object.  Return false in all other cases. Return true if the object *o* is a type object, including instances of types derived from the standard type object.  Return false in all other cases. Return true if the type object *o* sets the feature *feature*.  Type features are denoted by single bit flags. Return true if the type object includes support for the cycle detector; this tests the type flag :const:`Py_TPFLAGS_HAVE_GC`. The C structure of the objects used to describe built-in types. The return type is now ``unsigned long`` rather than ``long``. This function only checks for actual subtypes, which means that :meth:`~class.__subclasscheck__` is not called on *b*.  Call :c:func:`PyObject_IsSubclass` to do the same check that :func:`issubclass` would do. This is the type object for type objects; it is the same object as :class:`type` in the Python layer. Type Objects Project-Id-Version: Python 3.7
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
 Clear the internal lookup cache. Return the current version tag. Creates and returns a heap type object from the *spec* passed to the function. Creates and returns a heap type object from the *spec*. In addition to that, the created heap type contains all types contained by the *bases* tuple as base types. This allows the caller to reference other heap types as base types. Finalize a type object.  This should be called on all type objects to finish their initialization.  This function is responsible for adding inherited slots from a type's base class.  Return ``0`` on success, or return ``-1`` and sets an exception on error. Generic handler for the :c:member:`~PyTypeObject.tp_alloc` slot of a type object.  Use Python's default memory allocation mechanism to allocate a new instance and initialize all its contents to *NULL*. Generic handler for the :c:member:`~PyTypeObject.tp_new` slot of a type object.  Create a new instance using the type's :c:member:`~PyTypeObject.tp_alloc` slot. Invalidate the internal lookup cache for the type and all of its subtypes.  This function must be called after any manual modification of the attributes or base classes of the type. Return the :c:member:`~PyTypeObject.tp_flags` member of *type*. This function is primarily meant for use with `Py_LIMITED_API`; the individual flag bits are guaranteed to be stable across Python releases, but access to :c:member:`~PyTypeObject.tp_flags` itself is not part of the limited API. Return the function pointer stored in the given slot. If the result is *NULL*, this indicates that either the slot is *NULL*, or that the function was called with invalid parameters. Callers will typically cast the result pointer into the appropriate function type. Return true if *a* is a subtype of *b*. Return true if the object *o* is a type object, but not a subtype of the standard type object.  Return false in all other cases. Return true if the object *o* is a type object, including instances of types derived from the standard type object.  Return false in all other cases. Return true if the type object *o* sets the feature *feature*.  Type features are denoted by single bit flags. Return true if the type object includes support for the cycle detector; this tests the type flag :const:`Py_TPFLAGS_HAVE_GC`. The C structure of the objects used to describe built-in types. The return type is now ``unsigned long`` rather than ``long``. This function only checks for actual subtypes, which means that :meth:`~class.__subclasscheck__` is not called on *b*.  Call :c:func:`PyObject_IsSubclass` to do the same check that :func:`issubclass` would do. This is the type object for type objects; it is the same object as :class:`type` in the Python layer. Type Objects 