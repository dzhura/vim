# vim
My vim configuration files.

My current vim version:

[maxim@localhost ~]$ vim --version
VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Oct 13 2014 08:59:18)
Included patches: 1-207, 209-475
Modified by <bugzilla@redhat.com>
Compiled by <bugzilla@redhat.com>
Huge version without GUI.  Features included (+) or not (-):
+acl             +farsi           +mouse_netterm   +syntax
+arabic          +file_in_path    +mouse_sgr       +tag_binary
+autocmd         +find_in_path    -mouse_sysmouse  +tag_old_static
-balloon_eval    +float           +mouse_urxvt     -tag_any_white
-browse          +folding         +mouse_xterm     -tcl
++builtin_terms  -footer          +multi_byte      +terminfo
+byte_offset     +fork()          +multi_lang      +termresponse
+cindent         +gettext         -mzscheme        +textobjects
-clientserver    -hangul_input    +netbeans_intg   +title
-clipboard       +iconv           +path_extra      -toolbar
+cmdline_compl   +insert_expand   +perl            +user_commands
+cmdline_hist    +jumplist        +persistent_undo +vertsplit
+cmdline_info    +keymap          +postscript      +virtualedit
+comments        +langmap         +printer         +visual
+conceal         +libcall         +profile         +visualextra
+cryptv          +linebreak       +python/dyn      +viminfo
+cscope          +lispindent      -python3         +vreplace
+cursorbind      +listcmds        +quickfix        +wildignore
+cursorshape     +localmap        +reltime         +wildmenu
+dialog_con      +lua/dyn         +rightleft       +windows
+diff            +menu            +ruby/dyn        +writebackup
+digraphs        +mksession       +scrollbind      -X11
-dnd             +modify_fname    +signs           -xfontset
-ebcdic          +mouse           +smartindent     -xim
+emacs_tags      -mouseshape      -sniff           -xsmp
+eval            +mouse_dec       +startuptime     -xterm_clipboard
+ex_extra        +mouse_gpm       +statusline      -xterm_save
+extra_search    -mouse_jsbterm   -sun_workshop    -xpm

Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H     -O2 -g -pipe -Wall -Werror=format-security -fexceptions -fstack-protector-strong --param=ssp-buffer-size=4 -grecord-gcc-switches  -m64 -mtune=generic -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1      
Linking: gcc   -L. -Wl,-z,relro -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,--enable-new-dtags  -Wl,-z,relro  -L/usr/local/lib -Wl,--as-needed -o vim        -lm -lnsl  -lselinux  -lncurses -lacl -lattr -lgpm -ldl   -Wl,--enable-new-dtags  -fstack-protector  -L/usr/lib64/perl5/CORE -lperl -lresolv -lnsl -ldl -lm -lcrypt -lutil -lpthread -lc       


My current gvim version:

[maxim@localhost ~]$ gvim --version
VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Oct 13 2014 08:58:48)
Included patches: 1-207, 209-475
Modified by <bugzilla@redhat.com>
Compiled by <bugzilla@redhat.com>
Huge version with GTK2 GUI.  Features included (+) or not (-):
+acl             +farsi           +mouse_netterm   +syntax
+arabic          +file_in_path    +mouse_sgr       +tag_binary
+autocmd         +find_in_path    -mouse_sysmouse  +tag_old_static
+balloon_eval    +float           +mouse_urxvt     -tag_any_white
+browse          +folding         +mouse_xterm     -tcl
++builtin_terms  -footer          +multi_byte      +terminfo
+byte_offset     +fork()          +multi_lang      +termresponse
+cindent         +gettext         -mzscheme        +textobjects
+clientserver    -hangul_input    +netbeans_intg   +title
+clipboard       +iconv           +path_extra      +toolbar
+cmdline_compl   +insert_expand   +perl            +user_commands
+cmdline_hist    +jumplist        +persistent_undo +vertsplit
+cmdline_info    +keymap          +postscript      +virtualedit
+comments        +langmap         +printer         +visual
+conceal         +libcall         +profile         +visualextra
+cryptv          +linebreak       +python/dyn      +viminfo
+cscope          +lispindent      -python3         +vreplace
+cursorbind      +listcmds        +quickfix        +wildignore
+cursorshape     +localmap        +reltime         +wildmenu
+dialog_con_gui  +lua/dyn         +rightleft       +windows
+diff            +menu            +ruby/dyn        +writebackup
+digraphs        +mksession       +scrollbind      +X11
+dnd             +modify_fname    +signs           -xfontset
-ebcdic          +mouse           +smartindent     +xim
+emacs_tags      +mouseshape      -sniff           +xsmp_interact
+eval            +mouse_dec       +startuptime     +xterm_clipboard
+ex_extra        +mouse_gpm       +statusline      -xterm_save
+extra_search    -mouse_jsbterm   -sun_workshop    +xpm
 
Compilation: gcc -c -I. -Iproto -DHAVE_CONFIG_H -DFEAT_GUI_GTK  -pthread -I/usr/include/gtk-2.0 -I/usr/lib64/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/libdrm -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng16 -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/freetype2 -I/usr/include/libpng16    -O2 -g -pipe -Wall -Werror=format-security -fexceptions -fstack-protector-strong --param=ssp-buffer-size=4 -grecord-gcc-switches  -m64 -mtune=generic -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1      
Linking: gcc   -L. -Wl,-z,relro -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,--enable-new-dtags  -Wl,-z,relro  -L/usr/local/lib -Wl,--as-needed -o vim   -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype  -lSM -lICE -lXpm -lXt -lX11 -lSM -lICE  -lm -lnsl  -lselinux  -lncurses -lacl -lattr -lgpm -ldl   -Wl,--enable-new-dtags  -fstack-protector  -L/usr/lib64/perl5/CORE -lperl -lresolv -lnsl -ldl -lm -lcrypt -lutil -lpthread -lc 
