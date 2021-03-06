��    	      d               �      �   �   �   T   �  S     d   f  4   �  �      �   �  �       �  �   �  T   �  S     d   X  4   �  �   �  �   �   Boolean Objects Booleans in Python are implemented as a subclass of integers.  There are only two booleans, :const:`Py_False` and :const:`Py_True`.  As such, the normal creation and deletion functions don't apply to booleans.  The following macros are available, however. Return :const:`Py_False` from a function, properly incrementing its reference count. Return :const:`Py_True` from a function, properly incrementing its reference count. Return a new reference to :const:`Py_True` or :const:`Py_False` depending on the truth value of *v*. Return true if *o* is of type :c:data:`PyBool_Type`. The Python ``False`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. The Python ``True`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. Project-Id-Version: Python 3.7
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
 Boolean Objects Booleans in Python are implemented as a subclass of integers.  There are only two booleans, :const:`Py_False` and :const:`Py_True`.  As such, the normal creation and deletion functions don't apply to booleans.  The following macros are available, however. Return :const:`Py_False` from a function, properly incrementing its reference count. Return :const:`Py_True` from a function, properly incrementing its reference count. Return a new reference to :const:`Py_True` or :const:`Py_False` depending on the truth value of *v*. Return true if *o* is of type :c:data:`PyBool_Type`. The Python ``False`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. The Python ``True`` object.  This object has no methods.  It needs to be treated just like any other object with respect to reference counts. 