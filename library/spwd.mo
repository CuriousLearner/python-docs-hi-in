��    ,      |              �     �     �     �     �     �     �     �     �     �  ,   �  4     >   Q  	   �     �     �     �  
   �  &   �     �  &        (     :  ?   L  <   �  4   �  _   �     ^  T   g  B   �  �   �  $   �  �   �  k   b  p   �     ?     M     Y     f  
   t  
        �     �     �  �  �     0
     2
     4
     6
     8
     :
     <
     >
     @
  ,   B
  4   o
  >   �
  	   �
     �
            
     &   %     L  &   T     {     �  ?   �  <   �  4     _   Q     �  T   �  B     �   R  $   
  �   /  k   �  p   !     �     �     �     �  
   �  
   �     �     �     �   0 1 2 3 4 5 6 7 8 :mod:`spwd` --- The shadow password database An interface to the group database, similar to this. An interface to the normal password database, similar to this. Attribute Date of last change Encrypted password Index Login name Maximum number of days between changes Meaning Minimal number of days between changes Module :mod:`grp` Module :mod:`pwd` Number of days after password expires until account is disabled Number of days before password expires to warn user about it Number of days since 1970-01-01 when account expires Raises a :exc:`PermissionError` instead of :exc:`KeyError` if the user doesn't have privileges. Reserved Return a list of all available shadow password database entries, in arbitrary order. Return the shadow password database entry for the given user name. Shadow password database entries are reported as a tuple-like object, whose attributes correspond to the members of the ``spwd`` structure (Attribute field below, see ``<shadow.h>``): The following functions are defined: The sp_namp and sp_pwdp items are strings, all others are integers. :exc:`KeyError` is raised if the entry asked for cannot be found. This module provides access to the Unix shadow password database. It is available on various Unix versions. You must have enough privileges to access the shadow password database (this usually means you have to be root). ``sp_expire`` ``sp_flag`` ``sp_inact`` ``sp_lstchg`` ``sp_max`` ``sp_min`` ``sp_namp`` ``sp_pwdp`` ``sp_warn`` Project-Id-Version: Python 3.7
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
 0 1 2 3 4 5 6 7 8 :mod:`spwd` --- The shadow password database An interface to the group database, similar to this. An interface to the normal password database, similar to this. Attribute Date of last change Encrypted password Index Login name Maximum number of days between changes Meaning Minimal number of days between changes Module :mod:`grp` Module :mod:`pwd` Number of days after password expires until account is disabled Number of days before password expires to warn user about it Number of days since 1970-01-01 when account expires Raises a :exc:`PermissionError` instead of :exc:`KeyError` if the user doesn't have privileges. Reserved Return a list of all available shadow password database entries, in arbitrary order. Return the shadow password database entry for the given user name. Shadow password database entries are reported as a tuple-like object, whose attributes correspond to the members of the ``spwd`` structure (Attribute field below, see ``<shadow.h>``): The following functions are defined: The sp_namp and sp_pwdp items are strings, all others are integers. :exc:`KeyError` is raised if the entry asked for cannot be found. This module provides access to the Unix shadow password database. It is available on various Unix versions. You must have enough privileges to access the shadow password database (this usually means you have to be root). ``sp_expire`` ``sp_flag`` ``sp_inact`` ``sp_lstchg`` ``sp_max`` ``sp_min`` ``sp_namp`` ``sp_pwdp`` ``sp_warn`` 