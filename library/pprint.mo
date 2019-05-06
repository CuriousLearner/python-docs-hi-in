��                        �  (   �  <   &  %   c     �  �   �  �  +  :   �  �   �  9  �  <   �	  >   
     ^
  :   f
  *   �
     �
  _   �
  �  B  !  �  �     �   �  �  `  B   ?  +   �  �  �  �   d  �   K  W   B  �   �  �   [  �  �  (   v  <   �  %   �       �   !  �  �  :   /   �   j   9  !!  <   ["  >   �"     �"  :   �"  *   #     E#  _   [#  �  �#  !  u%  �   �&  �   Q'  �  �'  B   �+  +   �+  �  ',  �   �-  �   �.  W   �/  �   0  �   �0   **Source code:** :source:`Lib/pprint.py` :class:`PrettyPrinter` instances have the following methods: :mod:`pprint` --- Data pretty printer Added the *compact* parameter. Additionally, maximum character *width* can be suggested. If a long object cannot be split, the specified width will be exceeded:: Construct a :class:`PrettyPrinter` instance.  This constructor understands several keyword parameters.  An output stream may be set using the *stream* keyword; the only method used on the stream object is the file protocol's :meth:`write` method.  If not specified, the :class:`PrettyPrinter` adopts ``sys.stdout``.  The amount of indentation added for each recursive level is specified by *indent*; the default is one.  Other values can cause output to look a little odd, but can make nesting easier to spot.  The number of levels which may be printed is controlled by *depth*; if the data structure being printed is too deep, the next contained level is replaced by ``...``.  By default, there is no constraint on the depth of the objects being formatted.  The desired output width is constrained using the *width* parameter; the default is 80 characters.  If a structure cannot be formatted within the constrained width, a best effort will be made.  If *compact* is false (the default) each item of a long sequence will be formatted on a separate line.  If *compact* is true, as many items as will fit within the *width* will be formatted on each output line. Determine if *object* requires a recursive representation. Determine if the formatted representation of *object* is "readable," or can be used to reconstruct the value using :func:`eval`.  This always returns ``False`` for recursive objects. Determine if the formatted representation of the object is "readable," or can be used to reconstruct the value using :func:`eval`.  Note that this returns ``False`` for recursive objects.  If the *depth* parameter of the :class:`PrettyPrinter` is set and the object is deeper than allowed, this returns ``False``. Determine if the object requires a recursive representation. Dictionaries are sorted by key before the display is computed. Example In its basic form, :func:`pprint` shows the whole object:: One more support function is also defined: PrettyPrinter Objects Print the formatted representation of *object* on the configured stream, followed by a newline. Prints the formatted representation of *object* on *stream*, followed by a newline.  If *stream* is ``None``, ``sys.stdout`` is used.  This may be used in the interactive interpreter instead of the :func:`print` function for inspecting values (you can even reassign ``print = pprint.pprint`` for use within a scope).  *indent*, *width*, *depth* and *compact* will be passed to the :class:`PrettyPrinter` constructor as formatting parameters. Return a string representation of *object*, protected against recursive data structures.  If the representation of *object* exposes a recursive entry, the recursive reference will be represented as ``<Recursion on typename with id=number>``.  The representation is not otherwise formatted. Return the formatted representation of *object* as a string.  *indent*, *width*, *depth* and *compact* will be passed to the :class:`PrettyPrinter` constructor as formatting parameters. Return the formatted representation of *object*.  This takes into account the options passed to the :class:`PrettyPrinter` constructor. Returns three values: the formatted version of *object* as a string, a flag indicating whether the result is readable, and a flag indicating whether recursion was detected.  The first argument is the object to be presented.  The second is a dictionary which contains the :func:`id` of objects that are part of the current presentation context (direct and indirect containers for *object* that are affecting the presentation) as the keys; if an object needs to be presented which is already represented in *context*, the third return value should be ``True``.  Recursive calls to the :meth:`.format` method should add additional entries for containers to this dictionary.  The third argument, *maxlevels*, gives the requested limit to recursion; this will be ``0`` if there is no requested limit.  This argument should be passed unmodified to recursive calls. The fourth argument, *level*, gives the current level; recursive calls should be passed a value less than that of the current call. The :mod:`pprint` module also provides several shortcut functions: The :mod:`pprint` module defines one class: The :mod:`pprint` module provides a capability to "pretty-print" arbitrary Python data structures in a form which can be used as input to the interpreter. If the formatted structures include objects which are not fundamental Python types, the representation may not be loadable.  This may be the case if objects such as files, sockets or classes are included, as well as many other objects which are not representable as Python literals. The following methods provide the implementations for the corresponding functions of the same names.  Using these methods on an instance is slightly more efficient since new :class:`PrettyPrinter` objects don't need to be created. The formatted representation keeps objects on a single line if it can, and breaks them onto multiple lines if they don't fit within the allowed width. Construct :class:`PrettyPrinter` objects explicitly if you need to adjust the width constraint. The result can be limited to a certain *depth* (ellipsis is used for deeper contents):: This method is provided as a hook to allow subclasses to modify the way objects are converted to strings.  The default implementation uses the internals of the :func:`saferepr` implementation. To demonstrate several uses of the :func:`pprint` function and its parameters, let's fetch information about a project from `PyPI <https://pypi.org>`_:: Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/pprint.py` :class:`PrettyPrinter` instances have the following methods: :mod:`pprint` --- Data pretty printer Added the *compact* parameter. Additionally, maximum character *width* can be suggested. If a long object cannot be split, the specified width will be exceeded:: Construct a :class:`PrettyPrinter` instance.  This constructor understands several keyword parameters.  An output stream may be set using the *stream* keyword; the only method used on the stream object is the file protocol's :meth:`write` method.  If not specified, the :class:`PrettyPrinter` adopts ``sys.stdout``.  The amount of indentation added for each recursive level is specified by *indent*; the default is one.  Other values can cause output to look a little odd, but can make nesting easier to spot.  The number of levels which may be printed is controlled by *depth*; if the data structure being printed is too deep, the next contained level is replaced by ``...``.  By default, there is no constraint on the depth of the objects being formatted.  The desired output width is constrained using the *width* parameter; the default is 80 characters.  If a structure cannot be formatted within the constrained width, a best effort will be made.  If *compact* is false (the default) each item of a long sequence will be formatted on a separate line.  If *compact* is true, as many items as will fit within the *width* will be formatted on each output line. Determine if *object* requires a recursive representation. Determine if the formatted representation of *object* is "readable," or can be used to reconstruct the value using :func:`eval`.  This always returns ``False`` for recursive objects. Determine if the formatted representation of the object is "readable," or can be used to reconstruct the value using :func:`eval`.  Note that this returns ``False`` for recursive objects.  If the *depth* parameter of the :class:`PrettyPrinter` is set and the object is deeper than allowed, this returns ``False``. Determine if the object requires a recursive representation. Dictionaries are sorted by key before the display is computed. Example In its basic form, :func:`pprint` shows the whole object:: One more support function is also defined: PrettyPrinter Objects Print the formatted representation of *object* on the configured stream, followed by a newline. Prints the formatted representation of *object* on *stream*, followed by a newline.  If *stream* is ``None``, ``sys.stdout`` is used.  This may be used in the interactive interpreter instead of the :func:`print` function for inspecting values (you can even reassign ``print = pprint.pprint`` for use within a scope).  *indent*, *width*, *depth* and *compact* will be passed to the :class:`PrettyPrinter` constructor as formatting parameters. Return a string representation of *object*, protected against recursive data structures.  If the representation of *object* exposes a recursive entry, the recursive reference will be represented as ``<Recursion on typename with id=number>``.  The representation is not otherwise formatted. Return the formatted representation of *object* as a string.  *indent*, *width*, *depth* and *compact* will be passed to the :class:`PrettyPrinter` constructor as formatting parameters. Return the formatted representation of *object*.  This takes into account the options passed to the :class:`PrettyPrinter` constructor. Returns three values: the formatted version of *object* as a string, a flag indicating whether the result is readable, and a flag indicating whether recursion was detected.  The first argument is the object to be presented.  The second is a dictionary which contains the :func:`id` of objects that are part of the current presentation context (direct and indirect containers for *object* that are affecting the presentation) as the keys; if an object needs to be presented which is already represented in *context*, the third return value should be ``True``.  Recursive calls to the :meth:`.format` method should add additional entries for containers to this dictionary.  The third argument, *maxlevels*, gives the requested limit to recursion; this will be ``0`` if there is no requested limit.  This argument should be passed unmodified to recursive calls. The fourth argument, *level*, gives the current level; recursive calls should be passed a value less than that of the current call. The :mod:`pprint` module also provides several shortcut functions: The :mod:`pprint` module defines one class: The :mod:`pprint` module provides a capability to "pretty-print" arbitrary Python data structures in a form which can be used as input to the interpreter. If the formatted structures include objects which are not fundamental Python types, the representation may not be loadable.  This may be the case if objects such as files, sockets or classes are included, as well as many other objects which are not representable as Python literals. The following methods provide the implementations for the corresponding functions of the same names.  Using these methods on an instance is slightly more efficient since new :class:`PrettyPrinter` objects don't need to be created. The formatted representation keeps objects on a single line if it can, and breaks them onto multiple lines if they don't fit within the allowed width. Construct :class:`PrettyPrinter` objects explicitly if you need to adjust the width constraint. The result can be limited to a certain *depth* (ellipsis is used for deeper contents):: This method is provided as a hook to allow subclasses to modify the way objects are converted to strings.  The default implementation uses the internals of the :func:`saferepr` implementation. To demonstrate several uses of the :func:`pprint` function and its parameters, let's fetch information about a project from `PyPI <https://pypi.org>`_:: 