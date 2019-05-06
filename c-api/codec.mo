��          �               �    �    �  �   �     �  $   �  !   �  !   �  N   �  N   J  0   �  K   �  K     1   b  4   �     �  �   �     �  %   �    �  0   �	  ?   

  :   J
  :   �
  T   �
  )     �   ?  6  �  �  �    y      �   �       $   .  !   S  !   u  N   �  N   �  0   5  K   f  K   �  1   �  4   0     e  �   f       %   :    `  0   u  ?   �  :   �  :   !  T   \  )   �  �   �  6  \   *object* is passed through the decoder function found for the given *encoding* using the error handling method defined by *errors*.  *errors* may be *NULL* to use the default method defined for the codec.  Raises a :exc:`LookupError` if no encoder can be found. *object* is passed through the encoder function found for the given *encoding* using the error handling method defined by *errors*.  *errors* may be *NULL* to use the default method defined for the codec.  Raises a :exc:`LookupError` if no encoder can be found. As side effect, this tries to load the :mod:`encodings` package, if not yet done, to make sure that it is always first in the list of search functions. Codec lookup API Codec registry and support functions Generic codec based decoding API. Generic codec based encoding API. Get a :class:`~codecs.StreamReader` factory function for the given *encoding*. Get a :class:`~codecs.StreamWriter` factory function for the given *encoding*. Get a decoder function for the given *encoding*. Get an :class:`~codecs.IncrementalDecoder` object for the given *encoding*. Get an :class:`~codecs.IncrementalEncoder` object for the given *encoding*. Get an encoder function for the given *encoding*. Ignore the unicode error, skipping the faulty input. In the following functions, the *encoding* string is looked up converted to all lower-case characters, which makes encodings looked up through this mechanism effectively case-insensitive.  If no codec is found, a :exc:`KeyError` is set and *NULL* returned. Lookup the error handling callback function registered under *name*.  As a special case *NULL* can be passed, in which case the error handling callback for "strict" will be returned. Raise *exc* as an exception. Register a new codec search function. Register the error handling callback function *error* under the given *name*. This callback function will be called by a codec when it encounters unencodable characters/undecodable bytes and *name* is specified as the error parameter in the call to the encode/decode function. Registry API for Unicode encoding error handlers Replace the unicode encode error with XML character references. Replace the unicode encode error with ``?`` or ``U+FFFD``. Replace the unicode encode error with ``\N{...}`` escapes. Replace the unicode encode error with backslash escapes (``\x``, ``\u`` and ``\U``). Return ``0`` on success, ``-1`` on error. Return ``1`` or ``0`` depending on whether there is a registered codec for the given *encoding*.  This function always succeeds. The callback gets a single argument, an instance of :exc:`UnicodeEncodeError`, :exc:`UnicodeDecodeError` or :exc:`UnicodeTranslateError` that holds information about the problematic sequence of characters or bytes and their offset in the original string (see :ref:`unicodeexceptions` for functions to extract this information).  The callback must either raise the given exception, or return a two-item tuple containing the replacement for the problematic sequence, and an integer giving the offset in the original string at which encoding/decoding should be resumed. Project-Id-Version: Python 3.7
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
 *object* is passed through the decoder function found for the given *encoding* using the error handling method defined by *errors*.  *errors* may be *NULL* to use the default method defined for the codec.  Raises a :exc:`LookupError` if no encoder can be found. *object* is passed through the encoder function found for the given *encoding* using the error handling method defined by *errors*.  *errors* may be *NULL* to use the default method defined for the codec.  Raises a :exc:`LookupError` if no encoder can be found. As side effect, this tries to load the :mod:`encodings` package, if not yet done, to make sure that it is always first in the list of search functions. Codec lookup API Codec registry and support functions Generic codec based decoding API. Generic codec based encoding API. Get a :class:`~codecs.StreamReader` factory function for the given *encoding*. Get a :class:`~codecs.StreamWriter` factory function for the given *encoding*. Get a decoder function for the given *encoding*. Get an :class:`~codecs.IncrementalDecoder` object for the given *encoding*. Get an :class:`~codecs.IncrementalEncoder` object for the given *encoding*. Get an encoder function for the given *encoding*. Ignore the unicode error, skipping the faulty input. In the following functions, the *encoding* string is looked up converted to all lower-case characters, which makes encodings looked up through this mechanism effectively case-insensitive.  If no codec is found, a :exc:`KeyError` is set and *NULL* returned. Lookup the error handling callback function registered under *name*.  As a special case *NULL* can be passed, in which case the error handling callback for "strict" will be returned. Raise *exc* as an exception. Register a new codec search function. Register the error handling callback function *error* under the given *name*. This callback function will be called by a codec when it encounters unencodable characters/undecodable bytes and *name* is specified as the error parameter in the call to the encode/decode function. Registry API for Unicode encoding error handlers Replace the unicode encode error with XML character references. Replace the unicode encode error with ``?`` or ``U+FFFD``. Replace the unicode encode error with ``\N{...}`` escapes. Replace the unicode encode error with backslash escapes (``\x``, ``\u`` and ``\U``). Return ``0`` on success, ``-1`` on error. Return ``1`` or ``0`` depending on whether there is a registered codec for the given *encoding*.  This function always succeeds. The callback gets a single argument, an instance of :exc:`UnicodeEncodeError`, :exc:`UnicodeDecodeError` or :exc:`UnicodeTranslateError` that holds information about the problematic sequence of characters or bytes and their offset in the original string (see :ref:`unicodeexceptions` for functions to extract this information).  The callback must either raise the given exception, or return a two-item tuple containing the replacement for the problematic sequence, and an integer giving the offset in the original string at which encoding/decoding should be resumed. 