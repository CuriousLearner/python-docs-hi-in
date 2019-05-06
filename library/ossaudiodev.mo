��    b      ,              <  ^   =  �   �  �     �  T     �	     �	     �	     �	     �	     �	     

     "
     7
     L
     a
     r
     �
     �
  .   �
  '   �
  $     =   )  A   g  �   �     Q  ?   f  x   �  g     6   �  3   �  �   �  �   �  %   �       �        �  '  �     �  �   �     �  ;   �  �       �  z    S   �  q   �  y   H  u   �     8  �   =  s   *  6   �  �   �  �   �  =   o  O   �  j   �  4   h    �  e   �  v    �   �   H  �!  L   �"  L   !#     n#  .   �#  �   �#  @   �$  k   �$  d   Z%  c  �%  0   #'  �   T'  3   �'  a   (  �   �(  i   )  �  x)  �   +  �   ,  "  �,  !   �-  $   �-     !.  �   7.  3   /  X  F/  �  �0  Q   h2  I   �2     3  I   3  #   e3     �3     �3  ,   �3  �  �3  ^   ^5  �   �5  �   �6  �  u7     �8      9     9     9     9     9     +9     C9     X9     m9     �9     �9     �9     �9  .   �9  '   �9  $   %:  =   J:  A   �:  �   �:     r;  ?   �;  x   �;  g   @<  6   �<  3   �<  �   =  �   >  %   ?     (?  �   4?     �?  '  �?     A  �   A     �A  ;   �A  �   4B    C  z  (D  S   �E  q   �E  y   iF  u   �F     YG  �   ^G  s   KH  6   �H  �   �H  �   �I  =   �J  O   �J  j   K  4   �K    �K  e   �L  v  6M  �   �O  H  �P  L   �Q  L   BR     �R  .   �R  �   �R  @   �S  k   T  d   {T  c  �T  0   DV  �   uV  3   W  a   ?W  �   �W  i   /X  �  �X  �   >Z  �   "[  "  �[  !   �\  $   ]     B]  �   X]  3   3^  X  g^  �  �_  Q   �a  I   �a     %b  I   <b  #   �b     �b     �b  ,   �b   (For backwards compatibility, the exception class is also available as ``ossaudiodev.error``.) (If :mod:`ossaudiodev` receives an error from a system call such as :c:func:`open`, :c:func:`write`, or :c:func:`ioctl`, it raises :exc:`OSError`. Errors detected directly by :mod:`ossaudiodev` result in :exc:`OSSAudioError`.) *device* is the audio device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`AUDIODEV` for a device to use.  If not found, it falls back to :file:`/dev/dsp`. *mode* is one of ``'r'`` for read-only (record) access, ``'w'`` for write-only (playback) access and ``'rw'`` for both. Since many sound cards only allow one process to have the recorder or player open at a time, it is a good idea to open the device only for the activity needed.  Further, some sound cards are half-duplex: they can be opened for reading or writing, but not both at once. 11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :meth:`channels` to set the number of channels :meth:`setfmt` to set the output format :meth:`speed` to set the sample rate :mod:`ossaudiodev` --- Access to OSS-compatible audio devices :mod:`ossaudiodev` defines the following variables and functions: Alternately, you can use the :meth:`setparameters` method to set all three audio parameters at once.  This is more convenient, but may not be as flexible in all cases. Audio Device Objects Audio device objects also support several read-only attributes: Audio device objects also support the context management protocol, i.e. they can be used in a :keyword:`with` statement. Before you can write to or read from an audio device, you must call three methods in the correct order: Boolean indicating whether the device has been closed. CD quality audio (at 16 bits/sample and 2 channels) Call this function to specify a recording source.  Returns a bitmask indicating the new recording source (or sources) if successful; raises :exc:`OSError` if an invalid source was specified.  To set the current recording source to the microphone input:: Consult the OSS documentation for a full list of audio formats, and note that most devices support only a subset of these formats.  Some older devices only support :const:`AFMT_U8`; the most common format used today is :const:`AFMT_S16_LE`. DVD quality audio (at 24 bits/sample) Description Explicitly close the audio device.  When you are done writing to or reading from an audio device, you should explicitly close it.  A closed device cannot be used again. For example,  :: For most purposes, the :const:`SOUND_MIXER_VOLUME` (master volume) and :const:`SOUND_MIXER_PCM` controls should suffice---but code that uses the mixer should be flexible when it comes to choosing mixer controls.  On the Gravis Ultrasound, for example, :const:`SOUND_MIXER_VOLUME` does not exist. Format Immediately stop playing or recording and return the device to a state where it can accept commands.  The OSS documentation recommends closing and re-opening the device after calling :meth:`reset`. Mixer Device Objects Mixer objects also support the context management protocol. Note the unusual calling syntax: the *first* argument is optional, and the second is required.  This is a historical artifact for compatibility with the older :mod:`linuxaudiodev` module which :mod:`ossaudiodev` supersedes. Open a mixer device and return an OSS mixer device object.   *device* is the mixer device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`MIXERDEV` for a device to use.  If not found, it falls back to :file:`/dev/mixer`. Open an audio device and return an OSS audio device object.  This object supports many file-like methods, such as :meth:`read`, :meth:`write`, and :meth:`fileno` (although there are subtle differences between conventional Unix read/write semantics and those of OSS audio devices).  It also supports a number of audio-specific methods; see below for the complete list of methods. Operations in this module now raise :exc:`OSError` where :exc:`IOError` was raised. Put the device into non-blocking mode.  Once in non-blocking mode, there is no way to return it to blocking mode. Raises :exc:`OSSAudioError` if an invalid control is specified, or :exc:`OSError` if an unsupported control is specified. Raises :exc:`OSSAudioError` if an invalid mixer control was specified, or if the specified volumes were out-of-range. Rate Read *size* bytes from the audio input and return them as a Python string. Unlike most Unix device drivers, OSS audio devices in blocking mode (the default) will block :func:`read` until the entire requested amount of data is available. Return a bitmask of the audio output formats supported by the soundcard.  Some of the formats supported by OSS are: Return the file descriptor associated with the device. Returns a bitmask indicating stereo mixer controls.  If a bit is set, the corresponding control is stereo; if it is unset, the control is either monophonic or not supported by the mixer (use in combination with :meth:`controls` to determine which). Returns a bitmask specifying the mixer controls that may be used to record.  See the code example for :meth:`controls` for an example of reading from a bitmask. Returns the file handle number of the open mixer device file. Returns the number of samples that are in the hardware buffer yet to be played. Returns the number of samples that could be queued into the hardware buffer to be played without blocking. Returns the size of the hardware buffer, in samples. Returns the volume of a given mixer control.  The returned volume is a 2-tuple ``(left_volume,right_volume)``.  Volumes are specified as numbers from 0 (silent) to 100 (full volume).  If the control is monophonic, a 2-tuple is still returned, but both volumes are the same. See the code example for the :meth:`controls` function for an example of getting data from a bitmask. Set the key audio sampling parameters---sample format, number of channels, and sampling rate---in one method call.  *format*,  *nchannels*, and *samplerate* should be as specified in the :meth:`setfmt`, :meth:`channels`, and :meth:`speed`  methods.  If *strict* is true, :meth:`setparameters` checks to see if each parameter was actually set to the requested value, and raises :exc:`OSSAudioError` if not.  Returns a tuple (*format*, *nchannels*, *samplerate*) indicating the parameter values that were actually set by the device driver (i.e., the same as the return values of :meth:`setfmt`, :meth:`channels`, and :meth:`speed`). Set the number of output channels to *nchannels*.  A value of 1 indicates monophonic sound, 2 stereophonic.  Some devices may have more than 2 channels, and some high-end devices may not support mono. Returns the number of channels the device was set to. Sets the volume for a given mixer control to ``(left,right)``. ``left`` and ``right`` must be ints and between 0 (silent) and 100 (full volume).  On success, the new volume is returned as a 2-tuple. Note that this may not be exactly the same as the volume specified, because of the limited resolution of some soundcard's mixers. Signed, 16-bit audio, big-endian byte order (as used by 68k, PowerPC, Sparc) Signed, 16-bit audio, little-endian byte order (as used by Intel processors) Signed, 8 bit audio String containing the name of the device file. Tell the driver that there is likely to be a pause in the output, making it possible for the device to handle the pause more intelligently.  You might use this after playing a spot sound effect, before waiting for user input, or before doing disk I/O. The I/O mode for the file, either ``"r"``, ``"rw"``, or ``"w"``. The audio device objects returned by :func:`.open` define the following methods and (read-only) attributes: The following convenience methods combine several ioctls, or one ioctl and some simple calculations. The following methods each map to exactly one :c:func:`ioctl` system call.  The correspondence is obvious: for example, :meth:`setfmt` corresponds to the ``SNDCTL_DSP_SETFMT`` ioctl, and :meth:`sync` to ``SNDCTL_DSP_SYNC`` (this can be useful when consulting the OSS documentation).  If the underlying :c:func:`ioctl` fails, they all raise :exc:`OSError`. The mixer object provides two file-like methods: The module defines a large number of constants supplied by the OSS device driver; see ``<sys/soundcard.h>`` on either Linux or FreeBSD for a listing. The remaining methods are specific to audio mixing: This exception is raised on certain errors.  The argument is a string describing what went wrong. This method closes the open mixer device file.  Any further attempts to use the mixer after this file is closed will raise an :exc:`OSError`. This method returns a bitmask indicating which control(s) are currently being used as a recording source. This method returns a bitmask specifying the available mixer controls ("Control" being a specific mixable "channel", such as :const:`SOUND_MIXER_PCM` or :const:`SOUND_MIXER_SYNTH`).  This bitmask indicates a subset of all available mixer controls---the :const:`SOUND_MIXER_\*` constants defined at module level. To determine if, for example, the current mixer object supports a PCM mixer, use the following Python code:: This module allows you to access the OSS (Open Sound System) audio interface. OSS is available for a wide range of open-source and commercial Unices, and is the standard audio interface for Linux and recent versions of FreeBSD. Try to set the audio sampling rate to *samplerate* samples per second.  Returns the rate actually set.  Most sound devices don't support arbitrary sampling rates.  Common rates are: Try to set the current audio format to *format*---see :meth:`getfmts` for a list.  Returns the audio format that the device was set to, which may not be the requested format.  May also be used to return the current audio format---do this by passing an "audio format" of :const:`AFMT_QUERY`. Unsigned, 16-bit big-endian audio Unsigned, 16-bit little-endian audio Unsigned, 8-bit audio Wait until the sound device has played every byte in its buffer.  (This happens implicitly when the device is closed.)  The OSS documentation recommends closing and re-opening the device rather than using :meth:`sync`. Writable :term:`bytes-like object` is now accepted. Write a :term:`bytes-like object` *data* to the audio device and return the number of bytes written.  If the audio device is in blocking mode (the default), the entire data is always written (again, this is different from usual Unix device semantics).  If the device is in non-blocking mode, some data may not be written---see :meth:`writeall`. Write a :term:`bytes-like object` *data* to the audio device: waits until the audio device is able to accept data, writes as much data as it will accept, and repeats until *data* has been completely written. If the device is in blocking mode (the default), this has the same effect as :meth:`write`; :meth:`writeall` is only useful in non-blocking mode.  Has no return value, since the amount of data written is always equal to the amount of data supplied. `Open Sound System Programmer's Guide <http://www.opensound.com/pguide/oss.pdf>`_ a 4:1 compressed format defined by the Interactive Multimedia Association a logarithmic encoding a logarithmic encoding (used by Sun ``.au`` files and :file:`/dev/audio`) default rate for :file:`/dev/audio` is equivalent to  :: speech recording the official documentation for the OSS C API Project-Id-Version: Python 3.7
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
 (For backwards compatibility, the exception class is also available as ``ossaudiodev.error``.) (If :mod:`ossaudiodev` receives an error from a system call such as :c:func:`open`, :c:func:`write`, or :c:func:`ioctl`, it raises :exc:`OSError`. Errors detected directly by :mod:`ossaudiodev` result in :exc:`OSSAudioError`.) *device* is the audio device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`AUDIODEV` for a device to use.  If not found, it falls back to :file:`/dev/dsp`. *mode* is one of ``'r'`` for read-only (record) access, ``'w'`` for write-only (playback) access and ``'rw'`` for both. Since many sound cards only allow one process to have the recorder or player open at a time, it is a good idea to open the device only for the activity needed.  Further, some sound cards are half-duplex: they can be opened for reading or writing, but not both at once. 11025 22050 44100 8000 96000 :const:`AFMT_A_LAW` :const:`AFMT_IMA_ADPCM` :const:`AFMT_MU_LAW` :const:`AFMT_S16_BE` :const:`AFMT_S16_LE` :const:`AFMT_S8` :const:`AFMT_U16_BE` :const:`AFMT_U16_LE` :const:`AFMT_U8` :meth:`channels` to set the number of channels :meth:`setfmt` to set the output format :meth:`speed` to set the sample rate :mod:`ossaudiodev` --- Access to OSS-compatible audio devices :mod:`ossaudiodev` defines the following variables and functions: Alternately, you can use the :meth:`setparameters` method to set all three audio parameters at once.  This is more convenient, but may not be as flexible in all cases. Audio Device Objects Audio device objects also support several read-only attributes: Audio device objects also support the context management protocol, i.e. they can be used in a :keyword:`with` statement. Before you can write to or read from an audio device, you must call three methods in the correct order: Boolean indicating whether the device has been closed. CD quality audio (at 16 bits/sample and 2 channels) Call this function to specify a recording source.  Returns a bitmask indicating the new recording source (or sources) if successful; raises :exc:`OSError` if an invalid source was specified.  To set the current recording source to the microphone input:: Consult the OSS documentation for a full list of audio formats, and note that most devices support only a subset of these formats.  Some older devices only support :const:`AFMT_U8`; the most common format used today is :const:`AFMT_S16_LE`. DVD quality audio (at 24 bits/sample) Description Explicitly close the audio device.  When you are done writing to or reading from an audio device, you should explicitly close it.  A closed device cannot be used again. For example,  :: For most purposes, the :const:`SOUND_MIXER_VOLUME` (master volume) and :const:`SOUND_MIXER_PCM` controls should suffice---but code that uses the mixer should be flexible when it comes to choosing mixer controls.  On the Gravis Ultrasound, for example, :const:`SOUND_MIXER_VOLUME` does not exist. Format Immediately stop playing or recording and return the device to a state where it can accept commands.  The OSS documentation recommends closing and re-opening the device after calling :meth:`reset`. Mixer Device Objects Mixer objects also support the context management protocol. Note the unusual calling syntax: the *first* argument is optional, and the second is required.  This is a historical artifact for compatibility with the older :mod:`linuxaudiodev` module which :mod:`ossaudiodev` supersedes. Open a mixer device and return an OSS mixer device object.   *device* is the mixer device filename to use.  If it is not specified, this module first looks in the environment variable :envvar:`MIXERDEV` for a device to use.  If not found, it falls back to :file:`/dev/mixer`. Open an audio device and return an OSS audio device object.  This object supports many file-like methods, such as :meth:`read`, :meth:`write`, and :meth:`fileno` (although there are subtle differences between conventional Unix read/write semantics and those of OSS audio devices).  It also supports a number of audio-specific methods; see below for the complete list of methods. Operations in this module now raise :exc:`OSError` where :exc:`IOError` was raised. Put the device into non-blocking mode.  Once in non-blocking mode, there is no way to return it to blocking mode. Raises :exc:`OSSAudioError` if an invalid control is specified, or :exc:`OSError` if an unsupported control is specified. Raises :exc:`OSSAudioError` if an invalid mixer control was specified, or if the specified volumes were out-of-range. Rate Read *size* bytes from the audio input and return them as a Python string. Unlike most Unix device drivers, OSS audio devices in blocking mode (the default) will block :func:`read` until the entire requested amount of data is available. Return a bitmask of the audio output formats supported by the soundcard.  Some of the formats supported by OSS are: Return the file descriptor associated with the device. Returns a bitmask indicating stereo mixer controls.  If a bit is set, the corresponding control is stereo; if it is unset, the control is either monophonic or not supported by the mixer (use in combination with :meth:`controls` to determine which). Returns a bitmask specifying the mixer controls that may be used to record.  See the code example for :meth:`controls` for an example of reading from a bitmask. Returns the file handle number of the open mixer device file. Returns the number of samples that are in the hardware buffer yet to be played. Returns the number of samples that could be queued into the hardware buffer to be played without blocking. Returns the size of the hardware buffer, in samples. Returns the volume of a given mixer control.  The returned volume is a 2-tuple ``(left_volume,right_volume)``.  Volumes are specified as numbers from 0 (silent) to 100 (full volume).  If the control is monophonic, a 2-tuple is still returned, but both volumes are the same. See the code example for the :meth:`controls` function for an example of getting data from a bitmask. Set the key audio sampling parameters---sample format, number of channels, and sampling rate---in one method call.  *format*,  *nchannels*, and *samplerate* should be as specified in the :meth:`setfmt`, :meth:`channels`, and :meth:`speed`  methods.  If *strict* is true, :meth:`setparameters` checks to see if each parameter was actually set to the requested value, and raises :exc:`OSSAudioError` if not.  Returns a tuple (*format*, *nchannels*, *samplerate*) indicating the parameter values that were actually set by the device driver (i.e., the same as the return values of :meth:`setfmt`, :meth:`channels`, and :meth:`speed`). Set the number of output channels to *nchannels*.  A value of 1 indicates monophonic sound, 2 stereophonic.  Some devices may have more than 2 channels, and some high-end devices may not support mono. Returns the number of channels the device was set to. Sets the volume for a given mixer control to ``(left,right)``. ``left`` and ``right`` must be ints and between 0 (silent) and 100 (full volume).  On success, the new volume is returned as a 2-tuple. Note that this may not be exactly the same as the volume specified, because of the limited resolution of some soundcard's mixers. Signed, 16-bit audio, big-endian byte order (as used by 68k, PowerPC, Sparc) Signed, 16-bit audio, little-endian byte order (as used by Intel processors) Signed, 8 bit audio String containing the name of the device file. Tell the driver that there is likely to be a pause in the output, making it possible for the device to handle the pause more intelligently.  You might use this after playing a spot sound effect, before waiting for user input, or before doing disk I/O. The I/O mode for the file, either ``"r"``, ``"rw"``, or ``"w"``. The audio device objects returned by :func:`.open` define the following methods and (read-only) attributes: The following convenience methods combine several ioctls, or one ioctl and some simple calculations. The following methods each map to exactly one :c:func:`ioctl` system call.  The correspondence is obvious: for example, :meth:`setfmt` corresponds to the ``SNDCTL_DSP_SETFMT`` ioctl, and :meth:`sync` to ``SNDCTL_DSP_SYNC`` (this can be useful when consulting the OSS documentation).  If the underlying :c:func:`ioctl` fails, they all raise :exc:`OSError`. The mixer object provides two file-like methods: The module defines a large number of constants supplied by the OSS device driver; see ``<sys/soundcard.h>`` on either Linux or FreeBSD for a listing. The remaining methods are specific to audio mixing: This exception is raised on certain errors.  The argument is a string describing what went wrong. This method closes the open mixer device file.  Any further attempts to use the mixer after this file is closed will raise an :exc:`OSError`. This method returns a bitmask indicating which control(s) are currently being used as a recording source. This method returns a bitmask specifying the available mixer controls ("Control" being a specific mixable "channel", such as :const:`SOUND_MIXER_PCM` or :const:`SOUND_MIXER_SYNTH`).  This bitmask indicates a subset of all available mixer controls---the :const:`SOUND_MIXER_\*` constants defined at module level. To determine if, for example, the current mixer object supports a PCM mixer, use the following Python code:: This module allows you to access the OSS (Open Sound System) audio interface. OSS is available for a wide range of open-source and commercial Unices, and is the standard audio interface for Linux and recent versions of FreeBSD. Try to set the audio sampling rate to *samplerate* samples per second.  Returns the rate actually set.  Most sound devices don't support arbitrary sampling rates.  Common rates are: Try to set the current audio format to *format*---see :meth:`getfmts` for a list.  Returns the audio format that the device was set to, which may not be the requested format.  May also be used to return the current audio format---do this by passing an "audio format" of :const:`AFMT_QUERY`. Unsigned, 16-bit big-endian audio Unsigned, 16-bit little-endian audio Unsigned, 8-bit audio Wait until the sound device has played every byte in its buffer.  (This happens implicitly when the device is closed.)  The OSS documentation recommends closing and re-opening the device rather than using :meth:`sync`. Writable :term:`bytes-like object` is now accepted. Write a :term:`bytes-like object` *data* to the audio device and return the number of bytes written.  If the audio device is in blocking mode (the default), the entire data is always written (again, this is different from usual Unix device semantics).  If the device is in non-blocking mode, some data may not be written---see :meth:`writeall`. Write a :term:`bytes-like object` *data* to the audio device: waits until the audio device is able to accept data, writes as much data as it will accept, and repeats until *data* has been completely written. If the device is in blocking mode (the default), this has the same effect as :meth:`write`; :meth:`writeall` is only useful in non-blocking mode.  Has no return value, since the amount of data written is always equal to the amount of data supplied. `Open Sound System Programmer's Guide <http://www.opensound.com/pguide/oss.pdf>`_ a 4:1 compressed format defined by the Interactive Multimedia Association a logarithmic encoding a logarithmic encoding (used by Sun ``.au`` files and :file:`/dev/audio`) default rate for :file:`/dev/audio` is equivalent to  :: speech recording the official documentation for the OSS C API 