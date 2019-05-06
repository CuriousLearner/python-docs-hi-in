��          |               �   1   �   !     �   1  �     g   �  �   '  e   �  �   ]  �  �  �   �  q     �  �  1   	  !   9	  �   [	  �   =
  g   �
  �   Q  e   !  �   �  �     �   �  q   =   **Source code:** :source:`Lib/email/iterators.py` :mod:`email.iterators`: Iterators Iterating over a message object tree is fairly easy with the :meth:`Message.walk <email.message.Message.walk>` method.  The :mod:`email.iterators` module provides some useful higher level iterations over message object trees. Note that *subtype* is optional; if omitted, then subpart MIME type matching is done only with the main type.  *maintype* is optional too; it defaults to :mimetype:`text`. Optional *decode* is passed through to :meth:`Message.get_payload <email.message.Message.get_payload>`. Optional *fp* is a file-like object to print the output to.  It must be suitable for Python's :func:`print` function.  *level* is used internally. *include_default*, if true, prints the default type as well. Prints an indented representation of the content types of the message object structure.  For example: The following function has been added as a useful debugging tool.  It should *not* be considered part of the supported public interface for the package. This iterates over all the payloads in all the subparts of *msg*, returning the string payloads line-by-line.  It skips over all the subpart headers, and it skips over any subpart with a payload that isn't a Python string.  This is somewhat equivalent to reading the flat text representation of the message from a file using :meth:`~io.TextIOBase.readline`, skipping over all the intervening headers. This iterates over all the subparts of *msg*, returning only those subparts that match the MIME type specified by *maintype* and *subtype*. Thus, by default :func:`typed_subpart_iterator` returns each subpart that has a MIME type of :mimetype:`text/\*`. Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/email/iterators.py` :mod:`email.iterators`: Iterators Iterating over a message object tree is fairly easy with the :meth:`Message.walk <email.message.Message.walk>` method.  The :mod:`email.iterators` module provides some useful higher level iterations over message object trees. Note that *subtype* is optional; if omitted, then subpart MIME type matching is done only with the main type.  *maintype* is optional too; it defaults to :mimetype:`text`. Optional *decode* is passed through to :meth:`Message.get_payload <email.message.Message.get_payload>`. Optional *fp* is a file-like object to print the output to.  It must be suitable for Python's :func:`print` function.  *level* is used internally. *include_default*, if true, prints the default type as well. Prints an indented representation of the content types of the message object structure.  For example: The following function has been added as a useful debugging tool.  It should *not* be considered part of the supported public interface for the package. This iterates over all the payloads in all the subparts of *msg*, returning the string payloads line-by-line.  It skips over all the subpart headers, and it skips over any subpart with a payload that isn't a Python string.  This is somewhat equivalent to reading the flat text representation of the message from a file using :meth:`~io.TextIOBase.readline`, skipping over all the intervening headers. This iterates over all the subparts of *msg*, returning only those subparts that match the MIME type specified by *maintype* and *subtype*. Thus, by default :func:`typed_subpart_iterator` returns each subpart that has a MIME type of :mimetype:`text/\*`. 