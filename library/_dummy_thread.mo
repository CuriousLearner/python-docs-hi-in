��          L               |   /   }   J   �   �   �   k   �  �     �  �  /   ?  J   o  �   �  k   o  �   �   **Source code:** :source:`Lib/_dummy_thread.py` :mod:`_dummy_thread` --- Drop-in replacement for the :mod:`_thread` module Be careful to not use this module where deadlock might occur from a thread being created that blocks waiting for another thread to be created.  This often occurs with blocking I/O. Python now always has threading enabled.  Please use :mod:`_thread` (or, better, :mod:`threading`) instead. This module provides a duplicate interface to the :mod:`_thread` module. It was meant to be imported when the :mod:`_thread` module was not provided on a platform. Project-Id-Version: Python 3.7
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
 **Source code:** :source:`Lib/_dummy_thread.py` :mod:`_dummy_thread` --- Drop-in replacement for the :mod:`_thread` module Be careful to not use this module where deadlock might occur from a thread being created that blocks waiting for another thread to be created.  This often occurs with blocking I/O. Python now always has threading enabled.  Please use :mod:`_thread` (or, better, :mod:`threading`) instead. This module provides a duplicate interface to the :mod:`_thread` module. It was meant to be imported when the :mod:`_thread` module was not provided on a platform. 