��          D               l   �   m   �   l  �   �     �  �  �  �   0  �   /  �   �     ]   Note that the :c:type:`PyTypeObject` for ``None`` is not directly exposed in the Python/C API.  Since ``None`` is a singleton, testing for object identity (using ``==`` in C) is sufficient. There is no :c:func:`PyNone_Check` function for the same reason. Properly handle returning :c:data:`Py_None` from within a C function (that is, increment the reference count of ``None`` and return it.) The Python ``None`` object, denoting lack of value.  This object has no methods. It needs to be treated just like any other object with respect to reference counts. The ``None`` Object Project-Id-Version: Python 3.7
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
 Note that the :c:type:`PyTypeObject` for ``None`` is not directly exposed in the Python/C API.  Since ``None`` is a singleton, testing for object identity (using ``==`` in C) is sufficient. There is no :c:func:`PyNone_Check` function for the same reason. Properly handle returning :c:data:`Py_None` from within a C function (that is, increment the reference count of ``None`` and return it.) The Python ``None`` object, denoting lack of value.  This object has no methods. It needs to be treated just like any other object with respect to reference counts. The ``None`` Object 