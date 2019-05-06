��    [      �              �  �   �  f   n  N   �  �   $  6   �  o     o   s  m   �  o   Q	  j   �	  n   ,
  )   �
  �   �
  ,   U  C  �    �    �  n   �  p   c  v   �  (   K  �  t  N   n  E   �  �     �   �    �  V   �  e   �  �   V  �   V       #     �   3  j   �     d  �  r  �   $  �  �  �  �  u  �  �  !  �   �"     e#     u#  �   �#  �  M$  :   �%  6   &  Z  Q&    �'  �   �(  �  �)  E   �+     �+  D   �+  r   6,  ?   �,  A   �,  @   +-  [   l-  �  �-  n  �/  �   1  v  2     {3  �   �3    u4    x6  ]  �7  /   �8  9   #9  H   ]9  �   �9  �   D:  :    ;    ;;  �   B<  u   '=  q   �=  6   >  �   F>  [   ?  S   j?    �?  A   �@  �   A  '  �A  �   �B  i  �C  �  �D  �   }F  f   G  N   �G  �   �G  6   |H  o   �H  o   #I  m   �I  o   J  j   qJ  n   �J  )   KK  �   uK  ,   L  C  2L    vM    �N  n   �O  p   P  v   �P  (   �P  �  $Q  N   S  E   mS  �   �S  �   hT    0U  V   IV  e   �V  �   W  �   X     �X  #   �X  �   �X  j   �Y     Z  �  "Z  �   �[  �  i\  �  d^  u  Y`  �  �a  �   Qc     d     %d  �   5d  �  �d  :   �f  6   �f  Z  g    \h  �   |i  �  nj  E   Al     �l  D   �l  r   �l  ?   Ym  A   �m  @   �m  [   n  �  xn  n  [p  �   �q  v  �r     +t  �   ?t    %u    (w  ]  Ex  /   �y  9   �y  H   z  �   Vz  �   �z  :   �{    �{  �   �|  u   �}  q   M~  6   �~  �   �~  [   �  S   �    n�  A   ��  �   ǁ  '  h�  �   ��  i  A�   *mask* is a set of signal numbers (e.g. {:const:`signal.SIGINT`, :const:`signal.SIGTERM`}). Use ``range(1, signal.NSIG)`` for a full mask including all signals. :data:`SIG_BLOCK`: The set of blocked signals is the union of the current set and the *mask* argument. :data:`SIG_SETMASK`: The set of blocked signals is set to the *mask* argument. :data:`SIG_UNBLOCK`: The signals in *mask* are removed from the current set of blocked signals.  It is permissible to attempt to unblock a signal which is not blocked. :mod:`signal` --- Set handlers for asynchronous events :ref:`Availability <availability>`: Unix (see the man page :manpage:`pthread_kill(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`siginterrupt(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigpending(2)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigtimedwait(2)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigwait(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigwaitinfo(2)` for further information). :ref:`Availability <availability>`: Unix. :ref:`Availability <availability>`: Unix. See the man page :manpage:`sigprocmask(3)` and :manpage:`pthread_sigmask(3)` for further information. :ref:`Availability <availability>`: Windows. A Python signal handler does not get executed inside the low-level (C) signal handler.  Instead, the low-level signal handler sets a flag which tells the :term:`virtual machine` to execute the corresponding Python signal handler at a later point(for example at the next :term:`bytecode` instruction). This has consequences: A handler for a particular signal, once set, remains installed until it is explicitly reset (Python emulates the BSD style interface regardless of the underlying implementation), with the exception of the handler for :const:`SIGCHLD`, which follows the underlying implementation. A long-running calculation implemented purely in C (such as regular expression matching on a large body of text) may run uninterrupted for an arbitrary amount of time, regardless of any signals received.  The Python signal handlers will be called when the calculation finishes. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that signals are to be blocked. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that signals are to be unblocked. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that the signal mask is to be replaced. Added ``warn_on_full_buffer`` parameter. All the signal numbers are defined symbolically.  For example, the hangup signal is defined as :const:`signal.SIGHUP`; the variable names are identical to the names used in C programs, as found in ``<signal.h>``. The Unix man page for ':c:func:`signal`' lists the existing signals (on some systems this is :manpage:`signal(2)`, on others the list is in :manpage:`signal(7)`). Note that not all systems define the same set of signal names; only those names defined by the system are defined by this module. Attempting to pass an invalid interval timer will cause an :exc:`ItimerError`. Besides, only the main thread is allowed to set a new signal handler. Cause the process to sleep until a signal is received; the appropriate handler will then be called.  Returns nothing.  Not on Windows. (See the Unix man page :manpage:`signal(2)`.) Change system call restart behaviour: if *flag* is :const:`False`, system calls will be restarted when interrupted by signal *signalnum*, otherwise system calls will be interrupted.  Returns nothing. Decrements interval timer both when the process executes and when the system is executing on behalf of the process. Coupled with ITIMER_VIRTUAL, this timer is usually used to profile the time spent by the application in user and kernel space. SIGPROF is delivered upon expiration. Decrements interval timer in real time, and delivers :const:`SIGALRM` upon expiration. Decrements interval timer only when the process is executing, and delivers SIGVTALRM upon expiration. Do not set :const:`SIGPIPE`'s disposition to :const:`SIG_DFL` in order to avoid :exc:`BrokenPipeError`.  Doing that would cause your program to exit unexpectedly also whenever any socket connection is interrupted while your program is still writing to it. Examine the set of signals that are pending for delivery to the calling thread (i.e., the signals which have been raised while blocked).  Return the set of the pending signals. Example Execution of Python signal handlers Fetch and/or change the signal mask of the calling thread.  The signal mask is the set of signals whose delivery is currently blocked for the caller. Return the old signal mask as a set of signals. For example, ``signal.pthread_sigmask(signal.SIG_BLOCK, [])`` reads the signal mask of the calling thread. General rules Here is a minimal example program. It uses the :func:`alarm` function to limit the time spent waiting to open a file; this is useful if the file is for a serial device that may not be turned on, which would normally cause the :func:`os.open` to hang indefinitely.  The solution is to set a 5-second alarm before opening the file; if the operation takes too long, the alarm signal will be sent, and the handler raises an exception. :: If *signalnum* is 0, then no signal is sent, but error checking is still performed; this can be used to check if the target thread is still running. If *time* is non-zero, this function requests that a :const:`SIGALRM` signal be sent to the process in *time* seconds. Any previously scheduled alarm is canceled (only one alarm can be scheduled at any time).  The returned value is then the number of seconds before any previously set alarm was to have been delivered. If *time* is zero, no alarm is scheduled, and any scheduled alarm is canceled.  If the return value is zero, no alarm is currently scheduled.  (See the Unix man page :manpage:`alarm(2)`.) In the first approach, we read the data out of the fd's buffer, and the byte values give you the signal numbers. This is simple, but in rare cases it can run into a problem: generally the fd will have a limited amount of buffer space, and if too many signals arrive too quickly, then the buffer may become full, and some signals may be lost. If you use this approach, then you should set ``warn_on_full_buffer=True``, which will at least cause a warning to be printed to stderr when signals are lost. In the second approach, we use the wakeup fd *only* for wakeups, and ignore the actual byte values. In this case, all we care about is whether the fd's buffer is empty or non-empty; a full buffer doesn't indicate a problem at all. If you use this approach, then you should set ``warn_on_full_buffer=False``, so that your users are not confused by spurious warning messages. It makes little sense to catch synchronous errors like :const:`SIGFPE` or :const:`SIGSEGV` that are caused by an invalid operation in C code.  Python will return from the signal handler to the C code, which is likely to raise the same signal again, causing Python to apparently hang.  From Python 3.3 onwards, you can use the :mod:`faulthandler` module to report on synchronous errors. Like :func:`sigwaitinfo`, but takes an additional *timeout* argument specifying a timeout. If *timeout* is specified as :const:`0`, a poll is performed. Returns :const:`None` if a timeout occurs. Module contents Note on SIGPIPE Note that installing a signal handler with :func:`signal` will reset the restart behaviour to interruptible by implicitly calling :c:func:`siginterrupt` with a true *flag* value for the given signal. On Windows, :func:`signal` can only be called with :const:`SIGABRT`, :const:`SIGFPE`, :const:`SIGILL`, :const:`SIGINT`, :const:`SIGSEGV`, :const:`SIGTERM`, or :const:`SIGBREAK`. A :exc:`ValueError` will be raised in any other case. Note that not all systems define the same set of signal names; an :exc:`AttributeError` will be raised if a signal name is not defined as ``SIG*`` module level constant. On Windows, the function now also supports socket handles. One more than the number of the highest signal number. Piping output of your program to tools like :manpage:`head(1)` will cause a :const:`SIGPIPE` signal to be sent to your process when the receiver of its standard output closes early.  This results in an exception like :code:`BrokenPipeError: [Errno 32] Broken pipe`.  To handle this case, wrap your entry point to catch this exception as follows:: Python signal handlers are always executed in the main Python thread, even if the signal was received in another thread.  This means that signals can't be used as a means of inter-thread communication.  You can use the synchronization primitives from the :mod:`threading` module instead. Raised to signal an error from the underlying :func:`setitimer` or :func:`getitimer` implementation. Expect this error if an invalid interval timer or a negative time is passed to :func:`setitimer`. This error is a subtype of :exc:`OSError`. Return the current signal handler for the signal *signalnum*. The returned value may be a callable Python object, or one of the special values :const:`signal.SIG_IGN`, :const:`signal.SIG_DFL` or :const:`None`.  Here, :const:`signal.SIG_IGN` means that the signal was previously ignored, :const:`signal.SIG_DFL` means that the default way of handling the signal was previously in use, and ``None`` means that the previous signal handler was not installed from Python. Returns current value of a given interval timer specified by *which*. See also :func:`os.kill`. See also :func:`pause`, :func:`pthread_sigmask` and :func:`sigwait`. See also :func:`pause`, :func:`pthread_sigmask`, :func:`sigpending`, :func:`sigwaitinfo` and :func:`sigtimedwait`. See also :func:`pause`, :func:`sigpending` and :func:`sigwait`. See also :func:`pause`, :func:`sigwait` and :func:`sigtimedwait`. See also :func:`pause`, :func:`sigwait` and :func:`sigwaitinfo`. See also :func:`sigwait`, :func:`sigwaitinfo`, :func:`sigtimedwait` and :func:`sigpending`. Send the signal *signalnum* to the thread *thread_id*, another thread in the same process as the caller.  The target thread can be executing any code (Python or not).  However, if the target thread is executing the Python interpreter, the Python signal handlers will be :ref:`executed by the main thread <signals-and-threads>`.  Therefore, the only point of sending a signal to a particular Python thread would be to force a running system call to fail with :exc:`InterruptedError`. Set the handler for signal *signalnum* to the function *handler*.  *handler* can be a callable Python object taking two arguments (see below), or one of the special values :const:`signal.SIG_IGN` or :const:`signal.SIG_DFL`.  The previous signal handler will be returned (see the description of :func:`getsignal` above).  (See the Unix man page :manpage:`signal(2)`.) Set the wakeup file descriptor to *fd*.  When a signal is received, the signal number is written as a single byte into the fd.  This can be used by a library to wakeup a poll or select call, allowing the signal to be fully processed. Sets given interval timer (one of :const:`signal.ITIMER_REAL`, :const:`signal.ITIMER_VIRTUAL` or :const:`signal.ITIMER_PROF`) specified by *which* to fire after *seconds* (float is accepted, different from :func:`alarm`) and after that every *interval* seconds (if *interval* is non-zero). The interval timer specified by *which* can be cleared by setting *seconds* to zero. Signals and threads Suspend execution of the calling thread until the delivery of one of the signals specified in the signal set *sigset*.  The function accepts the signal (removes it from the pending list of signals), and returns the signal number. Suspend execution of the calling thread until the delivery of one of the signals specified in the signal set *sigset*.  The function accepts the signal and removes it from the pending list of signals. If one of the signals in *sigset* is already pending for the calling thread, the function will return immediately with information about that signal. The signal handler is not called for the delivered signal. The function raises an :exc:`InterruptedError` if it is interrupted by a signal that is not in *sigset*. The *handler* is called with two arguments: the signal number and the current stack frame (``None`` or a frame object; for a description of frame objects, see the :ref:`description in the type hierarchy <frame-objects>` or see the attribute descriptions in the :mod:`inspect` module). The :func:`signal.signal` function allows defining custom handlers to be executed when a signal is received.  A small number of default handlers are installed: :const:`SIGPIPE` is ignored (so write errors on pipes and sockets can be reported as ordinary Python exceptions) and :const:`SIGINT` is translated into a :exc:`KeyboardInterrupt` exception. The :mod:`signal` module defines one exception: The :mod:`signal` module defines the following functions: The behavior of the call is dependent on the value of *how*, as follows. The function is now retried if interrupted by a signal not in *sigset* and the signal handler does not raise an exception (see :pep:`475` for the rationale). The function is now retried with the recomputed *timeout* if interrupted by a signal not in *sigset* and the signal handler does not raise an exception (see :pep:`475` for the rationale). The old values are returned as a tuple: (delay, interval). The old wakeup fd is returned (or -1 if file descriptor wakeup was not enabled).  If *fd* is -1, file descriptor wakeup is disabled. If not -1, *fd* must be non-blocking.  It is up to the library to remove any bytes from *fd* before calling poll or select again. The return value is an object representing the data contained in the :c:type:`siginfo_t` structure, namely: :attr:`si_signo`, :attr:`si_code`, :attr:`si_errno`, :attr:`si_pid`, :attr:`si_uid`, :attr:`si_status`, :attr:`si_band`. The signal corresponding to the :kbd:`Ctrl+Break` keystroke event. This signal can only be used with :func:`os.kill`. The signal corresponding to the :kbd:`Ctrl+C` keystroke event. This signal can only be used with :func:`os.kill`. The variables defined in the :mod:`signal` module are: There are two common ways to use this function. In both approaches, you use the fd to wake up when a signal arrives, but then they differ in how they determine *which* signal or signals have arrived. This error used to be a subtype of :exc:`IOError`, which is now an alias of :exc:`OSError`. This is another standard signal handler, which will simply ignore the given signal. This is one of two standard signal handling options; it will simply perform the default function for the signal.  For example, on most systems the default action for :const:`SIGQUIT` is to dump core and exit, while the default action for :const:`SIGCHLD` is to simply ignore it. This module provides mechanisms to use signal handlers in Python. Use :func:`threading.get_ident()` or the :attr:`~threading.Thread.ident` attribute of :class:`threading.Thread` objects to get a suitable value for *thread_id*. When an interval timer fires, a signal is sent to the process. The signal sent is dependent on the timer being used; :const:`signal.ITIMER_REAL` will deliver :const:`SIGALRM`, :const:`signal.ITIMER_VIRTUAL` sends :const:`SIGVTALRM`, and :const:`signal.ITIMER_PROF` will deliver :const:`SIGPROF`. When threads are enabled, this function can only be called from the main thread; attempting to call it from other threads will cause a :exc:`ValueError` exception to be raised. signal (SIG*), handler (:const:`SIG_DFL`, :const:`SIG_IGN`) and sigmask (:const:`SIG_BLOCK`, :const:`SIG_UNBLOCK`, :const:`SIG_SETMASK`) related constants listed below were turned into :class:`enums <enum.IntEnum>`. :func:`getsignal`, :func:`pthread_sigmask`, :func:`sigpending` and :func:`sigwait` functions return human-readable :class:`enums <enum.IntEnum>`. Project-Id-Version: Python 3.7
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
 *mask* is a set of signal numbers (e.g. {:const:`signal.SIGINT`, :const:`signal.SIGTERM`}). Use ``range(1, signal.NSIG)`` for a full mask including all signals. :data:`SIG_BLOCK`: The set of blocked signals is the union of the current set and the *mask* argument. :data:`SIG_SETMASK`: The set of blocked signals is set to the *mask* argument. :data:`SIG_UNBLOCK`: The signals in *mask* are removed from the current set of blocked signals.  It is permissible to attempt to unblock a signal which is not blocked. :mod:`signal` --- Set handlers for asynchronous events :ref:`Availability <availability>`: Unix (see the man page :manpage:`pthread_kill(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`siginterrupt(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigpending(2)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigtimedwait(2)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigwait(3)` for further information). :ref:`Availability <availability>`: Unix (see the man page :manpage:`sigwaitinfo(2)` for further information). :ref:`Availability <availability>`: Unix. :ref:`Availability <availability>`: Unix. See the man page :manpage:`sigprocmask(3)` and :manpage:`pthread_sigmask(3)` for further information. :ref:`Availability <availability>`: Windows. A Python signal handler does not get executed inside the low-level (C) signal handler.  Instead, the low-level signal handler sets a flag which tells the :term:`virtual machine` to execute the corresponding Python signal handler at a later point(for example at the next :term:`bytecode` instruction). This has consequences: A handler for a particular signal, once set, remains installed until it is explicitly reset (Python emulates the BSD style interface regardless of the underlying implementation), with the exception of the handler for :const:`SIGCHLD`, which follows the underlying implementation. A long-running calculation implemented purely in C (such as regular expression matching on a large body of text) may run uninterrupted for an arbitrary amount of time, regardless of any signals received.  The Python signal handlers will be called when the calculation finishes. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that signals are to be blocked. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that signals are to be unblocked. A possible value for the *how* parameter to :func:`pthread_sigmask` indicating that the signal mask is to be replaced. Added ``warn_on_full_buffer`` parameter. All the signal numbers are defined symbolically.  For example, the hangup signal is defined as :const:`signal.SIGHUP`; the variable names are identical to the names used in C programs, as found in ``<signal.h>``. The Unix man page for ':c:func:`signal`' lists the existing signals (on some systems this is :manpage:`signal(2)`, on others the list is in :manpage:`signal(7)`). Note that not all systems define the same set of signal names; only those names defined by the system are defined by this module. Attempting to pass an invalid interval timer will cause an :exc:`ItimerError`. Besides, only the main thread is allowed to set a new signal handler. Cause the process to sleep until a signal is received; the appropriate handler will then be called.  Returns nothing.  Not on Windows. (See the Unix man page :manpage:`signal(2)`.) Change system call restart behaviour: if *flag* is :const:`False`, system calls will be restarted when interrupted by signal *signalnum*, otherwise system calls will be interrupted.  Returns nothing. Decrements interval timer both when the process executes and when the system is executing on behalf of the process. Coupled with ITIMER_VIRTUAL, this timer is usually used to profile the time spent by the application in user and kernel space. SIGPROF is delivered upon expiration. Decrements interval timer in real time, and delivers :const:`SIGALRM` upon expiration. Decrements interval timer only when the process is executing, and delivers SIGVTALRM upon expiration. Do not set :const:`SIGPIPE`'s disposition to :const:`SIG_DFL` in order to avoid :exc:`BrokenPipeError`.  Doing that would cause your program to exit unexpectedly also whenever any socket connection is interrupted while your program is still writing to it. Examine the set of signals that are pending for delivery to the calling thread (i.e., the signals which have been raised while blocked).  Return the set of the pending signals. Example Execution of Python signal handlers Fetch and/or change the signal mask of the calling thread.  The signal mask is the set of signals whose delivery is currently blocked for the caller. Return the old signal mask as a set of signals. For example, ``signal.pthread_sigmask(signal.SIG_BLOCK, [])`` reads the signal mask of the calling thread. General rules Here is a minimal example program. It uses the :func:`alarm` function to limit the time spent waiting to open a file; this is useful if the file is for a serial device that may not be turned on, which would normally cause the :func:`os.open` to hang indefinitely.  The solution is to set a 5-second alarm before opening the file; if the operation takes too long, the alarm signal will be sent, and the handler raises an exception. :: If *signalnum* is 0, then no signal is sent, but error checking is still performed; this can be used to check if the target thread is still running. If *time* is non-zero, this function requests that a :const:`SIGALRM` signal be sent to the process in *time* seconds. Any previously scheduled alarm is canceled (only one alarm can be scheduled at any time).  The returned value is then the number of seconds before any previously set alarm was to have been delivered. If *time* is zero, no alarm is scheduled, and any scheduled alarm is canceled.  If the return value is zero, no alarm is currently scheduled.  (See the Unix man page :manpage:`alarm(2)`.) In the first approach, we read the data out of the fd's buffer, and the byte values give you the signal numbers. This is simple, but in rare cases it can run into a problem: generally the fd will have a limited amount of buffer space, and if too many signals arrive too quickly, then the buffer may become full, and some signals may be lost. If you use this approach, then you should set ``warn_on_full_buffer=True``, which will at least cause a warning to be printed to stderr when signals are lost. In the second approach, we use the wakeup fd *only* for wakeups, and ignore the actual byte values. In this case, all we care about is whether the fd's buffer is empty or non-empty; a full buffer doesn't indicate a problem at all. If you use this approach, then you should set ``warn_on_full_buffer=False``, so that your users are not confused by spurious warning messages. It makes little sense to catch synchronous errors like :const:`SIGFPE` or :const:`SIGSEGV` that are caused by an invalid operation in C code.  Python will return from the signal handler to the C code, which is likely to raise the same signal again, causing Python to apparently hang.  From Python 3.3 onwards, you can use the :mod:`faulthandler` module to report on synchronous errors. Like :func:`sigwaitinfo`, but takes an additional *timeout* argument specifying a timeout. If *timeout* is specified as :const:`0`, a poll is performed. Returns :const:`None` if a timeout occurs. Module contents Note on SIGPIPE Note that installing a signal handler with :func:`signal` will reset the restart behaviour to interruptible by implicitly calling :c:func:`siginterrupt` with a true *flag* value for the given signal. On Windows, :func:`signal` can only be called with :const:`SIGABRT`, :const:`SIGFPE`, :const:`SIGILL`, :const:`SIGINT`, :const:`SIGSEGV`, :const:`SIGTERM`, or :const:`SIGBREAK`. A :exc:`ValueError` will be raised in any other case. Note that not all systems define the same set of signal names; an :exc:`AttributeError` will be raised if a signal name is not defined as ``SIG*`` module level constant. On Windows, the function now also supports socket handles. One more than the number of the highest signal number. Piping output of your program to tools like :manpage:`head(1)` will cause a :const:`SIGPIPE` signal to be sent to your process when the receiver of its standard output closes early.  This results in an exception like :code:`BrokenPipeError: [Errno 32] Broken pipe`.  To handle this case, wrap your entry point to catch this exception as follows:: Python signal handlers are always executed in the main Python thread, even if the signal was received in another thread.  This means that signals can't be used as a means of inter-thread communication.  You can use the synchronization primitives from the :mod:`threading` module instead. Raised to signal an error from the underlying :func:`setitimer` or :func:`getitimer` implementation. Expect this error if an invalid interval timer or a negative time is passed to :func:`setitimer`. This error is a subtype of :exc:`OSError`. Return the current signal handler for the signal *signalnum*. The returned value may be a callable Python object, or one of the special values :const:`signal.SIG_IGN`, :const:`signal.SIG_DFL` or :const:`None`.  Here, :const:`signal.SIG_IGN` means that the signal was previously ignored, :const:`signal.SIG_DFL` means that the default way of handling the signal was previously in use, and ``None`` means that the previous signal handler was not installed from Python. Returns current value of a given interval timer specified by *which*. See also :func:`os.kill`. See also :func:`pause`, :func:`pthread_sigmask` and :func:`sigwait`. See also :func:`pause`, :func:`pthread_sigmask`, :func:`sigpending`, :func:`sigwaitinfo` and :func:`sigtimedwait`. See also :func:`pause`, :func:`sigpending` and :func:`sigwait`. See also :func:`pause`, :func:`sigwait` and :func:`sigtimedwait`. See also :func:`pause`, :func:`sigwait` and :func:`sigwaitinfo`. See also :func:`sigwait`, :func:`sigwaitinfo`, :func:`sigtimedwait` and :func:`sigpending`. Send the signal *signalnum* to the thread *thread_id*, another thread in the same process as the caller.  The target thread can be executing any code (Python or not).  However, if the target thread is executing the Python interpreter, the Python signal handlers will be :ref:`executed by the main thread <signals-and-threads>`.  Therefore, the only point of sending a signal to a particular Python thread would be to force a running system call to fail with :exc:`InterruptedError`. Set the handler for signal *signalnum* to the function *handler*.  *handler* can be a callable Python object taking two arguments (see below), or one of the special values :const:`signal.SIG_IGN` or :const:`signal.SIG_DFL`.  The previous signal handler will be returned (see the description of :func:`getsignal` above).  (See the Unix man page :manpage:`signal(2)`.) Set the wakeup file descriptor to *fd*.  When a signal is received, the signal number is written as a single byte into the fd.  This can be used by a library to wakeup a poll or select call, allowing the signal to be fully processed. Sets given interval timer (one of :const:`signal.ITIMER_REAL`, :const:`signal.ITIMER_VIRTUAL` or :const:`signal.ITIMER_PROF`) specified by *which* to fire after *seconds* (float is accepted, different from :func:`alarm`) and after that every *interval* seconds (if *interval* is non-zero). The interval timer specified by *which* can be cleared by setting *seconds* to zero. Signals and threads Suspend execution of the calling thread until the delivery of one of the signals specified in the signal set *sigset*.  The function accepts the signal (removes it from the pending list of signals), and returns the signal number. Suspend execution of the calling thread until the delivery of one of the signals specified in the signal set *sigset*.  The function accepts the signal and removes it from the pending list of signals. If one of the signals in *sigset* is already pending for the calling thread, the function will return immediately with information about that signal. The signal handler is not called for the delivered signal. The function raises an :exc:`InterruptedError` if it is interrupted by a signal that is not in *sigset*. The *handler* is called with two arguments: the signal number and the current stack frame (``None`` or a frame object; for a description of frame objects, see the :ref:`description in the type hierarchy <frame-objects>` or see the attribute descriptions in the :mod:`inspect` module). The :func:`signal.signal` function allows defining custom handlers to be executed when a signal is received.  A small number of default handlers are installed: :const:`SIGPIPE` is ignored (so write errors on pipes and sockets can be reported as ordinary Python exceptions) and :const:`SIGINT` is translated into a :exc:`KeyboardInterrupt` exception. The :mod:`signal` module defines one exception: The :mod:`signal` module defines the following functions: The behavior of the call is dependent on the value of *how*, as follows. The function is now retried if interrupted by a signal not in *sigset* and the signal handler does not raise an exception (see :pep:`475` for the rationale). The function is now retried with the recomputed *timeout* if interrupted by a signal not in *sigset* and the signal handler does not raise an exception (see :pep:`475` for the rationale). The old values are returned as a tuple: (delay, interval). The old wakeup fd is returned (or -1 if file descriptor wakeup was not enabled).  If *fd* is -1, file descriptor wakeup is disabled. If not -1, *fd* must be non-blocking.  It is up to the library to remove any bytes from *fd* before calling poll or select again. The return value is an object representing the data contained in the :c:type:`siginfo_t` structure, namely: :attr:`si_signo`, :attr:`si_code`, :attr:`si_errno`, :attr:`si_pid`, :attr:`si_uid`, :attr:`si_status`, :attr:`si_band`. The signal corresponding to the :kbd:`Ctrl+Break` keystroke event. This signal can only be used with :func:`os.kill`. The signal corresponding to the :kbd:`Ctrl+C` keystroke event. This signal can only be used with :func:`os.kill`. The variables defined in the :mod:`signal` module are: There are two common ways to use this function. In both approaches, you use the fd to wake up when a signal arrives, but then they differ in how they determine *which* signal or signals have arrived. This error used to be a subtype of :exc:`IOError`, which is now an alias of :exc:`OSError`. This is another standard signal handler, which will simply ignore the given signal. This is one of two standard signal handling options; it will simply perform the default function for the signal.  For example, on most systems the default action for :const:`SIGQUIT` is to dump core and exit, while the default action for :const:`SIGCHLD` is to simply ignore it. This module provides mechanisms to use signal handlers in Python. Use :func:`threading.get_ident()` or the :attr:`~threading.Thread.ident` attribute of :class:`threading.Thread` objects to get a suitable value for *thread_id*. When an interval timer fires, a signal is sent to the process. The signal sent is dependent on the timer being used; :const:`signal.ITIMER_REAL` will deliver :const:`SIGALRM`, :const:`signal.ITIMER_VIRTUAL` sends :const:`SIGVTALRM`, and :const:`signal.ITIMER_PROF` will deliver :const:`SIGPROF`. When threads are enabled, this function can only be called from the main thread; attempting to call it from other threads will cause a :exc:`ValueError` exception to be raised. signal (SIG*), handler (:const:`SIG_DFL`, :const:`SIG_IGN`) and sigmask (:const:`SIG_BLOCK`, :const:`SIG_UNBLOCK`, :const:`SIG_SETMASK`) related constants listed below were turned into :class:`enums <enum.IntEnum>`. :func:`getsignal`, :func:`pthread_sigmask`, :func:`sigpending` and :func:`sigwait` functions return human-readable :class:`enums <enum.IntEnum>`. 