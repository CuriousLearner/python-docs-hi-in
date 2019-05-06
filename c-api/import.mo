��    -      �              �  �  �  �  �  /   I  \   y  6   �  �    �   �	  �   =
  i   �
     [  8   m  �   �  �   r  �   b  S  �  3   B  �   v  �  
  �   �  �   �  �   @  �     #  �  $     `   ,  8   �  r   �  {   9  z   �  �  0  :   �  �     �   �  #  �  +   �  *  �  G   $  �   l  �   Y  P  �    9!  �   M$  ;  8%  j   t&  �  �&  �  a(  �  0*  /   �+  \   �+  6   J,  �  �,  �   )/  �   �/  i   e0     �0  8   �0  �   1  �   �1  �   �2  S  b3  3   �4  �   �4  �  ~5  �   n7  �   28  �   �8  �   �9  #  W:  $   {;  `   �;  8   <  r   :<  {   �<  z   )=  �  �=  :   V?  �   �?  �   (@  #  A  +   AB  *  mB  G   �C  �   �C  �   �D  P  \E    �F  �   �I  ;  �J  j   �K   Add a collection of modules to the table of built-in modules.  The *newtab* array must end with a sentinel entry which contains *NULL* for the :attr:`name` field; failure to provide the sentinel value can result in a memory fault. Returns ``0`` on success or ``-1`` if insufficient memory could be allocated to extend the internal table.  In the event of failure, no modules are added to the internal table.  This should be called before :c:func:`Py_Initialize`. Add a single module to the existing table of built-in modules.  This is a convenience wrapper around :c:func:`PyImport_ExtendInittab`, returning ``-1`` if the table could not be extended.  The new module can be imported by the name *name*, and uses the function *initfunc* as the initialization function called on the first attempted import.  This should be called before :c:func:`Py_Initialize`. Empty the module table.  For internal use only. Failing imports remove incomplete module objects, like with :c:func:`PyImport_ImportModule`. Finalize the import mechanism.  For internal use only. Given a module name (possibly of the form ``package.module``) and a code object read from a Python bytecode file or obtained from the built-in function :func:`compile`, load the module.  Return a new reference to the module object, or *NULL* with an exception set if an error occurred.  *name* is removed from :attr:`sys.modules` in error cases, even if *name* was already in :attr:`sys.modules` on entry to :c:func:`PyImport_ExecCodeModule`.  Leaving incompletely initialized modules in :attr:`sys.modules` is dangerous, as imports of such modules have no way to know that the module object is an unknown (and probably damaged with respect to the module author's intents) state. If *name* points to a dotted name of the form ``package.module``, any package structures not already created will still not be created. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`, as the standard :func:`__import__` function calls this function directly. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`. Importing Modules Initialize the import mechanism.  For internal use only. Like :c:func:`PyImport_ExecCodeModuleEx`, but the :attr:`__cached__` attribute of the module object is set to *cpathname* if it is non-``NULL``.  Of the three functions, this is the preferred one to use. Like :c:func:`PyImport_ExecCodeModuleObject`, but *name*, *pathname* and *cpathname* are UTF-8 encoded strings. Attempts are also made to figure out what the value for *pathname* should be from *cpathname* if the former is set to ``NULL``. Like :c:func:`PyImport_ExecCodeModule`, but the :attr:`__file__` attribute of the module object is set to *pathname* if it is non-``NULL``. Load a frozen module named *name*.  Return ``1`` for success, ``0`` if the module is not found, and ``-1`` with an exception set if the initialization failed.  To access the imported module on a successful load, use :c:func:`PyImport_ImportModule`.  (Note the misnomer --- this function would reload the module if it was already imported.) Negative values for *level* are no longer accepted. Reload a module.  Return a new reference to the reloaded module, or *NULL* with an exception set on failure (the module still exists in this case). Return a finder object for a :data:`sys.path`/:attr:`pkg.__path__` item *path*, possibly by fetching it from the :data:`sys.path_importer_cache` dict.  If it wasn't yet cached, traverse :data:`sys.path_hooks` until a hook is found that can handle the path item.  Return ``None`` if no hook could; this tells our caller that the :term:`path based finder` could not find a finder for this path item. Cache the result in :data:`sys.path_importer_cache`. Return a new reference to the finder object. Return the already imported module with the given name.  If the module has not been imported yet then returns NULL but does not set an error.  Returns NULL and sets an error if the lookup failed. Return the dictionary used for the module administration (a.k.a. ``sys.modules``).  Note that this is a per-interpreter variable. Return the magic number for Python bytecode files (a.k.a. :file:`.pyc` file). The magic number should be present in the first four bytes of the bytecode file, in little-endian byte order. Returns ``-1`` on error. Return the magic tag string for :pep:`3147` format Python bytecode file names.  Keep in mind that the value at ``sys.implementation.cache_tag`` is authoritative and should be used instead of this function. Return the module object corresponding to a module name.  The *name* argument may be of the form ``package.module``. First check the modules dictionary if there's one there, and if not, create a new one and insert it in the modules dictionary. Return *NULL* with an exception set on failure. Return value of ``-1`` upon failure. See also :c:func:`PyImport_ExecCodeModuleEx` and :c:func:`PyImport_ExecCodeModuleWithPathnames`. See also :c:func:`PyImport_ExecCodeModuleWithPathnames`. Similar to :c:func:`PyImport_AddModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportFrozenModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportModuleLevelObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Structure describing a single entry in the list of built-in modules.  Each of these structures gives the name and initialization function for a module built into the interpreter.  The name is an ASCII encoded string.  Programs which embed Python may use an array of these structures in conjunction with :c:func:`PyImport_ExtendInittab` to provide additional built-in modules. The structure is defined in :file:`Include/import.h` as:: The ``__file__`` attribute is no longer set on the module. The module's :attr:`__file__` attribute will be set to the code object's :c:member:`co_filename`.  If applicable, :attr:`__cached__` will also be set. The module's :attr:`__spec__` and :attr:`__loader__` will be set, if not set already, with the appropriate values.  The spec's loader will be set to the module's ``__loader__`` (if set) and to an instance of :class:`SourceFileLoader` otherwise. The return value is a new reference to the imported module or top-level package, or *NULL* with an exception set on failure.  Like for :func:`__import__`, the return value when a submodule of a package was requested is normally the top-level package, unless a non-empty *fromlist* was given. This function always uses absolute imports. This function does not load or import the module; if the module wasn't already loaded, you will get an empty module object. Use :c:func:`PyImport_ImportModule` or one of its variants to import a module.  Package structures implied by a dotted name for *name* are not created if not already present. This function is a deprecated alias of :c:func:`PyImport_ImportModule`. This function used to fail immediately when the import lock was held by another thread.  In Python 3.3 though, the locking scheme switched to per-module locks for most purposes, so this function's special behaviour isn't needed anymore. This function will reload the module if it was already imported.  See :c:func:`PyImport_ReloadModule` for the intended way to reload a module. This is a higher-level interface that calls the current "import hook function" (with an explicit *level* of 0, meaning absolute import).  It invokes the :func:`__import__` function from the ``__builtins__`` of the current globals.  This means that the import is done using whatever import hooks are installed in the current environment. This is a simplified interface to :c:func:`PyImport_ImportModuleEx` below, leaving the *globals* and *locals* arguments set to *NULL* and *level* set to 0.  When the *name* argument contains a dot (when it specifies a submodule of a package), the *fromlist* argument is set to the list ``['*']`` so that the return value is the named module rather than the top-level package containing it as would otherwise be the case.  (Unfortunately, this has an additional side effect when *name* in fact specifies a subpackage instead of a submodule: the submodules specified in the package's ``__all__`` variable are  loaded.)  Return a new reference to the imported module, or *NULL* with an exception set on failure.  A failing import of a module doesn't leave the module in :data:`sys.modules`. This is the structure type definition for frozen module descriptors, as generated by the :program:`freeze` utility (see :file:`Tools/freeze/` in the Python source distribution).  Its definition, found in :file:`Include/import.h`, is:: This pointer is initialized to point to an array of :c:type:`struct _frozen` records, terminated by one whose members are all *NULL* or zero.  When a frozen module is imported, it is searched in this table.  Third-party code could play tricks with this to provide a dynamically created collection of frozen modules. Uses :func:`imp.source_from_cache()` in calculating the source path if only the bytecode path is provided. Project-Id-Version: Python 3.7
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
 Add a collection of modules to the table of built-in modules.  The *newtab* array must end with a sentinel entry which contains *NULL* for the :attr:`name` field; failure to provide the sentinel value can result in a memory fault. Returns ``0`` on success or ``-1`` if insufficient memory could be allocated to extend the internal table.  In the event of failure, no modules are added to the internal table.  This should be called before :c:func:`Py_Initialize`. Add a single module to the existing table of built-in modules.  This is a convenience wrapper around :c:func:`PyImport_ExtendInittab`, returning ``-1`` if the table could not be extended.  The new module can be imported by the name *name*, and uses the function *initfunc* as the initialization function called on the first attempted import.  This should be called before :c:func:`Py_Initialize`. Empty the module table.  For internal use only. Failing imports remove incomplete module objects, like with :c:func:`PyImport_ImportModule`. Finalize the import mechanism.  For internal use only. Given a module name (possibly of the form ``package.module``) and a code object read from a Python bytecode file or obtained from the built-in function :func:`compile`, load the module.  Return a new reference to the module object, or *NULL* with an exception set if an error occurred.  *name* is removed from :attr:`sys.modules` in error cases, even if *name* was already in :attr:`sys.modules` on entry to :c:func:`PyImport_ExecCodeModule`.  Leaving incompletely initialized modules in :attr:`sys.modules` is dangerous, as imports of such modules have no way to know that the module object is an unknown (and probably damaged with respect to the module author's intents) state. If *name* points to a dotted name of the form ``package.module``, any package structures not already created will still not be created. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`, as the standard :func:`__import__` function calls this function directly. Import a module.  This is best described by referring to the built-in Python function :func:`__import__`. Importing Modules Initialize the import mechanism.  For internal use only. Like :c:func:`PyImport_ExecCodeModuleEx`, but the :attr:`__cached__` attribute of the module object is set to *cpathname* if it is non-``NULL``.  Of the three functions, this is the preferred one to use. Like :c:func:`PyImport_ExecCodeModuleObject`, but *name*, *pathname* and *cpathname* are UTF-8 encoded strings. Attempts are also made to figure out what the value for *pathname* should be from *cpathname* if the former is set to ``NULL``. Like :c:func:`PyImport_ExecCodeModule`, but the :attr:`__file__` attribute of the module object is set to *pathname* if it is non-``NULL``. Load a frozen module named *name*.  Return ``1`` for success, ``0`` if the module is not found, and ``-1`` with an exception set if the initialization failed.  To access the imported module on a successful load, use :c:func:`PyImport_ImportModule`.  (Note the misnomer --- this function would reload the module if it was already imported.) Negative values for *level* are no longer accepted. Reload a module.  Return a new reference to the reloaded module, or *NULL* with an exception set on failure (the module still exists in this case). Return a finder object for a :data:`sys.path`/:attr:`pkg.__path__` item *path*, possibly by fetching it from the :data:`sys.path_importer_cache` dict.  If it wasn't yet cached, traverse :data:`sys.path_hooks` until a hook is found that can handle the path item.  Return ``None`` if no hook could; this tells our caller that the :term:`path based finder` could not find a finder for this path item. Cache the result in :data:`sys.path_importer_cache`. Return a new reference to the finder object. Return the already imported module with the given name.  If the module has not been imported yet then returns NULL but does not set an error.  Returns NULL and sets an error if the lookup failed. Return the dictionary used for the module administration (a.k.a. ``sys.modules``).  Note that this is a per-interpreter variable. Return the magic number for Python bytecode files (a.k.a. :file:`.pyc` file). The magic number should be present in the first four bytes of the bytecode file, in little-endian byte order. Returns ``-1`` on error. Return the magic tag string for :pep:`3147` format Python bytecode file names.  Keep in mind that the value at ``sys.implementation.cache_tag`` is authoritative and should be used instead of this function. Return the module object corresponding to a module name.  The *name* argument may be of the form ``package.module``. First check the modules dictionary if there's one there, and if not, create a new one and insert it in the modules dictionary. Return *NULL* with an exception set on failure. Return value of ``-1`` upon failure. See also :c:func:`PyImport_ExecCodeModuleEx` and :c:func:`PyImport_ExecCodeModuleWithPathnames`. See also :c:func:`PyImport_ExecCodeModuleWithPathnames`. Similar to :c:func:`PyImport_AddModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportFrozenModuleObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Similar to :c:func:`PyImport_ImportModuleLevelObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Structure describing a single entry in the list of built-in modules.  Each of these structures gives the name and initialization function for a module built into the interpreter.  The name is an ASCII encoded string.  Programs which embed Python may use an array of these structures in conjunction with :c:func:`PyImport_ExtendInittab` to provide additional built-in modules. The structure is defined in :file:`Include/import.h` as:: The ``__file__`` attribute is no longer set on the module. The module's :attr:`__file__` attribute will be set to the code object's :c:member:`co_filename`.  If applicable, :attr:`__cached__` will also be set. The module's :attr:`__spec__` and :attr:`__loader__` will be set, if not set already, with the appropriate values.  The spec's loader will be set to the module's ``__loader__`` (if set) and to an instance of :class:`SourceFileLoader` otherwise. The return value is a new reference to the imported module or top-level package, or *NULL* with an exception set on failure.  Like for :func:`__import__`, the return value when a submodule of a package was requested is normally the top-level package, unless a non-empty *fromlist* was given. This function always uses absolute imports. This function does not load or import the module; if the module wasn't already loaded, you will get an empty module object. Use :c:func:`PyImport_ImportModule` or one of its variants to import a module.  Package structures implied by a dotted name for *name* are not created if not already present. This function is a deprecated alias of :c:func:`PyImport_ImportModule`. This function used to fail immediately when the import lock was held by another thread.  In Python 3.3 though, the locking scheme switched to per-module locks for most purposes, so this function's special behaviour isn't needed anymore. This function will reload the module if it was already imported.  See :c:func:`PyImport_ReloadModule` for the intended way to reload a module. This is a higher-level interface that calls the current "import hook function" (with an explicit *level* of 0, meaning absolute import).  It invokes the :func:`__import__` function from the ``__builtins__`` of the current globals.  This means that the import is done using whatever import hooks are installed in the current environment. This is a simplified interface to :c:func:`PyImport_ImportModuleEx` below, leaving the *globals* and *locals* arguments set to *NULL* and *level* set to 0.  When the *name* argument contains a dot (when it specifies a submodule of a package), the *fromlist* argument is set to the list ``['*']`` so that the return value is the named module rather than the top-level package containing it as would otherwise be the case.  (Unfortunately, this has an additional side effect when *name* in fact specifies a subpackage instead of a submodule: the submodules specified in the package's ``__all__`` variable are  loaded.)  Return a new reference to the imported module, or *NULL* with an exception set on failure.  A failing import of a module doesn't leave the module in :data:`sys.modules`. This is the structure type definition for frozen module descriptors, as generated by the :program:`freeze` utility (see :file:`Tools/freeze/` in the Python source distribution).  Its definition, found in :file:`Include/import.h`, is:: This pointer is initialized to point to an array of :c:type:`struct _frozen` records, terminated by one whose members are all *NULL* or zero.  When a frozen module is imported, it is searched in this table.  Third-party code could play tricks with this to provide a dynamically created collection of frozen modules. Uses :func:`imp.source_from_cache()` in calculating the source path if only the bytecode path is provided. 