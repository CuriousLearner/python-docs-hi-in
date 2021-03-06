��          �               �   4   �   :   "  P   ]  G   �  �   �      �  �   �  %   �  �   �  6   J  6   �  v   �  �  /  4   �  :   �  P   !  G   r  �   �      a  �   �  %   g	  �   �	  6   
  6   E
  v   |
   :mod:`nis` --- Interface to Sun's NIS (Yellow Pages) An error raised when a NIS function returns an error code. Because NIS exists only on Unix systems, this module is only available for Unix. Note that *mapname* is first checked if it is an alias to another name. Return a dictionary mapping *key* to *value* such that ``match(key, mapname)==value``. Note that both keys and values of the dictionary are arbitrary arrays of bytes. Return a list of all valid maps. Return the match for *key* in map *mapname*, or raise an error (:exc:`nis.error`) if there is none. Both should be strings, *key* is 8-bit clean. Return value is an arbitrary array of bytes (may contain ``NULL`` and other joys). Return the system default NIS domain. The *domain* argument allows overriding the NIS domain used for the lookup. If unspecified, lookup is in the default NIS domain. The :mod:`nis` module defines the following exception: The :mod:`nis` module defines the following functions: The :mod:`nis` module gives a thin wrapper around the NIS library, useful for central administration of several hosts. Project-Id-Version: Python 3.7
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
 :mod:`nis` --- Interface to Sun's NIS (Yellow Pages) An error raised when a NIS function returns an error code. Because NIS exists only on Unix systems, this module is only available for Unix. Note that *mapname* is first checked if it is an alias to another name. Return a dictionary mapping *key* to *value* such that ``match(key, mapname)==value``. Note that both keys and values of the dictionary are arbitrary arrays of bytes. Return a list of all valid maps. Return the match for *key* in map *mapname*, or raise an error (:exc:`nis.error`) if there is none. Both should be strings, *key* is 8-bit clean. Return value is an arbitrary array of bytes (may contain ``NULL`` and other joys). Return the system default NIS domain. The *domain* argument allows overriding the NIS domain used for the lookup. If unspecified, lookup is in the default NIS domain. The :mod:`nis` module defines the following exception: The :mod:`nis` module defines the following functions: The :mod:`nis` module gives a thin wrapper around the NIS library, useful for central administration of several hosts. 