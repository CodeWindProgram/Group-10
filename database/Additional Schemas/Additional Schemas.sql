PGDMP         .                y            MCQ Ecam    13.3    13.3 7               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17052    MCQ Ecam    DATABASE     f   CREATE DATABASE "MCQ Ecam" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE "MCQ Ecam";
                postgres    false            ?            1255    17087    update_timestamp_column()    FUNCTION     ?   CREATE FUNCTION public.update_timestamp_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.modified = now();
    RETURN NEW; 
END;
$$;
 0   DROP FUNCTION public.update_timestamp_column();
       public          postgres    false            ?            1259    17053    admin    TABLE     ?   CREATE TABLE public.admin (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(500) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            ?            1259    17220    admin_id_seq    SEQUENCE     ?   ALTER TABLE public.admin ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.admin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    200            ?            1259    17059    answer    TABLE     h   CREATE TABLE public.answer (
    id integer NOT NULL,
    qid text NOT NULL,
    ansid text NOT NULL
);
    DROP TABLE public.answer;
       public         heap    postgres    false            ?            1259    17222    answer_id_seq    SEQUENCE     ?   ALTER TABLE public.answer ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    201            ?            1259    17065    feedback    TABLE     +  CREATE TABLE public.feedback (
    id text NOT NULL,
    name character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    subject character varying(500) NOT NULL,
    feedback character varying(500) NOT NULL,
    date date NOT NULL,
    "time" character varying(50) NOT NULL
);
    DROP TABLE public.feedback;
       public         heap    postgres    false            ?            1259    17078    history    TABLE     ?  CREATE TABLE public.history (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    eid text NOT NULL,
    score integer NOT NULL,
    level integer NOT NULL,
    correct integer NOT NULL,
    wrong integer NOT NULL,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "timestamp" bigint NOT NULL,
    status character varying(40) NOT NULL,
    score_updated character varying(10) NOT NULL
);
    DROP TABLE public.history;
       public         heap    postgres    false            ?            1259    17224    history_id_seq    SEQUENCE     ?   ALTER TABLE public.history ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    203            ?            1259    17089    options    TABLE     ?   CREATE TABLE public.options (
    id integer NOT NULL,
    qid character varying(50) NOT NULL,
    option character varying(5000) NOT NULL,
    optionid text NOT NULL
);
    DROP TABLE public.options;
       public         heap    postgres    false            ?            1259    17226    options_id_seq    SEQUENCE     ?   ALTER TABLE public.options ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    204            ?            1259    17095 	   questions    TABLE     ?   CREATE TABLE public.questions (
    id integer NOT NULL,
    eid text NOT NULL,
    qid text NOT NULL,
    qns text NOT NULL,
    choice integer NOT NULL,
    sn integer NOT NULL
);
    DROP TABLE public.questions;
       public         heap    postgres    false            ?            1259    17228    questions_id_seq    SEQUENCE     ?   ALTER TABLE public.questions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    205            ?            1259    17101    quiz    TABLE     B  CREATE TABLE public.quiz (
    id integer NOT NULL,
    eid text NOT NULL,
    title character varying(100) NOT NULL,
    correct integer NOT NULL,
    wrong integer NOT NULL,
    total integer NOT NULL,
    "time" bigint NOT NULL,
    date date DEFAULT CURRENT_DATE NOT NULL,
    status character varying(10) NOT NULL
);
    DROP TABLE public.quiz;
       public         heap    postgres    false            ?            1259    17230    quiz_id_seq    SEQUENCE     ?   ALTER TABLE public.quiz ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.quiz_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    206            ?            1259    17108    rank    TABLE     ?   CREATE TABLE public.rank (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    score integer NOT NULL,
    "time" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.rank;
       public         heap    postgres    false            ?            1259    17232    rank_id_seq    SEQUENCE     ?   ALTER TABLE public.rank ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.rank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    207            ?            1259    17116    user_answer    TABLE       CREATE TABLE public.user_answer (
    id integer NOT NULL,
    qid character varying(50) NOT NULL,
    ans character varying(50) NOT NULL,
    correctans character varying(50) NOT NULL,
    eid character varying(50) NOT NULL,
    username character varying(50) NOT NULL
);
    DROP TABLE public.user_answer;
       public         heap    postgres    false            ?            1259    17234    user_answer_id_seq    SEQUENCE     ?   ALTER TABLE public.user_answer ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.user_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            ?            1259    17112    users    TABLE     }  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    rollno character varying(20) NOT NULL,
    branch character varying(20) NOT NULL,
    gender character varying(5) NOT NULL,
    username character varying(50) NOT NULL,
    phno bigint NOT NULL,
    password character varying(50) NOT NULL,
    img character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    17236    users_id_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    208            ?          0    17053    admin 
   TABLE DATA           7   COPY public.admin (id, username, password) FROM stdin;
    public          postgres    false    200   ?>       ?          0    17059    answer 
   TABLE DATA           0   COPY public.answer (id, qid, ansid) FROM stdin;
    public          postgres    false    201   ?>       ?          0    17065    feedback 
   TABLE DATA           W   COPY public.feedback (id, name, username, subject, feedback, date, "time") FROM stdin;
    public          postgres    false    202   C?       ?          0    17078    history 
   TABLE DATA           |   COPY public.history (id, username, eid, score, level, correct, wrong, date, "timestamp", status, score_updated) FROM stdin;
    public          postgres    false    203   `?       ?          0    17089    options 
   TABLE DATA           <   COPY public.options (id, qid, option, optionid) FROM stdin;
    public          postgres    false    204   *@       ?          0    17095 	   questions 
   TABLE DATA           B   COPY public.questions (id, eid, qid, qns, choice, sn) FROM stdin;
    public          postgres    false    205   A                  0    17101    quiz 
   TABLE DATA           [   COPY public.quiz (id, eid, title, correct, wrong, total, "time", date, status) FROM stdin;
    public          postgres    false    206   ?A                 0    17108    rank 
   TABLE DATA           ;   COPY public.rank (id, username, score, "time") FROM stdin;
    public          postgres    false    207   B                 0    17116    user_answer 
   TABLE DATA           N   COPY public.user_answer (id, qid, ans, correctans, eid, username) FROM stdin;
    public          postgres    false    209   hB                 0    17112    users 
   TABLE DATA           `   COPY public.users (id, name, rollno, branch, gender, username, phno, password, img) FROM stdin;
    public          postgres    false    208   eC                  0    0    admin_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.admin_id_seq', 1, false);
          public          postgres    false    210                       0    0    answer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.answer_id_seq', 1, false);
          public          postgres    false    211                       0    0    history_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.history_id_seq', 1, false);
          public          postgres    false    212                       0    0    options_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.options_id_seq', 1, false);
          public          postgres    false    213                       0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 1, false);
          public          postgres    false    214                       0    0    quiz_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.quiz_id_seq', 1, false);
          public          postgres    false    215                       0    0    rank_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.rank_id_seq', 1, false);
          public          postgres    false    216                       0    0    user_answer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_answer_id_seq', 1, false);
          public          postgres    false    217                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    218            b           2606    17177    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    200            d           2606    17179    answer answer_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pkey;
       public            postgres    false    201            f           2606    17181    history history_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.history DROP CONSTRAINT history_pkey;
       public            postgres    false    203            h           2606    17183    options options_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.options DROP CONSTRAINT options_pkey;
       public            postgres    false    204            j           2606    17185    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    205            l           2606    17187    quiz quiz_id_key 
   CONSTRAINT     I   ALTER TABLE ONLY public.quiz
    ADD CONSTRAINT quiz_id_key UNIQUE (id);
 :   ALTER TABLE ONLY public.quiz DROP CONSTRAINT quiz_id_key;
       public            postgres    false    206            n           2606    17189    rank rank_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.rank
    ADD CONSTRAINT rank_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.rank DROP CONSTRAINT rank_pkey;
       public            postgres    false    207            v           2606    17197    user_answer user_answer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_answer
    ADD CONSTRAINT user_answer_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_answer DROP CONSTRAINT user_answer_pkey;
       public            postgres    false    209            p           2606    17195    users users_id_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_id_key UNIQUE (id);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT users_id_key;
       public            postgres    false    208            r           2606    17191    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    208            t           2606    17193    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    208            w           2620    17088    history update_history_modtime    TRIGGER     ?   CREATE TRIGGER update_history_modtime BEFORE UPDATE ON public.history FOR EACH ROW EXECUTE FUNCTION public.update_timestamp_column();
 7   DROP TRIGGER update_history_modtime ON public.history;
       public          postgres    false    219    203            ?       x?3?LL????4426153??4?????? I      ?   ]   x?Eλ?0 ??b???.4???G ?w???\B??Fc)????O??OQ	?ASw?B?R?@?>?9S???4?Rf???Tn???@8w ???&      ?      x?????? ? ?      ?   ?   x???K?@?u9???0??qCp@FF?(	?tٯk!?ڡ????P?QT??X?=d?@?4#?%#JQ;4?H)fcP#4???W?p?$N?Ct5??$t?7??ڛ?ϡ?C????ӈ?8^])s\1??h?~?.C8~@?ְ?d????MZ???Q??ډq?]E?Fp?9O??'mhA      ?   ?   x?}?;n?0??<La??dh??X???
?:?ld䏏?O?E?Ǖ?%j?s??&?#H?d??p .
????J???!$?	??w?	??%û??߀bN??O??%?(??p% ?x ?& #P~nE?5$Y?r????j??G?lh4??z6|0??????{?b*?????Uȳm?D#J/??HH?? ?j???      ?   ?   x?m?;?0???9EO??v?3t ?HH,,????C????&<X??O??3JN?]P[)i?'???????????L??,`A	?v?ⷈSfy???????&?v?H)?6P?Y?? 8?	C??{1?de?ۣ???TMݬZ???C?????z>?^??A???;          =   x?3?4M?054K6???LM?t+??+?44 !#N# a`d?k`?k`??????????? zO?         S   x?E?1
?0?99E/P?IS?9KA\Zo?ط>?m}?IQI?1GHs????:?HH?????{??GkA??x2?3???z         ?   x???KN?0 ??a??|lg?A??H????SD?^?E?ٓ?a?,eVU֕?2?z?d!??t?L?$???)YSɐ?.=ꯚ??q?{?`X͑&???v*??.-??H#????w0)z??2d?????!?!???*??

N???O????y?F?̙??i??<???Q$v.?a|z???-N?p?-Kcy???1?Nr?yοUg???mw??K}?????j???V?|B|9??X           x????N?0???<?;_?4M?2q?#?4q?J+C????Ba??|\"??$x????F\#l7[???z??pX??$hB?്???wR?O?D????p???H??!?9??-lgIs?1S]!0C??a2ETS??a??Ij]????Y^?+??||???!v??:Y????	?R?kC???5??~8?????k/????H????+?ů,a?/??hR?V???׻?????Цc?U!??~Leq,l*?q?ƿq???j???>??     