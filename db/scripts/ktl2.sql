PGDMP     ,                    z            ktl_db    10.21    10.21 8    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            :           1262    16393    ktl_db    DATABASE     ?   CREATE DATABASE ktl_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE ktl_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ;           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            <           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16394    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         postgres    false    3            ?            1259    16401    events    TABLE     ?   CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying,
    start_event character varying,
    end_event character varying
);
    DROP TABLE public.events;
       public         postgres    false    3            ?            1259    16399    events_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    198    3            =           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    197            ?            1259    16412    iss    TABLE     J  CREATE TABLE public.iss (
    id integer NOT NULL,
    kr_name character varying,
    name character varying,
    kategor character varying,
    tip character varying,
    naznach character varying,
    data_vvoda character varying,
    zakazchik character varying,
    data_ib character varying,
    primech character varying
);
    DROP TABLE public.iss;
       public         postgres    false    3            ?            1259    16410 
   iss_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.iss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.iss_id_seq;
       public       postgres    false    200    3            >           0    0 
   iss_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.iss_id_seq OWNED BY public.iss.id;
            public       postgres    false    199            ?            1259    16423    kkss    TABLE     ?  CREATE TABLE public.kkss (
    id integer NOT NULL,
    mask character varying,
    subnet character varying,
    ip character varying,
    name character varying,
    getway character varying,
    broadcast character varying,
    filial character varying,
    ploshadka character varying,
    primech text,
    flag character varying,
    vlan integer,
    vlan_name character varying,
    ploshadka_det character varying
);
    DROP TABLE public.kkss;
       public         postgres    false    3            ?            1259    16421    kkss_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.kkss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.kkss_id_seq;
       public       postgres    false    202    3            ?           0    0    kkss_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.kkss_id_seq OWNED BY public.kkss.id;
            public       postgres    false    201            ?            1259    16455    kkss_iss    TABLE     J   CREATE TABLE public.kkss_iss (
    kkss_id integer,
    iss_id integer
);
    DROP TABLE public.kkss_iss;
       public         postgres    false    3            ?            1259    16434    role    TABLE     ~   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(32),
    description character varying(255)
);
    DROP TABLE public.role;
       public         postgres    false    3            ?            1259    16432    role_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public       postgres    false    3    204            @           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
            public       postgres    false    203            ?            1259    16468    roles_users    TABLE     N   CREATE TABLE public.roles_users (
    user_id integer,
    role_id integer
);
    DROP TABLE public.roles_users;
       public         postgres    false    3            ?            1259    16444    user    TABLE     ?   CREATE TABLE public."user" (
    id integer NOT NULL,
    password character varying,
    email character varying,
    active boolean
);
    DROP TABLE public."user";
       public         postgres    false    3            ?            1259    16442    user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    3    206            A           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
            public       postgres    false    205            ?
           2604    16404 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            ?
           2604    16415    iss id    DEFAULT     `   ALTER TABLE ONLY public.iss ALTER COLUMN id SET DEFAULT nextval('public.iss_id_seq'::regclass);
 5   ALTER TABLE public.iss ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            ?
           2604    16426    kkss id    DEFAULT     b   ALTER TABLE ONLY public.kkss ALTER COLUMN id SET DEFAULT nextval('public.kkss_id_seq'::regclass);
 6   ALTER TABLE public.kkss ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            ?
           2604    16437    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            ?
           2604    16447    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            (          0    16394    alembic_version 
   TABLE DATA               6   COPY public.alembic_version (version_num) FROM stdin;
    public       postgres    false    196   ?9       *          0    16401    events 
   TABLE DATA               C   COPY public.events (id, title, start_event, end_event) FROM stdin;
    public       postgres    false    198   ?9       ,          0    16412    iss 
   TABLE DATA               p   COPY public.iss (id, kr_name, name, kategor, tip, naznach, data_vvoda, zakazchik, data_ib, primech) FROM stdin;
    public       postgres    false    200   :       .          0    16423    kkss 
   TABLE DATA               ?   COPY public.kkss (id, mask, subnet, ip, name, getway, broadcast, filial, ploshadka, primech, flag, vlan, vlan_name, ploshadka_det) FROM stdin;
    public       postgres    false    202   \:       3          0    16455    kkss_iss 
   TABLE DATA               3   COPY public.kkss_iss (kkss_id, iss_id) FROM stdin;
    public       postgres    false    207   ?]       0          0    16434    role 
   TABLE DATA               5   COPY public.role (id, name, description) FROM stdin;
    public       postgres    false    204   ?]       4          0    16468    roles_users 
   TABLE DATA               7   COPY public.roles_users (user_id, role_id) FROM stdin;
    public       postgres    false    208   ?]       2          0    16444    user 
   TABLE DATA               =   COPY public."user" (id, password, email, active) FROM stdin;
    public       postgres    false    206   ?]       B           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
            public       postgres    false    197            C           0    0 
   iss_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.iss_id_seq', 1, true);
            public       postgres    false    199            D           0    0    kkss_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.kkss_id_seq', 2880, true);
            public       postgres    false    201            E           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
            public       postgres    false    203            F           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
            public       postgres    false    205            ?
           2606    16398 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public         postgres    false    196            ?
           2606    16409    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    198            ?
           2606    16420    iss iss_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.iss
    ADD CONSTRAINT iss_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.iss DROP CONSTRAINT iss_pkey;
       public         postgres    false    200            ?
           2606    16431    kkss kkss_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.kkss
    ADD CONSTRAINT kkss_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.kkss DROP CONSTRAINT kkss_pkey;
       public         postgres    false    202            ?
           2606    16441    role role_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.role DROP CONSTRAINT role_name_key;
       public         postgres    false    204            ?
           2606    16439    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public         postgres    false    204            ?
           2606    16454    user user_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public         postgres    false    206            ?
           2606    16452    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    206            ?
           2606    16458    kkss_iss kkss_iss_iss_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.kkss_iss
    ADD CONSTRAINT kkss_iss_iss_id_fkey FOREIGN KEY (iss_id) REFERENCES public.iss(id);
 G   ALTER TABLE ONLY public.kkss_iss DROP CONSTRAINT kkss_iss_iss_id_fkey;
       public       postgres    false    207    2720    200            ?
           2606    16463    kkss_iss kkss_iss_kkss_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.kkss_iss
    ADD CONSTRAINT kkss_iss_kkss_id_fkey FOREIGN KEY (kkss_id) REFERENCES public.kkss(id);
 H   ALTER TABLE ONLY public.kkss_iss DROP CONSTRAINT kkss_iss_kkss_id_fkey;
       public       postgres    false    207    2722    202            ?
           2606    16471 $   roles_users roles_users_role_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.roles_users
    ADD CONSTRAINT roles_users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 N   ALTER TABLE ONLY public.roles_users DROP CONSTRAINT roles_users_role_id_fkey;
       public       postgres    false    208    204    2726            ?
           2606    16476 $   roles_users roles_users_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.roles_users
    ADD CONSTRAINT roles_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id);
 N   ALTER TABLE ONLY public.roles_users DROP CONSTRAINT roles_users_user_id_fkey;
       public       postgres    false    208    206    2730            (      x?31K322J5734H?????? (?      *      x?????? ? ?      ,   I   x?3?4t?4??P?????^?ra???q??bӅ?rzs^?}a߅]6\?}????.?s??!#?=... ?R$q      .      x???=?n?u??l ?{??3?j?SVّCI?\?U?r?*;U`ɖ\??po?|@R`???;FD" &???:??߷?R??????N]??ϯǯ???ݟ???J???Z??/???_}?o???????_~???????_??????/?ۿ?;=?????w?????׿??g_????~?_?ޢ??Ʊ?;hl??N;bc?????Ʈ?ئ?;6???{h??{{bc??ҷSx.S?s??9??Au??R??:xR)vT<?;??U?V+?N????R??x??R???W?:?ƃ?U?Ϋ???R??x????y5<?*u^?ϫJ?W????R??x????y5<?*v^	ϫ??W??j??+?y5b??????J??`???W#v^	ϫ;???Ո?W??j??+?y5b?U?y5b?U?y5c?U?y5c?U?y5c?U?y5c?U????yUx^??yUx^??yUx^??yUx^??y5𼚱?j?y?b????j?Ϋ??Պ?W?<?؟牽;?;?w?z?v?w???X???7ֻ????6??Xoc??????zb??鑞X????G??:?z?3J?RN~???S??O9{?1??`?~??{?b?(M??b??,-Ũ5?Z?Yk????dl)????R?[?????&{K1pM?b??,.??5?\??k^??3?dsU?\??U1sM6W?̵n??????Ø???b?Zl???k??*f??檘???b?Z??c??i???e?????/?ߍ?????Y4v??b?b?s?]?[?ލ????;b???#???;c?/??X+?;~h?bZ?Pk?>Ԛػc?{w?wao?z?v?wc?????A?????z{O?????wH?Ċ/???3???Ǿ?>??ʊ}Sy?7Y?*???:*?]??߅S??p??8?m??ߦQ??4????&SK1kM??bؚ?-Ŵ5Y[?qk2???do)???RL\?ť?&?K1sM6W??5?\3?dsU?\??U1s???a1s???C1s-6W?̵?\3?bsU?\??U1s-6W?̵>????c?L۱?X?X??\?z?ۍ?n??X????m??????}?w?z_?]??1?ͥ{si??-+?f????]ػc?{;ֻ??c?{?Xoc??m?=?ޗ+?zyG??X0o??+???-??e4?m4????bż?B?}??(??`???????i?^???J?f?????&SK1kM??bؚ?-Ŵ5Y[?qk2???do)???RL\?ť?&?K1sM6W??5?\3?dsU?\??U1s?ˆ?????b?Zl???k??*f??檘???b?Zl???k}~????c??cc?6??0W?ޅ????[?ލ?#???;b???3??b????ػR?c?????????vl?????]?۱ޅ??????z7???????m?=?^?FO,??
