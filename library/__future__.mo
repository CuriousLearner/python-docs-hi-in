��    5      �              l  ,   m    �  T   �  N   �     J     R     V     ^     f     j     r     v     ~     �     �     �     �  2   �  >   �  &     ,   3     `  $   �  ,   �  7   �  "   
  6   -  1   d     �  8   �  �   �  '   �  �   �  �   	  �    
  r   �
  �   0  �   ,                    (     /     7  
   F     Q     ^     l     x     �  �   �     !  �  0  ,   �    �  T   �  N   @     �     �     �     �     �     �     �     �     �     �     �     �     �  2   �  >     &   Q  ,   x     �  $   �  ,   �  7     "   O  6   r  1   �     �  8   �  �   "  '   �  �   &  �   �  �   E  r     �   u  �   q     H     X     d     m     t     |  
   �     �     �     �     �     �  �   �     f   **Source code:** :source:`Lib/__future__.py` *CompilerFlag* is the (bitfield) flag that should be passed in the fourth argument to the built-in function :func:`compile` to enable the feature in dynamically compiled code.  This flag is stored in the :attr:`compiler_flag` attribute on :class:`_Feature` instances. *MandatoryRelease* may also be ``None``, meaning that a planned feature got dropped. *OptionalRelease* records the first release in which the feature was accepted. 2.1.0b1 2.2 2.2.0a1 2.2.0a2 2.3 2.5.0a1 2.6 2.6.0a2 3.0 3.5.0b1 3.7 3.7.0b1 4.0 :mod:`__future__` --- Future statement definitions :mod:`__future__` is a real module, and serves three purposes: :pep:`227`: *Statically Nested Scopes* :pep:`238`: *Changing the Division Operator* :pep:`255`: *Simple Generators* :pep:`3105`: *Make print a function* :pep:`3112`: *Bytes literals in Python 3000* :pep:`328`: *Imports: Multi-Line and Absolute/Relative* :pep:`343`: *The "with" Statement* :pep:`479`: *StopIteration handling inside generators* :pep:`563`: *Postponed evaluation of annotations* :ref:`future` Each statement in :file:`__future__.py` is of the form:: Else *MandatoryRelease* records when the feature became part of the language; in releases at or after that, modules no longer need a future statement to use the feature in question, but may continue to use such imports. How the compiler treats future imports. In the case of a *MandatoryRelease* that has not yet occurred, *MandatoryRelease* predicts the release in which the feature will become part of the language. Instances of class :class:`_Feature` have two corresponding methods, :meth:`getOptionalRelease` and :meth:`getMandatoryRelease`. No feature description will ever be deleted from :mod:`__future__`. Since its introduction in Python 2.1 the following features have found their way into the language using this mechanism: To avoid confusing existing tools that analyze import statements and expect to find the modules they're importing. To document when incompatible changes were introduced, and when they will be --- or were --- made mandatory.  This is a form of executable documentation, and can be inspected programmatically via importing :mod:`__future__` and examining its contents. To ensure that :ref:`future statements <future>` run under releases prior to 2.1 at least yield runtime exceptions (the import of :mod:`__future__` will fail, because there was no module of that name prior to 2.1). absolute_import annotations division effect feature generator_stop generators mandatory in nested_scopes optional in print_function unicode_literals where, normally, *OptionalRelease* is less than *MandatoryRelease*, and both are 5-tuples of the same form as :data:`sys.version_info`:: with_statement Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/__future__.py` *CompilerFlag* is the (bitfield) flag that should be passed in the fourth argument to the built-in function :func:`compile` to enable the feature in dynamically compiled code.  This flag is stored in the :attr:`compiler_flag` attribute on :class:`_Feature` instances. *MandatoryRelease* may also be ``None``, meaning that a planned feature got dropped. *OptionalRelease* records the first release in which the feature was accepted. 2.1.0b1 2.2 2.2.0a1 2.2.0a2 2.3 2.5.0a1 2.6 2.6.0a2 3.0 3.5.0b1 3.7 3.7.0b1 4.0 :mod:`__future__` --- Future statement definitions :mod:`__future__` is a real module, and serves three purposes: :pep:`227`: *Statically Nested Scopes* :pep:`238`: *Changing the Division Operator* :pep:`255`: *Simple Generators* :pep:`3105`: *Make print a function* :pep:`3112`: *Bytes literals in Python 3000* :pep:`328`: *Imports: Multi-Line and Absolute/Relative* :pep:`343`: *The "with" Statement* :pep:`479`: *StopIteration handling inside generators* :pep:`563`: *Postponed evaluation of annotations* :ref:`future` Each statement in :file:`__future__.py` is of the form:: Else *MandatoryRelease* records when the feature became part of the language; in releases at or after that, modules no longer need a future statement to use the feature in question, but may continue to use such imports. How the compiler treats future imports. In the case of a *MandatoryRelease* that has not yet occurred, *MandatoryRelease* predicts the release in which the feature will become part of the language. Instances of class :class:`_Feature` have two corresponding methods, :meth:`getOptionalRelease` and :meth:`getMandatoryRelease`. No feature description will ever be deleted from :mod:`__future__`. Since its introduction in Python 2.1 the following features have found their way into the language using this mechanism: To avoid confusing existing tools that analyze import statements and expect to find the modules they're importing. To document when incompatible changes were introduced, and when they will be --- or were --- made mandatory.  This is a form of executable documentation, and can be inspected programmatically via importing :mod:`__future__` and examining its contents. To ensure that :ref:`future statements <future>` run under releases prior to 2.1 at least yield runtime exceptions (the import of :mod:`__future__` will fail, because there was no module of that name prior to 2.1). absolute_import annotations division effect feature generator_stop generators mandatory in nested_scopes optional in print_function unicode_literals where, normally, *OptionalRelease* is less than *MandatoryRelease*, and both are 5-tuples of the same form as :data:`sys.version_info`:: with_statement 