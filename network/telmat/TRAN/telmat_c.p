
..0.A:�b$Header: /users/bart/hsrc/network/telmat/TRAN/RCS/telmat_c.c,v 1.2 1992/01/14 14:26:27 bart Exp $ �
.DevOpen:�rs��(.DeviceOperate-2)�!�s�(.DeviceClose-2)�!�s�Lq�.Malloc�s�As:q�.InitSemaphore�s"��
.DeviceOperate:�`��(..21.A-2)�!��u�q:t�.Wait�v0�p!B��..11.A�pa��..6.A�pa��..5.A�..4.A
..11.A:��p!A��..15.A�pa��..7.A�..4.A
..15.A:��p`��..10.A�p`��..9.A�pa��..8.A�..4.A
..10.A:�vqt�.driver_Initialise�..3.A
..9.A:�vqt�.driver_MakeLinks�..3.A
..8.A:�vqt�.driver_TestLinks�..3.A
..7.A:�vqt�.driver_ObtainProcessors�..3.A
..6.A:�vqt�.driver_MakeInitialLinks�..3.A
..5.A:�vqt�.driver_FreeProcessors�..3.A
..4.A:�r0v�
..3.A:�q:t�.Signal��"��
..21.A:�  ��
.DeviceClose:�`�t�q9�p�..23.A�ps�.Close
..23.A:�@�"��
.driver_report:�Z`�~8����t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?�o@�z0�u�v�w�x�y}�..26.A��"��
.driver_fatal:�P`�~8����t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?��t0Q�st�s`?�o@�~"�}�.Signal�z1�u�v�w�x�y}�..26.A��"��
.LocateServer:�`��(..39.A-2)�!��A��
..29.A:�s�..30.A�z@x�.Locate��s�s��ʊ..32.A�z�vyx�.driver_fatal�
..32.A:�t��..34.A�z�vZyx�.driver_report�..36.A�
..34.A:�@��
..36.A:�v!7x�.Delay�..29.A�
..30.A:�z�v!Xyx�.driver_report�A�@tx�.Open��u��..37.A�tx�.Result2�
�r�z�v"Pyx�.driver_fatal
..37.A:�uy�"��
..39.A:�(telmat_c.d driver, failed to locate %s  ��3telmat_c.d driver, failed to locate %s, retry ...  ��!�� telmat_c.d driver, found %s  ��/telmat_r.d driver, failed to open %s, fault %x ��
.ExtractDriver:�`�us�.RmGetProcessorPrivate��@��
..41.A:�q!4p��..42.A�q!5p!@��0t6���..44.A�q!5p!@���"��
..44.A:�p�Ѐ..41.A�
..42.A:�@�"��
.ExtractPin:�`��(..53.A-2)�!��uts�.ExtractDriver��p��..47.A�ut7���..49.A�q0�"�
..49.A:�`O�"�
..47.A:�p2�"��
..53.A:��8 �
.ExtractProcessor:�`��(..63.A-2)�!��x>�x6�t3�@�qB"��yu0���..57.A�x7�"��
..57.A:�rpH��0y�..58.A�ypH�r�0��..60.A�	p�pq�B"�Ѐ..57.A�
..60.A:�	p�ps�B"�Ѐ..57.A�
..58.A:�	rpH��1�"��
..63.A:��8 �
.BuildPinTable:�`�{>�{6�x3�u`��@�A�@��
..65.A:�up��..71.A�
px"8�0�t{z�.ExtractPin��"'!@s���..68.A�swH�q��twH�q��w`�׀..70.A�
..68.A:�svH�q��tvH�q��v���
..70.A:�p�Ѐ..65.A�
..71.A:�r�..72.A�@�@��
..74.A:�u`�p��..71.A�qpH��0p�H�q�0����..79.A�;qpH��1�qpH��0�qp�H��1pH�q��qp�H��0pH�q��tp�H�q��sp�H�q��r���
..79.A:�p�Ѐ..74.A�
..72.A:��"��
.Initialise_SwMan:�a��(..95.A-2)�
!�!�@�@�@��
..82.A:�Bt��..83.A�!p0�!p1�"D�!s9!r�.PutServer��@s��..85.A�!s9!r�.ReOpen�..87.A�
..85.A:�!p0��!s9!r�.GetServer��@s��..83.A�!s9!r�.ReOpen�
..87.A:�t�Ԁ..82.A�
..83.A:�@s��..91.A�!pR!s!r�.driver_fatal
..91.A:�u�..93.A�
u�!p!P!s!r�.driver_fatal
..93.A:�!�"��
..95.A:�=@KL 0 `telmat_c.d driver, Failed to communicate with /SwMan ��"telmat_c.d driver, SwMan error %d ��
.MakeConnection:�a��(..116.A-2)�!�!�A�A�!q0!v0���..97.A�!v0!q1���..97.A�I�
..97.A:�!v0�!v2�!v1�!v3�D�@��
..100.A:�Bu��..101.A�!t!0��..103.A�!v3�!v1�!v2�!v0�!qR!t!s�.driver_report�
..103.A:�!q!2�!q!3�"D�!t9!s�.PutServer��@t��..105.A�!t9!s�.ReOpen�..107.A�
..105.A:�!q!2�!�!t9!s�.GetServer��@t��..101.A�!t9!s�.ReOpen�
..107.A:�u�Հ..100.A�
..101.A:�v�..111.A�
v�!q!T!t!s�.driver_report�!q!=!u�@!�"�
..111.A:�@t��..113.A�!q!^!t!s�.driver_report�	t!u�@!�"�
..113.A:�A!�"��
..116.A:�G�8 �8 telmat_c.d driver, Connection Pin %d Link %d to Pin %d Link %d ��*@KL 0 `telmat_c.d driver, SwMan error %d ��9��telmat_c.d driver, Failed to communicate with /SwMan ��
.TestConnections:�`��(..131.A-2)�!��@��
..118.A:�wp��..119.A�
r0p!@�x�0��..122.A�r0p!@�x�1���..121.A�
..122.A:�xp!@��ut�.TestExternalConnection��q�..128.A�q�"��
..121.A:�xp!@��2p!@�x�3����..128.A�-F�"��
..128.A:�p�Ѐ..118.A�
..119.A:�@�"��
..131.A:��8 �
.TestExternalConnection:�@"��
.TranslateConfRequest:�`��(..152.A-2)�!��@�@��
..134.A:�w1r��..135.A�
w4r!@���p0�..141.A�p2���..141.A�p0��..142.A�p1&D"�s0�q!@�x��p1C$�q!@�x��..144.A�
..142.A:�p0vu�.ExtractPin�q!@�x��xq!@��0`ϊ..145.A�sQvu�.driver_report�`O�"��
..145.A:�	p1q!@�x���
..144.A:�p2��..147.A�8xq!@��0q!@�x��xq!@��2q!@�x��p3&D"�s0�q!@�x��p3C$�q!@�x��..149.A�
..147.A:�p2vu�.ExtractPin�q!@�x��xq!@��1`ϊ..150.A�s^vu�.driver_report�`O�"��
..150.A:�	p3q!@�x���
..149.A:�q���
..141.A:�r�Ҁ..134.A�
..135.A:�q�"��
..152.A:�7�8 telmat_c.d, received invalid configuration request ��3telmat_c.d, received invalid configuration request ��
.driver_Initialise:�`��(..169.A-2)�!��@�w�wRzy�.driver_report�wZzy�.LocateServer�z6�@z!�t&�y�.strlen�..154.A�w\t&�y�.strcmp���..156.A�Az!��..154.A
..156.A:�t&��w^zy�.driver_report
..154.A:�w!Xt"�y�.strcmp���..159.A�@z�..161.A
..159.A:�Az�
..161.A:�%/@y�.Malloc��u��..162.A�w!;{�"�
..162.A:�uy�.Initialise_all_special�@��
..164.A:�t3s��..165.A�st"8�0�u�z�ry�.initialise_aux1�s�Ӏ..164.A�
..165.A:�uy�.Free�t3H�y�.Malloc�z�z>��..167.A�w!;{�"�
..167.A:�zy�.BuildPinTable�@{�zy�.Initialise_SwMan��"��
..169.A:�1.02 ��telmat_c.d driver version %s ��/SwMan ��silent ��&telmat_c.d driver, ignoring option %s ��telmatnc.d �����
.initialise_aux1:�`��(..190.A-2)�!��!r!q�.RmGetProcessorPurpose�N$�Ċ..171.A�!�"�
..171.A:�!r!t7���..173.A�!r!t!q�.ExtractDriver�	�`Os�!�"�
..173.A:�!r!t!q�.ExtractDriver��@��
..175.A:�Dq��..176.A�q!r!q�.RmFindLink��p�A$�/O$�p#�q�р..175.A�
..176.A:�!r!q�.RmCountProcessorAttributes��tJ��..178.A�	!r��!t!q�.driver_fatal
..178.A:�!r!q�.RmListProcessorAttributes�@��
..180.A:�tq��..181.A�q�0!u!q�.Is_special_processor��r��..183.A�q�0�_!t!q�.driver_report�..181.A�
..183.A:�r`���..188.A�rs�!�"��
..188.A:�q�р..180.A�
..181.A:�!s0�!s�p0�p�s�!�"��
..190.A:�9telmat_c.d driver, processor %s has too many attributes
 ��;telmat_c.d driver, not enough %s processors in this T.NODE ��
.driver_MakeLinks:�`��(..219.A-2)�	!��~1!@�|�.Malloc��w��..192.A�-J~�"�
..192.A:�w�~}|�.TranslateConfRequest��@x��..194.A�-K~�w|�.Free��"�
..194.A:�w�x�~}|�.TestConnections��y�..196.A�y~�w|�.Free��"�
..196.A:�@��
..198.A:�~1v��..199.A�
~4v!@���u0�..201.A�u0���..201.A�u1u0|�.RmBreakLink�
..201.A:�u2�..204.A�u2���..204.A�u3u2|�.RmBreakLink�
..204.A:�v�ր..198.A�
..199.A:�@��
..207.A:�xv��..208.A�
wv!@���~}|�.MakeConnection�v�ր..207.A�
..208.A:�@��
..210.A:�xv��..211.A�
wv!@��0z0��..213.A�!A�wv!@��0z0�&D�v!@�w�2��wv!@��1}|�.ExtractProcessor�	�wv!@��2Ԁ..215.A�
..213.A:�	wv!@��0}|�.ExtractProcessor��wv!@��2�wv!@��1z0��..216.A�A�wv!@��1z0�&D�v!@�w�3�Ҁ..215.A�
..216.A:�	wv!@��1}|�.ExtractProcessor�	�wv!@��3��
..215.A:�r�s�tu|�.RmMakeLink�v�ր..210.A�
..211.A:�w|�.Free�@~�"��
..219.A:��8 �
.driver_TestLinks:�`�w1!@�u�.Malloc��r��..221.A�-Jw�"�
..221.A:�r�wvu�.TranslateConfRequest��@s��..223.A�-Kw�ru�.Free��"�
..223.A:�r�s�wvu�.TestConnections�w�ru�.Free��"��
.driver_FreeProcessors:�"��
.driver_ObtainProcessors:�@s�"��
.driver_MakeInitialLinks:�c��(..300.A-2)�!�#�#6#�#q3#�@"�J"�@"�#|##~�.driver_report�#|;$p�#p$@�#~�.Malloc�"�"{��..228.A�
#|<$p�#�"�
..228.A:�#p$@�#~�.Malloc�"�"t��..230.A�
#|<$p�"{#~�.Free�#�"�
..230.A:�@"��
..232.A:�#p"u��..233.A�"|#~�.RmCountLinks�"�"u#q"8�0"�"|#7����..237.A�"|##~�.ExtractPin�"�@"��
..238.A:�"s"v��..237.A�	"�"v"|#~�.RmFollowLink�"�"y���..243.A�"y���..244.A�"y##~�.ExtractPin�"�"q`���..244.A�"q#|=�..244.A�2"r"x!@�"{��"q"x!@�"{��"v"x!@�"{��"}"x!@�"{��"v"|#~�.RmBreakLink�"x�"؀..243.A�
..244.A:�"y#7���..249.A�2#|="w!@�"t��"r"w!@�"t��"}"w!@�"t��"v"w!@�"t��"w�"׀..243.A�
..249.A:�"y��..252.A�="}&D"�#|=�"z!@�"t��"r"z!@�"t��"}C$�"z!@�"t��"v"z!@�"t��"v"|#~�.RmBreakLink�"z�"ڀ..243.A�
..252.A:�#|^##~�.driver_report�
..243.A:�"v�"ր..238.A�
..237.A:�"u�"Հ..232.A�
..233.A:�#|!>�D"w�"�"~"z`���..255.A�"z`�"�
..255.A:�"z`�"~�"�@"��..257.A�@"�
..257.A:�@"��
..259.A:�D"u��..260.A�@�"u�"u�"�"�s���..259.A�
..260.A:�@"��
..262.A:�"w"u��..263.A�.A"u"��"t"u!@��1"uH�#��"t"u!@��3"uH�#��"u�"Հ..262.A�
..263.A:�@"��
..265.A:�"~"u��..266.A�9A"w"u�"��"t"u�!@��1"w"u�H�#��"t"u�!@��3"w"u�H�#��"u�"Հ..265.A�
..266.A:�`O"w"~�H�#��"w"~�..268.A�@"�A"�
..268.A:�@"��
..270.A:�""u��..271.A�Wt"x"u�!@�"{��"t"~�"u�!@��1"x"u�!@�"{��"uD!�"x"u�!@�"{��"t"~�"u�!@��3"x"u�!@�"{��"u�D!���..273.A�t���
..273.A:�"u�"Հ..270.A�
..271.A:�`O"x"�!@�"{��#;�..275.A���"�#"{#~�.configure��u���..275.A�#|!_##~�.driver_report��v�#|"[##~�.driver_fatal
..275.A:�@"��
..279.A:�"w"u��..280.A�"t"u!@��1##~�.ExtractProcessor�"�"�"t"u!@��3"|#~�.RmFollowLink�"�"t"u!@��3"|#~�.RmBreakLink�"}�"y�#"uH��1"|#~�.RmMakeLink� #"uH��1"u!@�"t��"t"u!@���$p##~�.MakeConnection����..284.A�"u�"Հ..279.A�
..280.A:�@"��
..285.A:�"~"u��..286.A�"t"u�!@��1##~�.ExtractProcessor�1"�"t"u�!@��0#|=�&D�"u�!@�"t�2$��A�#"w"u�H��1"|#~�.RmMakeLink�%#"w"u�H��1"u�!@�"t��"t"u�!@���$p##~�.MakeConnection����..284.A�"u�"Հ..285.A�
..286.A:�@"��
..290.A:�""u��..291.A�"t"~�"u�!@��1##~�.ExtractProcessor�8"�"t"~�"u�!@��0#|=�&D�"~�"u�!@�"t�2$��A�"{"x"u�!@��3"|#~�.RmMakeLink�,"{"x"u�!@��3"~�"u�!@�"t��"t"~�"u�!@���$p##~�.MakeConnection����..284.A�"u�"Հ..290.A�
..291.A:�@"��
..295.A:�"x"u��..296.A�"{"u!@��0##~�.ExtractProcessor�"�"{"u!@��1##~�.ExtractProcessor�"�"{"u!@��3�"y�"{"u!@��2"|#~�.RmMakeLink�"{"u!@���$p##~�.MakeConnection����..284.A�"u�"Հ..295.A�
..296.A:�@$p�
..284.A:�"{#~�.Free�"t#~�.Free�#|#T##~�.driver_report�#�"��
..300.A:�+telmat_c.d, sorting out link configuration ��I���р8 telmat_c.d, cannot cope with links to outside processors yet ��4�� telmat_c.d driver, Failed to configure network  ��!telmat_c.d driver, errno = %d %s ��telmat_c.d, links configured ��
..26.A:�x��..dataseg.A 1���`�s0�modnum��q�..dataseg.A��t�..302.A�..303.A
..302.A:�(..0.A-2)�!�p�
..303.A:��"��