?+?\(?X??Ɓؕ?W?+??~??rŖ?O^j??V??[?[{<y-?b{q'?MUlq?\۬9?Z?Yk????dl)????R?[?????&{K1pM?b??,.??5?\??k??*f??檘?&??b??l???k]???k]?k??*f??檘???b?Zl???k??*f??檘??gs??9b?c?McOj??Z?r?*ֻ??b?{+???;b???#????{c?/??X??ޕ?/1Y?KL&^r?c?\L?p8ֻ??c?{;ֻ????n?}c???'???{b?????X0??'V|?V:V|?w8v????i??v?ͥ?]]:?jK?X1?}??凓/?S?v?ɷ?)v}?????_k2???dk)????RL[????&sK1oM??b??.??5Y\??k2?3?dsU?\??U1sM6W??5?\3?bsU?\?r[|?\??U1s-6W?̵?\3?bsU?\??U1s?ϯ}???e?C?Ec??؅???.?U?wco?z7?V???Os???w?z_읱?{g??`????]?^??&v???K.vꒋ?`?N??{;?+??X?????????????{b?|???W???R?ϯ>xs?bŗ{?bkm?XK???6߬???Z???R?n??wk)v???˵?]k??Z?]???z-????L-Ŭ??Z?a?[?i?Y[?q??[?y??[???\???Y\????\????\3W??*f?fsU?\?檘??r?i?\}??4f?fsU?\?檘???U1s5??b?j6W???l???k\??b+T?P٩*???O???`o?z?????????7?[?{b?{O???????ʶ?_???,m?_???ֶm^ۦ?޶?{?[ܶyq??/?zoqqlu???m??nۼ?M??m???)??m3???fk)??fl)??fm)ƭfn)??fo)?fp)&?fq)F?fr)f?fsU?\?檘???U1s5??b??˪ܘ???+7f?fsU?\?檘???U1s5??b?j6W?̵^O?b???p??'???T?~??c???cc???7?[???z{O?w`????e?zb?|??X???؍??r#r?J??W"+v'??;??y????b?Y?k?7_??ؽț?EV?b??#+v3?fj)f???R[??RL[??R?[??R?[??R\??RL\??R?\??R?\?檘???U1s5??b?j6W???l?????\3W??*f?fsU?\?檘???U1s5??b?ZWP~?????WP??
??`???
{;?+??Xoa??-?}c?{O?w??X//?????zbŗ?ױ?????:??z??kU???^+??z??k?6_o?|????ͫ??}?y??f???_+??z3??V???V3??V???V3??V??W3?W??#W3?3W??*f?fsU?\?檘???U1s?媑???r?H?\?檘???U1s5??b?j6W???l?ʙ??%g;??l???l???mao?z???-?}c??;7c?{O?w`????JU=?`^??'V|Y?۫???n^???f?͛U[??y??b?U7?VUl???媊mWݼ]U????׫*?_u?~U??6[K1l5cK1m5kK1n5sK1o5{K1p5?K1q5?K1r5?K1s5??b?j6W???l?????\3W_????՗m?1s5??b?j6W???l?????\3W??*f????a}??W??~???c???????_?????_6??D?0q?D}???M\4?7M??Mgb?KWb⡉????????'vb?h⛘X4?$&♣o9t??H>t???੣???>x?(p???;
<???b????,??Dea?HT?????)?+g?rb?JT.?\?ʅ?;Q??r'*7Vv???????o????7Q?b?IT^????{??Î???z?L?L??\????a?|?>?k&H	?:L %t?@J ?0??P?a)???R?A???CH		??:L!%,t?BJ`?0????a)???R?C?=T?????>frg?C???*ࡏ???P=?B}??΀??aU?C3/?????
x?c&wF=?9???>??e????,????ʑ?X9?+g?rb?JTN??6Q??r'*V?D???NTn??Dec囨l?|?/V?D動'Q?_?|Q?m&??	t???<8?$?s??J ?0???a)A??R?@???#H	V?:? %t?AJ@?0????a	)A??R?B?-??cH	֐:?!%<t?C???aU?C????L?x???󠀇>frg?C???*ࡏ???P=??
x?c&w<T{???yy??????/?+??~??+??pae%*+G???r$*V?D??ʙ??X??+W?ra?NT.~?(Q????+;Q?X?&*+?D動'Q?b?IT^??|?????@繽(?<?$?s??J ?0???a)A??R?@???#H	V?:? %t?AJ@?0????a	)A??R?B?-??cH	֐:?!%<t?C???aU?C???*ࡏ????ǿ/?x?c&w<T{???ɝ?????>frg?C???*?XH?E??(?>?e????,??ʁ?#Q9?r&*'V?D??ʕ?\X??+w?rc?NTn??De???Dec囨|??MT?Xy?+O??W??	d^??'?y.K?[?΅?	??? : %tX@J?0??0?a)???RBA???3H	v?:!%$tXBJP?0????a)???RBC?5??sH    	??
????aU?C3?3??z?C???????D???P?C3?3??z?C???L?x??P<?1?;#???+???)-\D\?Eą???,????X9?+g?rb?LTN?\?ʅ?+Q??r'*7V?D???NT6Vv????MT?|9A???ʓ?<Xy?|_???Bm?N?O??\.(P????G	 ?:, %t?@J谁?@?a)???
R?A????;H	??:,!%(t?BJX谅???a)???R?C?9???{???=T}??΀??aU?C3?3??z.???yy???dU?C3?3??z?C???L?x?c??o?O3??9????M??_???/?????????/????|?????]??7s>L??9???y~6G4?|s??ߜAs?oΤ9?7??????l?? ??6?????|E?E?W?b???X4}E????`Ѳ????V????HX?}E¢???????,z}E???hb????>?W??Il??K??q7?ؠ|n?A>8?? ??r??b:?g??Ã??A???P???P?? Q?Q,?QL?Ql?Q??Q??Q??Q???9???sD?#???bG??uy??sD]@?Q???9???sD?#???bG??Ŏ(?#;?|?x>?\???????D??H|c?|E?E?+j,*_ыE?W?b??,????E?V????H-_??h???G?????}E?E?+X???????E?W4????.?9??$6?????????_Ӆ>7?? ?p?Ob9?G1䳃???A???P???P???P?? Q?Q,?QL?Ql?Q??Q??Q??Q???9???sD?#???bG??uy??sD]@?Q???9???sD?#???bG???Q>G<??&?ů??ǆ?MZ??J?1H????????W?b???X4|E????`Ѵ???e+҃E?W$,ھ"a????????,z}E?^_?Ģ?+?Xt|E???絹?8??>???|lЅ>7?? ?p?Ob9?G1䳃???A???P???P???P?? Q?Q,?QL?Ql?Q??Q??Q??Q?w^}?(vD?Q???9???sDݞ???. |?(vD?Q???9???sD?#?????(?#?(?/??ǆ??|??o?????|E?E?+zyK???Ţ?+:X4}E?????????V??S?+m_??h??
??WTXԾ??E??h??#_?Ģ?+?Xt|E??????o???b_?E>6????n?b8?'?䣃???Al?? ƃ|z(փ||(??|~(??|?(?|?(?|?(&?|?(6?|?(F?|?(V?|?(f?|?(vD?Q???9???sD?#?爺<?9?. |?(vD?Q???9???sD?#?????(?#?(ЯO?ǆ??S?՝??+j,*_QcQ??^,????????X_???i+??1=6????????E?W$,ھ?¢???h`??+X???&_????"ލ???Z?$????.j??A6?? v?|p?A>9?? ?t??b;ȇ1??C???C1??C??D1 ?D? ?#D1!?3D?!?CD1"?SD?"?cD1#?sD?#???bG??Ŏ(?#?Q>G?????uy ?sD?#???bG??Ŏ(?#?Q>GvD?1>???O??ӍL????ݜ???o?????7觳6?ҷ?z~6?iVyg?4kxg?5???Ь??%?????f?w֠Y?w?9??ba??e?e?-XV޲?g??lb???M,?޲?e?[??ly?6?-o?Ʋ?-k,?޲Ʋ???X?޲?^o??g޲?e?Z6,;ֲ?b??]?o????}g?4n?2d^?u?d?????W"?%"/E&SD^?L?????y52Y#?rd2G???d???? ?W$?E"/I&?D^?L6??(??yU2Y%??d1K?u?b???%?]R^?,vIy]??%?uɺ<??d]?x]??%?u?b???%?]R^?,vIy]??%?u??????i??鳅??Y??????ɬ?Y?:????&oًe?-{???eˆ??`ٰ???w???!?????Kޏ?
??-+,+o?????,޲?e?[6?sWo?²?-[X??e˖?lc???5?moYcY{?^,koًe???`??-;Xv?e???ֲ??I??f????Q?x?.
?2d^?u?d?|~S????y%2Y"?Rd2E???d?ȋ???W#?5"/G&sD^?L??? ?yE2Y$??d2I?5?d?ȋ??(?W%?U"/K?D^?,vIy]??%?u?b???%?]R^?????K????%?]R^?,vIy]??%?u?b???%?]R^???߲???j??/?j???.y???-{?ߘ??Ų??,޲?e?Z6??>?_~??C|?F޷i
??[6???eˆ?lb???M,?޲?e?[??ly?6???-?X??e?e?[?X?޲??[?b??-;X?z??k?|??X?&???Ǜ??????]?eȼ0?????"?!"?D&KD^?L????ly12#?jd?F???d??????$?A"?H&?D^?L&??&?lyQ2%??d?J?e?b?????.)?K???.Y????d?K???uy>?uɺ< ??d?K????.)?K???.Y????d?K????.)?K???Y?Ɱ???C?^???.y???-{???e/??????Eo???a-??j?k?????UXV޲?e?-X6?eˆ?lb???-,?޲?e?[??ly?6?moY???oYcY{?^,koًe???`??-;Xv?e???c-??M??7M???????m?0?????"?!"?D&KD^?L????ly12#?jd?F???d??????$?A"?H&?D^?L&??&?lyQ2%??d?J?e?b?????.)?K???.Y????d?K???uy>?uɺ< ??d?K????.)?K???.Y????d?K?????????ӷ3??u???Kް??-{???e??[v?lX???e?Z????l?p????;A????ro?????,޲?e?[6?lz??Mo?²?-?X??e˶???l{???[??}I޲?^o????[v??X???e?Z6??5=?4??K????/C??!^?Lv???y%2Y"?Rd2E???d?ȋ???W#?5"/G&sD^?L??? ?yE2Y$??d2I?5?d?ȋ??(?W%?U"/K?D^???%?^?,vIy]??%?u?b???%??|??vy@?u?b???%?]R^?,vIy]??%?u?b???%???,~???????+???g?6?Z?6??g`??1???0L޲??[?bYy??o???a-??Mk?~?V?i?d?x+ȴ?
??e?[&,[޲²?-+?V?[6???e??[6????M,{?eˎ?la???]n?z?i|???????^޶?^?;?6??%?%^?/????ͷx?{???k???ǫ?"?b?#?j?Y#?r??#?z??#???$???Y$򒤙$????$???%???Y%򲤙%????%?uI?K???f???%?.)?K?r???%}?\???f???%?.)?K^vIy]??K?뒗]R??$nm?֭?????Ӻ?}˖?LX??e?e?[VX??e??[6?Bo?Ĳ?[6????-,;޲?e?[Ʒ?|???a_C?x?.7?x?Xٗ+V?w?l?cE?KV6_?"?-+?oY?????׬?{?J?E??H3F??H?F??H3G??H?G?I3H?I?H?%I3I?5I?I?EI3J?UI?J?eI3K?uI_n}????%?uI?K???f???%}????v?????f???%?.)?K^vIy]??K?뒗]R??$?ԝ֝?????ӺSw˖?LX??e?e?[VX??e??[6???e?^o??E?޲?e?[???x?x??oo???m?쿗??? ߻?|yW?o^?/???;??]??y	??[??-"/F?1"?F?5"/G?9"?G?="/H?A"?H?E"/I?I"?I?M"/J?Q"?J?U"/K?Y"?K?]R^?4???.ivIy]??????/7?x]җ?y?.ivIy]??????e???%/???.y?%e~L??;????????}GP?*????l{?
˶?l`Y{????lb??-?X?z??o?²?-?w??_^o??/??޶????????~?????????ͯ???N??w?   ?}??K??????V????7cD^?4kD^?4sD^?4{D^?4?D^?4?D^?4?D^?4?D^?4?D^?4?D^?4?D^?4???.ivIy]???????%?uI_6y]җUC^?4???.ivIy]??K?뒗]R^???????e???9??????aCx????RX??e?e?[6?l{????lbY{?&??޲?e??la???m?0?[?7a????]Xz?m?۰??a??uX???6߇?????X?ވ??F,y??j?K?;???Ē?R?f?ȫ?f??ˑf????f???f??+?f??K?f??k?f?ȋ?f?ȫ?f??˒f????f???%?.)?K?]R^?4???.??=?^????N?K?]R^???????e???%/???.y?%?u???????!z~??/2??/?????w?????????/??7_????~??/????????w???w_????}?????s_?????s+4?????#5W<w???]????????s;5w??75w?ܓ?{9??:??v`?N???XJY?rd)uf?˙?ԡ5.???S=/ŕ*???J?K?H?K?H??O?T???Tq_?W??/?+U<.?Q?=??c?R?祸R??R<R??R<R??R<S??R<S??R?R?}??%Uܗ??*?ߛ???i\\])W?Kq????x??ץx??ץx????x????x???R?R?})ީ?qy??ԣ?q{????|^?+U</?#U?.?#U?.?3U?/?3U?/?+Uܗ??*?K??=`?<?U????<٫ԓ?y)?T??}??*^???*ޗ??*ޗ??*?K?J??x???K???ɯ??_??b9?      3      x?3?0??4?2?02R1z\\\ I?      0      x?????? ? ?      4      x?????? ? ?      2   e   x?3?T1U)?/?K)?556500Pq??L?(KK?r???2-*RI7-?/L???0s2
?rN*?(rr?t?r?̪?4,?r?J??2??LL????,?????? `?     