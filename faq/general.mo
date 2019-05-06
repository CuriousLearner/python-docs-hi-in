��    \      �              �    �  �  �    �     �	  C   �	  6   
  �   ?
  �   �
     �  1   �  �   �  /  z  �  �  x   �          ,  �   ?  2   �  R   .  �  �  +     %   @  ,   f  3   �  2   �  !   �       �  2  r    �  {  9     �   V  �   �  �    4   !  ;   V  7   �  �  �    N  ;   a   f  �   k   #  v   p#     �#  �  �#  �   �%     �&  v   �&  0  C'  �   t)  Z  M*  (  �+  �   �,  i   \-    �-  L  �.  B  0  �   Z1  �  2  j   
4  �  u4  �   6  �  �6  �   ^9  F  &:    m<  �   �=  R   k>  �  �>  m   �@  ^   !A  �  �A  �   3C  c   D  �   eD     /E     HE  '   XE  <   �E  U  �E  -   G     AG  *   ZG  Z   �G  �   �G     dH  �   iH  �   �H  �  �I  0  PK  �  �L  �  N    �O  �  �P    ;R     XS  C   wS  6   �S  �   �S  �   �T     CU  1   LU  �   ~U  /  -V  �  ]W  x   RY     �Y     �Y  �   �Y  2   �Z  R   �Z  �  4[  +   �\  %   �\  ,   ]  3   F]  2   z]  !   �]     �]  �  �]  r  �_  �  .a  9   �b  �   	c  �   �c  �  2d  4   �e  ;   	f  7   Ef  �  }f    i  ;   j  f  Pj  k   �l  v   #m     �m  �  �m  �   �o     fp  v   p  0  �p  �   's  Z   t  (  [u  �   �v  i   w    yw  L  }x  B  �y  �   {  �  �{  j   �}  �  (~  �   �  �  ��  �   �  F  ك     �  �   >�  R   �  �  q�  m   f�  ^   Ԋ  �  3�  �   �  c   ��  �   �     �     ��  '   �  <   3�  U  p�  -   Ɛ     ��  *   �  Z   8�  �   ��     �  �   �  �   ��  �  >�  0  �  �  4�   Alpha and beta releases are available from https://www.python.org/downloads/.  All releases are announced on the comp.lang.python and comp.lang.python.announce newsgroups and on the Python home page at https://www.python.org/; an RSS feed of news is available. Alpha, beta and release candidate versions have an additional suffix.  The suffix for an alpha version is "aN" for some small number N, the suffix for a beta version is "bN" for some small number N, and the suffix for a release candidate version is "cN" for some small number N.  In other words, all versions labeled 2.0aN precede the versions labeled 2.0bN, which precede versions labeled 2.0cN, and *those* precede 2.0. Announcements of new software releases and events can be found in comp.lang.python.announce, a low-traffic moderated list that receives about five postings per day.  It's available as `the python-announce mailing list <https://mail.python.org/mailman/listinfo/python-announce-list>`_. Are there any books on Python? Are there any published articles about Python that I can reference? Are there copyright restrictions on the use of Python? Consult `the Beginner's Guide <https://wiki.python.org/moin/BeginnersGuide>`_ to find information for beginning Python programmers, including lists of tutorials. Consult the `Getting Started section of the Python Developer's Guide <https://devguide.python.org/setup/>`__ for more information on getting the source code and compiling it. Contents Do I have to like "Monty Python's Flying Circus"? Donations to the PSF are tax-exempt in the US.  If you use Python and find it helpful, please contribute via `the PSF donation page <https://www.python.org/psf/donations/>`_. During the 1989 Christmas holidays, I had a lot of time on my hand, so I decided to give it a try.  During the next year, while still mostly working on it in my own time, Python was used in the Amoeba project with increasing success, and the feedback from colleagues made me add many early improvements. For a student who has never programmed before, using a statically typed language seems unnatural.  It presents additional complexity that the student must master and slows the pace of the course.  The students are trying to learn to think like a computer, decompose problems, design consistent interfaces, and encapsulate data.  While learning to use a statically typed language is important in the long term, it is not necessarily the best topic to address in the students' first programming course. For more information on how Python is developed, consult `the Python Developer's Guide <https://devguide.python.org/>`_. General Information General Python FAQ Guido van Rossum and Jelke de Boer, "Interactively Testing Remote Servers Using the Python Programming Language", CWI Quarterly, Volume 4, Issue 4 (December 1991), Amsterdam, pp 283--303. Have any significant projects been done in Python? Here's a *very* brief summary of what started it all, written by Guido van Rossum: High-profile Python projects include `the Mailman mailing list manager <http://www.list.org>`_ and `the Zope application server <http://www.zope.org>`_.  Several Linux distributions, most notably `Red Hat <https://www.redhat.com>`_, have written part or all of their installer and system administration software in Python.  Companies that use Python internally include Google, Yahoo, and Lucasfilm Ltd. How do I get a beta test version of Python? How do I get documentation on Python? How do I obtain a copy of the Python source? How do I submit bug reports and patches for Python? How does the Python version numbering scheme work? How many people are using Python? How stable is Python? I had a number of gripes about the ABC language, but also liked many of its features.  It was impossible to extend the ABC language (or its implementation) to remedy my complaints -- in fact its lack of extensibility was one of its biggest problems.  I had some experience with using Modula-2+ and talked with the designers of Modula-3 and read the Modula-3 report. Modula-3 is the origin of the syntax and semantics used for exceptions, and some other Python features. I had extensive experience with implementing an interpreted language in the ABC group at CWI, and from working with this group I had learned a lot about language design.  This is the origin of many Python features, including the use of indentation for statement grouping and the inclusion of very-high-level data types (although the details are all different in Python). I was working in the Amoeba distributed operating system group at CWI.  We needed a better way to do system administration than by writing either C programs or Bourne shell scripts, since Amoeba had its own system call interface which wasn't easily accessible from the Bourne shell.  My experience with error handling in Amoeba made me acutely aware of the importance of exceptions as a programming language feature. I've never programmed before. Is there a Python tutorial? If you want to discuss Python's use in education, you may be interested in joining `the edu-sig mailing list <https://www.python.org/community/sigs/current/edu-sig>`_. In February 1991, after just over a year of development, I decided to post to USENET.  The rest is in the ``Misc/HISTORY`` file. In general, no.  There are already millions of lines of Python code around the world, so any change in the language that invalidates more than a very small fraction of existing programs has to be frowned upon.  Even if you can provide a conversion program, there's still the problem of updating all documentation; many books have been written about Python, and we don't want to invalidate them all at a single stroke. Is Python a good language for beginning programmers? Is it reasonable to propose incompatible changes to Python? Is there a newsgroup or mailing list devoted to Python? It is still common to start students with a procedural and statically typed language such as Pascal, C, or a subset of C++ or Java.  Students may be better served by learning Python as their first language.  Python has a very simple and consistent syntax and a large standard library and, most importantly, using Python in a beginning programming course lets students concentrate on important programming skills such as problem decomposition and data type design.  With Python, students can be quickly introduced to basic concepts such as loops and procedures.  They can probably even work with user-defined objects in their very first course. It occurred to me that a scripting language with a syntax like ABC but with access to the Amoeba system calls would fill the need.  I realized that it would be foolish to write an Amoeba-specific language, so I decided that I needed a language that was generally extensible. It's probably best to cite your favorite book about Python. Many other aspects of Python make it a good first language.  Like Java, Python has a large standard library so that students can be assigned programming projects very early in the course that *do* something.  Assignments aren't restricted to the standard four-function calculator and check balancing programs.  By using the standard library, students can gain the satisfaction of working on realistic applications as they learn the fundamentals of programming. Using the standard library also teaches students about code reuse.  Third-party modules such as PyGame are also helpful in extending the students' reach. More info about other mailing lists and newsgroups can be found at https://www.python.org/community/lists/. New development is discussed on `the python-dev mailing list <https://mail.python.org/mailman/listinfo/python-dev/>`_. No, but it helps.  :) Not all releases are bugfix releases.  In the run-up to a new major release, a series of development releases are made, denoted as alpha, beta, or release candidate.  Alphas are early releases in which interfaces aren't yet finalized; it's not unexpected to see an interface change between two alpha releases. Betas are more stable, preserving existing interfaces but possibly adding new modules, and release candidates are frozen, making no changes except as needed to fix critical bugs. Providing a gradual upgrade path is necessary if a feature has to be changed. :pep:`5` describes the procedure followed for introducing backward-incompatible changes while minimizing disruption for users. Python in the real world Python is a high-level general-purpose programming language that can be applied to many different classes of problems. Python is an interpreted, interactive, object-oriented programming language.  It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes.  Python combines remarkable power with very clear syntax. It has interfaces to many system calls and libraries, as well as to various window systems, and is extensible in C or C++.  It is also usable as an extension language for applications that need a programmable interface. Finally, Python is portable: it runs on many Unix variants, on the Mac, and on Windows 2000 and later. Python is available for free download, so there are no sales figures, and it's available from many different sites and packaged with many Linux distributions, so download statistics don't tell the whole story either. Python versions are numbered A.B.C or A.B.  A is the major version number -- it is only incremented for really major changes in the language.  B is the minor version number, incremented for less earth-shattering changes.  C is the micro-level -- it is incremented for each bugfix release.  See :pep:`6` for more information about bugfix releases. Python's interactive interpreter enables students to test language features while they're programming.  They can keep a window with the interpreter running while they enter their program's source in another window.  If they can't remember the methods for a list, they can do something like this:: See `the PSF license page <https://www.python.org/psf/license/>`_ to find further explanations and a link to the full text of the license. See also the documentation for :data:`sys.version`, :data:`sys.hexversion`, and :data:`sys.version_info`. See https://www.python.org/about/success for a list of projects that use Python. Consulting the proceedings for `past Python conferences <https://www.python.org/community/workshops/>`_ will reveal contributions from many different companies and organizations. See https://www.python.org/dev/peps/ for the Python Enhancement Proposals (PEPs). PEPs are design documents describing a suggested new feature for Python, providing a concise technical specification and a rationale.  Look for a PEP titled "Python X.Y Release Schedule", where X.Y is a version that hasn't been publicly released yet. The Python Software Foundation is an independent non-profit organization that holds the copyright on Python versions 2.1 and newer.  The PSF's mission is to advance open source technology related to the Python programming language and to publicize the use of Python.  The PSF's home page is at https://www.python.org/psf/. The Python logo is trademarked, and in certain cases permission is required to use it.  Consult `the Trademark Usage Policy <https://www.python.org/psf/trademarks/>`__ for more information. The Python project's infrastructure is located all over the world. `www.python.org <https://www.python.org>`_ is graciously hosted by `Rackspace <https://www.rackspace.com>`_, with CDN caching provided by `Fastly <https://www.fastly.com>`_.  `Upfront Systems <http://www.upfrontsoftware.co.za>`_ hosts `bugs.python.org <https://bugs.python.org>`_.  Many other Python services like `the Wiki <https://wiki.python.org>`_ are hosted by `Oregon State University Open Source Lab <https://osuosl.org>`_. The comp.lang.python newsgroup is very active, but not all Python users post to the group or even read it. The developers issue "bugfix" releases of older versions, so the stability of existing releases gradually improves.  Bugfix releases, indicated by a third component of the version number (e.g. 3.5.3, 3.6.2), are managed for stability; only fixes for known problems are included in a bugfix release, and it's guaranteed that interfaces will remain the same throughout a series of bugfix releases. The documentation is written in reStructuredText and processed by `the Sphinx documentation tool <http://sphinx-doc.org/>`__.  The reStructuredText source for the documentation is part of the Python source distribution. The language comes with a large standard library that covers areas such as string processing (regular expressions, Unicode, calculating differences between files), Internet protocols (HTTP, FTP, SMTP, XML-RPC, POP, IMAP, CGI programming), software engineering (unit testing, logging, profiling, parsing Python code), and operating system interfaces (system calls, filesystems, TCP/IP sockets).  Look at the table of contents for :ref:`library-index` to get an idea of what's available.  A wide variety of third-party extensions are also available.  Consult `the Python Package Index <https://pypi.org>`_ to find packages of interest to you. The latest Python source distribution is always available from python.org, at https://www.python.org/downloads/.  The latest development sources can be obtained at https://github.com/python/cpython/. The latest stable releases can always be found on the `Python download page <https://www.python.org/downloads/>`_.  There are two production-ready version of Python: 2.x and 3.x, but the recommended one at this times is Python 3.x. Although Python 2.x is still widely used, `it will not be maintained after January 1, 2020 <https://www.python.org/dev/peps/pep-0373/>`_. Python 2.x was known for having more third-party libraries available, however, by the time of this writing, most of the widely used libraries support Python 3.x, and some are even dropping the Python 2.x support. The source distribution is a gzipped tar file containing the complete C source, Sphinx-formatted documentation, Python library modules, example programs, and several useful pieces of freely distributable software.  The source will compile and run out of the box on most UNIX platforms. The standard documentation for the current stable version of Python is available at https://docs.python.org/3/.  PDF, plain text, and downloadable HTML versions are also available at https://docs.python.org/3/download.html. The very first article about Python was written in 1991 and is now quite outdated. There are also good IDEs for Python.  IDLE is a cross-platform IDE for Python that is written in Python using Tkinter.  PythonWin is a Windows-specific IDE. Emacs users will be happy to know that there is a very good Python mode for Emacs.  All of these programming environments provide syntax highlighting, auto-indenting, and access to the interactive interpreter while coding.  Consult `the Python wiki <https://wiki.python.org/moin/PythonEditors>`_ for a full list of Python editing environments. There are numerous tutorials and books available.  The standard documentation includes :ref:`tutorial-index`. There are probably tens of thousands of users, though it's difficult to obtain an exact count. There is a newsgroup, :newsgroup:`comp.lang.python`, and a mailing list, `python-list <https://mail.python.org/mailman/listinfo/python-list>`_.  The newsgroup and mailing list are gatewayed into each other -- if you can read news it's unnecessary to subscribe to the mailing list. :newsgroup:`comp.lang.python` is high-traffic, receiving hundreds of postings every day, and Usenet readers are often more able to cope with this volume. To find out more, start with :ref:`tutorial-index`.  The `Beginner's Guide to Python <https://wiki.python.org/moin/BeginnersGuide>`_ links to other introductory tutorials and resources for learning Python. To report a bug or submit a patch, please use the Roundup installation at https://bugs.python.org/. Very stable.  New, stable releases have been coming out roughly every 6 to 18 months since 1991, and this seems likely to continue.  Currently there are usually around 18 months between major releases. What is Python good for? What is Python? What is the Python Software Foundation? What new developments are expected for Python in the future? When he began implementing Python, Guido van Rossum was also reading the published scripts from `"Monty Python's Flying Circus" <https://en.wikipedia.org/wiki/Monty_Python>`__, a BBC comedy series from the 1970s.  Van Rossum thought he needed a name that was short, unique, and slightly mysterious, so he decided to call the language Python. Where in the world is www.python.org located? Why is it called Python? Why was Python created in the first place? With the interpreter, documentation is never far from the student as they are programming. Yes, there are many, and more are being published.  See the python.org wiki at https://wiki.python.org/moin/PythonBooks for a list. Yes. You can also access the development version of Python through Git.  See `The Python Developer's Guide <https://devguide.python.org/>`_ for details. You can also search online bookstores for "Python" and filter out the Monty Python references; or perhaps search for "Python" and "language". You can do anything you want with the source, as long as you leave the copyrights in and display those copyrights in any documentation about Python that you produce.  If you honor the copyright rules, it's OK to use Python for commercial use, to sell copies of Python in source or binary form (modified or unmodified), or to sell products that incorporate Python in some form.  We would still like to know about all commercial use of Python, of course. You may also find version numbers with a "+" suffix, e.g. "2.2+".  These are unreleased versions, built directly from the CPython development repository.  In practice, after a final minor release is made, the version is incremented to the next minor version, which becomes the "a0" version, e.g. "2.4a0". You must have a Roundup account to report bugs; this makes it possible for us to contact you if we have follow-up questions.  It will also enable Roundup to send you updates as we act on your bug. If you had previously used SourceForge to report bugs to Python, you can obtain your Roundup password through Roundup's `password reset procedure <https://bugs.python.org/user?@template=forgotten>`_. Project-Id-Version: Python 3.7
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
 Alpha and beta releases are available from https://www.python.org/downloads/.  All releases are announced on the comp.lang.python and comp.lang.python.announce newsgroups and on the Python home page at https://www.python.org/; an RSS feed of news is available. Alpha, beta and release candidate versions have an additional suffix.  The suffix for an alpha version is "aN" for some small number N, the suffix for a beta version is "bN" for some small number N, and the suffix for a release candidate version is "cN" for some small number N.  In other words, all versions labeled 2.0aN precede the versions labeled 2.0bN, which precede versions labeled 2.0cN, and *those* precede 2.0. Announcements of new software releases and events can be found in comp.lang.python.announce, a low-traffic moderated list that receives about five postings per day.  It's available as `the python-announce mailing list <https://mail.python.org/mailman/listinfo/python-announce-list>`_. Are there any books on Python? Are there any published articles about Python that I can reference? Are there copyright restrictions on the use of Python? Consult `the Beginner's Guide <https://wiki.python.org/moin/BeginnersGuide>`_ to find information for beginning Python programmers, including lists of tutorials. Consult the `Getting Started section of the Python Developer's Guide <https://devguide.python.org/setup/>`__ for more information on getting the source code and compiling it. Contents Do I have to like "Monty Python's Flying Circus"? Donations to the PSF are tax-exempt in the US.  If you use Python and find it helpful, please contribute via `the PSF donation page <https://www.python.org/psf/donations/>`_. During the 1989 Christmas holidays, I had a lot of time on my hand, so I decided to give it a try.  During the next year, while still mostly working on it in my own time, Python was used in the Amoeba project with increasing success, and the feedback from colleagues made me add many early improvements. For a student who has never programmed before, using a statically typed language seems unnatural.  It presents additional complexity that the student must master and slows the pace of the course.  The students are trying to learn to think like a computer, decompose problems, design consistent interfaces, and encapsulate data.  While learning to use a statically typed language is important in the long term, it is not necessarily the best topic to address in the students' first programming course. For more information on how Python is developed, consult `the Python Developer's Guide <https://devguide.python.org/>`_. General Information General Python FAQ Guido van Rossum and Jelke de Boer, "Interactively Testing Remote Servers Using the Python Programming Language", CWI Quarterly, Volume 4, Issue 4 (December 1991), Amsterdam, pp 283--303. Have any significant projects been done in Python? Here's a *very* brief summary of what started it all, written by Guido van Rossum: High-profile Python projects include `the Mailman mailing list manager <http://www.list.org>`_ and `the Zope application server <http://www.zope.org>`_.  Several Linux distributions, most notably `Red Hat <https://www.redhat.com>`_, have written part or all of their installer and system administration software in Python.  Companies that use Python internally include Google, Yahoo, and Lucasfilm Ltd. How do I get a beta test version of Python? How do I get documentation on Python? How do I obtain a copy of the Python source? How do I submit bug reports and patches for Python? How does the Python version numbering scheme work? How many people are using Python? How stable is Python? I had a number of gripes about the ABC language, but also liked many of its features.  It was impossible to extend the ABC language (or its implementation) to remedy my complaints -- in fact its lack of extensibility was one of its biggest problems.  I had some experience with using Modula-2+ and talked with the designers of Modula-3 and read the Modula-3 report. Modula-3 is the origin of the syntax and semantics used for exceptions, and some other Python features. I had extensive experience with implementing an interpreted language in the ABC group at CWI, and from working with this group I had learned a lot about language design.  This is the origin of many Python features, including the use of indentation for statement grouping and the inclusion of very-high-level data types (although the details are all different in Python). I was working in the Amoeba distributed operating system group at CWI.  We needed a better way to do system administration than by writing either C programs or Bourne shell scripts, since Amoeba had its own system call interface which wasn't easily accessible from the Bourne shell.  My experience with error handling in Amoeba made me acutely aware of the importance of exceptions as a programming language feature. I've never programmed before. Is there a Python tutorial? If you want to discuss Python's use in education, you may be interested in joining `the edu-sig mailing list <https://www.python.org/community/sigs/current/edu-sig>`_. In February 1991, after just over a year of development, I decided to post to USENET.  The rest is in the ``Misc/HISTORY`` file. In general, no.  There are already millions of lines of Python code around the world, so any change in the language that invalidates more than a very small fraction of existing programs has to be frowned upon.  Even if you can provide a conversion program, there's still the problem of updating all documentation; many books have been written about Python, and we don't want to invalidate them all at a single stroke. Is Python a good language for beginning programmers? Is it reasonable to propose incompatible changes to Python? Is there a newsgroup or mailing list devoted to Python? It is still common to start students with a procedural and statically typed language such as Pascal, C, or a subset of C++ or Java.  Students may be better served by learning Python as their first language.  Python has a very simple and consistent syntax and a large standard library and, most importantly, using Python in a beginning programming course lets students concentrate on important programming skills such as problem decomposition and data type design.  With Python, students can be quickly introduced to basic concepts such as loops and procedures.  They can probably even work with user-defined objects in their very first course. It occurred to me that a scripting language with a syntax like ABC but with access to the Amoeba system calls would fill the need.  I realized that it would be foolish to write an Amoeba-specific language, so I decided that I needed a language that was generally extensible. It's probably best to cite your favorite book about Python. Many other aspects of Python make it a good first language.  Like Java, Python has a large standard library so that students can be assigned programming projects very early in the course that *do* something.  Assignments aren't restricted to the standard four-function calculator and check balancing programs.  By using the standard library, students can gain the satisfaction of working on realistic applications as they learn the fundamentals of programming. Using the standard library also teaches students about code reuse.  Third-party modules such as PyGame are also helpful in extending the students' reach. More info about other mailing lists and newsgroups can be found at https://www.python.org/community/lists/. New development is discussed on `the python-dev mailing list <https://mail.python.org/mailman/listinfo/python-dev/>`_. No, but it helps.  :) Not all releases are bugfix releases.  In the run-up to a new major release, a series of development releases are made, denoted as alpha, beta, or release candidate.  Alphas are early releases in which interfaces aren't yet finalized; it's not unexpected to see an interface change between two alpha releases. Betas are more stable, preserving existing interfaces but possibly adding new modules, and release candidates are frozen, making no changes except as needed to fix critical bugs. Providing a gradual upgrade path is necessary if a feature has to be changed. :pep:`5` describes the procedure followed for introducing backward-incompatible changes while minimizing disruption for users. Python in the real world Python is a high-level general-purpose programming language that can be applied to many different classes of problems. Python is an interpreted, interactive, object-oriented programming language.  It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes.  Python combines remarkable power with very clear syntax. It has interfaces to many system calls and libraries, as well as to various window systems, and is extensible in C or C++.  It is also usable as an extension language for applications that need a programmable interface. Finally, Python is portable: it runs on many Unix variants, on the Mac, and on Windows 2000 and later. Python is available for free download, so there are no sales figures, and it's available from many different sites and packaged with many Linux distributions, so download statistics don't tell the whole story either. Python versions are numbered A.B.C or A.B.  A is the major version number -- it is only incremented for really major changes in the language.  B is the minor version number, incremented for less earth-shattering changes.  C is the micro-level -- it is incremented for each bugfix release.  See :pep:`6` for more information about bugfix releases. Python's interactive interpreter enables students to test language features while they're programming.  They can keep a window with the interpreter running while they enter their program's source in another window.  If they can't remember the methods for a list, they can do something like this:: See `the PSF license page <https://www.python.org/psf/license/>`_ to find further explanations and a link to the full text of the license. See also the documentation for :data:`sys.version`, :data:`sys.hexversion`, and :data:`sys.version_info`. See https://www.python.org/about/success for a list of projects that use Python. Consulting the proceedings for `past Python conferences <https://www.python.org/community/workshops/>`_ will reveal contributions from many different companies and organizations. See https://www.python.org/dev/peps/ for the Python Enhancement Proposals (PEPs). PEPs are design documents describing a suggested new feature for Python, providing a concise technical specification and a rationale.  Look for a PEP titled "Python X.Y Release Schedule", where X.Y is a version that hasn't been publicly released yet. The Python Software Foundation is an independent non-profit organization that holds the copyright on Python versions 2.1 and newer.  The PSF's mission is to advance open source technology related to the Python programming language and to publicize the use of Python.  The PSF's home page is at https://www.python.org/psf/. The Python logo is trademarked, and in certain cases permission is required to use it.  Consult `the Trademark Usage Policy <https://www.python.org/psf/trademarks/>`__ for more information. The Python project's infrastructure is located all over the world. `www.python.org <https://www.python.org>`_ is graciously hosted by `Rackspace <https://www.rackspace.com>`_, with CDN caching provided by `Fastly <https://www.fastly.com>`_.  `Upfront Systems <http://www.upfrontsoftware.co.za>`_ hosts `bugs.python.org <https://bugs.python.org>`_.  Many other Python services like `the Wiki <https://wiki.python.org>`_ are hosted by `Oregon State University Open Source Lab <https://osuosl.org>`_. The comp.lang.python newsgroup is very active, but not all Python users post to the group or even read it. The developers issue "bugfix" releases of older versions, so the stability of existing releases gradually improves.  Bugfix releases, indicated by a third component of the version number (e.g. 3.5.3, 3.6.2), are managed for stability; only fixes for known problems are included in a bugfix release, and it's guaranteed that interfaces will remain the same throughout a series of bugfix releases. The documentation is written in reStructuredText and processed by `the Sphinx documentation tool <http://sphinx-doc.org/>`__.  The reStructuredText source for the documentation is part of the Python source distribution. The language comes with a large standard library that covers areas such as string processing (regular expressions, Unicode, calculating differences between files), Internet protocols (HTTP, FTP, SMTP, XML-RPC, POP, IMAP, CGI programming), software engineering (unit testing, logging, profiling, parsing Python code), and operating system interfaces (system calls, filesystems, TCP/IP sockets).  Look at the table of contents for :ref:`library-index` to get an idea of what's available.  A wide variety of third-party extensions are also available.  Consult `the Python Package Index <https://pypi.org>`_ to find packages of interest to you. The latest Python source distribution is always available from python.org, at https://www.python.org/downloads/.  The latest development sources can be obtained at https://github.com/python/cpython/. The latest stable releases can always be found on the `Python download page <https://www.python.org/downloads/>`_.  There are two production-ready version of Python: 2.x and 3.x, but the recommended one at this times is Python 3.x. Although Python 2.x is still widely used, `it will not be maintained after January 1, 2020 <https://www.python.org/dev/peps/pep-0373/>`_. Python 2.x was known for having more third-party libraries available, however, by the time of this writing, most of the widely used libraries support Python 3.x, and some are even dropping the Python 2.x support. The source distribution is a gzipped tar file containing the complete C source, Sphinx-formatted documentation, Python library modules, example programs, and several useful pieces of freely distributable software.  The source will compile and run out of the box on most UNIX platforms. The standard documentation for the current stable version of Python is available at https://docs.python.org/3/.  PDF, plain text, and downloadable HTML versions are also available at https://docs.python.org/3/download.html. The very first article about Python was written in 1991 and is now quite outdated. There are also good IDEs for Python.  IDLE is a cross-platform IDE for Python that is written in Python using Tkinter.  PythonWin is a Windows-specific IDE. Emacs users will be happy to know that there is a very good Python mode for Emacs.  All of these programming environments provide syntax highlighting, auto-indenting, and access to the interactive interpreter while coding.  Consult `the Python wiki <https://wiki.python.org/moin/PythonEditors>`_ for a full list of Python editing environments. There are numerous tutorials and books available.  The standard documentation includes :ref:`tutorial-index`. There are probably tens of thousands of users, though it's difficult to obtain an exact count. There is a newsgroup, :newsgroup:`comp.lang.python`, and a mailing list, `python-list <https://mail.python.org/mailman/listinfo/python-list>`_.  The newsgroup and mailing list are gatewayed into each other -- if you can read news it's unnecessary to subscribe to the mailing list. :newsgroup:`comp.lang.python` is high-traffic, receiving hundreds of postings every day, and Usenet readers are often more able to cope with this volume. To find out more, start with :ref:`tutorial-index`.  The `Beginner's Guide to Python <https://wiki.python.org/moin/BeginnersGuide>`_ links to other introductory tutorials and resources for learning Python. To report a bug or submit a patch, please use the Roundup installation at https://bugs.python.org/. Very stable.  New, stable releases have been coming out roughly every 6 to 18 months since 1991, and this seems likely to continue.  Currently there are usually around 18 months between major releases. What is Python good for? What is Python? What is the Python Software Foundation? What new developments are expected for Python in the future? When he began implementing Python, Guido van Rossum was also reading the published scripts from `"Monty Python's Flying Circus" <https://en.wikipedia.org/wiki/Monty_Python>`__, a BBC comedy series from the 1970s.  Van Rossum thought he needed a name that was short, unique, and slightly mysterious, so he decided to call the language Python. Where in the world is www.python.org located? Why is it called Python? Why was Python created in the first place? With the interpreter, documentation is never far from the student as they are programming. Yes, there are many, and more are being published.  See the python.org wiki at https://wiki.python.org/moin/PythonBooks for a list. Yes. You can also access the development version of Python through Git.  See `The Python Developer's Guide <https://devguide.python.org/>`_ for details. You can also search online bookstores for "Python" and filter out the Monty Python references; or perhaps search for "Python" and "language". You can do anything you want with the source, as long as you leave the copyrights in and display those copyrights in any documentation about Python that you produce.  If you honor the copyright rules, it's OK to use Python for commercial use, to sell copies of Python in source or binary form (modified or unmodified), or to sell products that incorporate Python in some form.  We would still like to know about all commercial use of Python, of course. You may also find version numbers with a "+" suffix, e.g. "2.2+".  These are unreleased versions, built directly from the CPython development repository.  In practice, after a final minor release is made, the version is incremented to the next minor version, which becomes the "a0" version, e.g. "2.4a0". You must have a Roundup account to report bugs; this makes it possible for us to contact you if we have follow-up questions.  It will also enable Roundup to send you updates as we act on your bug. If you had previously used SourceForge to report bugs to Python, you can obtain your Roundup password through Roundup's `password reset procedure <https://bugs.python.org/user?@template=forgotten>`_. 