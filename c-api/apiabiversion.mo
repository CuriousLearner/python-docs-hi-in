��          �               �     �  C   �     �        �        �  .   �     �  	   �     �  	      	   
                     &  /   /  /   _  /   �  �   �  I   J  L   �  �  �     c  C   z     �     �  �   �     �  .   �     �  	   �     �  	   �  	   �     �     �     �     �  /     /   5  /   e  �   �  I    	  L   j	   API and ABI Versioning All the given macros are defined in :source:`Include/patchlevel.h`. Bits (big endian order) Bytes For example if the ``PY_VERSION_HEX`` is set to ``0x030401a2``, the underlying version information can be found by treating it as a 32 bit number in the following manner: Meaning Thus ``3.4.1a2`` is hexversion ``0x030401a2``. ``1-8`` ``17-24`` ``1`` ``25-28`` ``29-32`` ``2`` ``3`` ``4`` ``9-16`` ``PY_MAJOR_VERSION`` (the ``3`` in ``3.4.1a2``) ``PY_MICRO_VERSION`` (the ``1`` in ``3.4.1a2``) ``PY_MINOR_VERSION`` (the ``4`` in ``3.4.1a2``) ``PY_RELEASE_LEVEL`` (``0xA`` for alpha, ``0xB`` for beta, ``0xC`` for release candidate and ``0xF`` for final), in this case it is alpha. ``PY_RELEASE_SERIAL`` (the ``2`` in ``3.4.1a2``, zero for final releases) ``PY_VERSION_HEX`` is the Python version number encoded in a single integer. Project-Id-Version: Python 3.7
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
 API and ABI Versioning All the given macros are defined in :source:`Include/patchlevel.h`. Bits (big endian order) Bytes For example if the ``PY_VERSION_HEX`` is set to ``0x030401a2``, the underlying version information can be found by treating it as a 32 bit number in the following manner: Meaning Thus ``3.4.1a2`` is hexversion ``0x030401a2``. ``1-8`` ``17-24`` ``1`` ``25-28`` ``29-32`` ``2`` ``3`` ``4`` ``9-16`` ``PY_MAJOR_VERSION`` (the ``3`` in ``3.4.1a2``) ``PY_MICRO_VERSION`` (the ``1`` in ``3.4.1a2``) ``PY_MINOR_VERSION`` (the ``4`` in ``3.4.1a2``) ``PY_RELEASE_LEVEL`` (``0xA`` for alpha, ``0xB`` for beta, ``0xC`` for release candidate and ``0xF`` for final), in this case it is alpha. ``PY_RELEASE_SERIAL`` (the ``2`` in ``3.4.1a2``, zero for final releases) ``PY_VERSION_HEX`` is the Python version number encoded in a single integer. 