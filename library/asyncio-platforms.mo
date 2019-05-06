��          �               �  9   �  9   �  �   !  w   �  W     ~   u  Y   �  �   N  �   �     �  @   �  *   �  k  �     j     �     �  R     B   l  �   �  �   t	    %
     3     ;     A  �  O  9   �  9     �   E  w   �  W   A  ~   �  Y     �   r  �        �  @   �  *   �  k  "     �            R   =  B   �  �   �  �   �    I     W     _     e   :class:`ProactorEventLoop` has the following limitations: :class:`SelectorEventLoop` has the following limitations: :class:`SelectorEventLoop` on Windows does not support subproceses. On Windows, :class:`ProactorEventLoop` should be used instead:: :class:`~selectors.SelectSelector` is used to wait on socket events: it supports sockets and is limited to 512 sockets. :meth:`loop.add_reader` and :meth:`loop.add_writer` cannot be used to monitor file I/O. :meth:`loop.add_reader` and :meth:`loop.add_writer` only accept socket handles (e.g. pipe file descriptors are not supported). :meth:`loop.add_signal_handler` and :meth:`loop.remove_signal_handler` are not supported. :meth:`loop.create_unix_connection` and :meth:`loop.create_unix_server` are not supported. The :data:`socket.AF_UNIX` socket family is specific to Unix. :ref:`Subprocesses <asyncio-subprocess>` are not supported, i.e. :meth:`loop.subprocess_exec` and :meth:`loop.subprocess_shell` methods are not implemented. All Platforms All event loops on Windows do not support the following methods: Modern macOS versions are fully supported. On macOS 10.6, 10.7 and 10.8, the default event loop uses :class:`selectors.KqueueSelector`, which does not support character devices on these versions.  The :class:`SelectorEventLoop` can be manually configured to use :class:`~selectors.SelectSelector` or :class:`~selectors.PollSelector` to support character devices on these older versions of macOS.  Example:: Pipes are not supported, so the :meth:`loop.connect_read_pipe` and :meth:`loop.connect_write_pipe` methods are not implemented. Platform Support Subprocess Support on Windows The :meth:`loop.add_reader` and :meth:`loop.add_writer` methods are not supported. The :meth:`loop.create_datagram_endpoint` method is not supported. The :meth:`policy.set_child_watcher() <AbstractEventLoopPolicy.set_child_watcher>` function is also not supported, as :class:`ProactorEventLoop` has a different mechanism to watch child processes. The :mod:`asyncio` module is designed to be portable, but some platforms have subtle differences and limitations due to the platforms' underlying architecture and capabilities. The resolution of the monotonic clock on Windows is usually around 15.6 msec.  The best resolution is 0.5 msec. The resolution depends on the hardware (availability of `HPET <https://en.wikipedia.org/wiki/High_Precision_Event_Timer>`_) and on the Windows configuration. Windows macOS macOS <= 10.8 Project-Id-Version: Python 3.7
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
 :class:`ProactorEventLoop` has the following limitations: :class:`SelectorEventLoop` has the following limitations: :class:`SelectorEventLoop` on Windows does not support subproceses. On Windows, :class:`ProactorEventLoop` should be used instead:: :class:`~selectors.SelectSelector` is used to wait on socket events: it supports sockets and is limited to 512 sockets. :meth:`loop.add_reader` and :meth:`loop.add_writer` cannot be used to monitor file I/O. :meth:`loop.add_reader` and :meth:`loop.add_writer` only accept socket handles (e.g. pipe file descriptors are not supported). :meth:`loop.add_signal_handler` and :meth:`loop.remove_signal_handler` are not supported. :meth:`loop.create_unix_connection` and :meth:`loop.create_unix_server` are not supported. The :data:`socket.AF_UNIX` socket family is specific to Unix. :ref:`Subprocesses <asyncio-subprocess>` are not supported, i.e. :meth:`loop.subprocess_exec` and :meth:`loop.subprocess_shell` methods are not implemented. All Platforms All event loops on Windows do not support the following methods: Modern macOS versions are fully supported. On macOS 10.6, 10.7 and 10.8, the default event loop uses :class:`selectors.KqueueSelector`, which does not support character devices on these versions.  The :class:`SelectorEventLoop` can be manually configured to use :class:`~selectors.SelectSelector` or :class:`~selectors.PollSelector` to support character devices on these older versions of macOS.  Example:: Pipes are not supported, so the :meth:`loop.connect_read_pipe` and :meth:`loop.connect_write_pipe` methods are not implemented. Platform Support Subprocess Support on Windows The :meth:`loop.add_reader` and :meth:`loop.add_writer` methods are not supported. The :meth:`loop.create_datagram_endpoint` method is not supported. The :meth:`policy.set_child_watcher() <AbstractEventLoopPolicy.set_child_watcher>` function is also not supported, as :class:`ProactorEventLoop` has a different mechanism to watch child processes. The :mod:`asyncio` module is designed to be portable, but some platforms have subtle differences and limitations due to the platforms' underlying architecture and capabilities. The resolution of the monotonic clock on Windows is usually around 15.6 msec.  The best resolution is 0.5 msec. The resolution depends on the hardware (availability of `HPET <https://en.wikipedia.org/wiki/High_Precision_Event_Timer>`_) and on the Windows configuration. Windows macOS macOS <= 10.8 