PGDMP       7                |            postgres    16.3    16.3     Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            \           1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            ]           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4700                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ^           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16403    asses    TABLE     �   CREATE TABLE public.asses (
    id integer NOT NULL,
    "Name" character varying(50),
    "Organisation" character varying(50),
    "Email" character varying(50),
    "Phone" character varying(50),
    "Country" character varying(50)
);
    DROP TABLE public.asses;
       public         heap    postgres    false            �            1259    16397    consult    TABLE     �   CREATE TABLE public.consult (
    id integer DEFAULT 1 NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(50),
    website character varying(50),
    mess character varying(200)
);
    DROP TABLE public.consult;
       public         heap    postgres    false            V          0    16403    asses 
   TABLE DATA           X   COPY public.asses (id, "Name", "Organisation", "Email", "Phone", "Country") FROM stdin;
    public          postgres    false    217   �       U          0    16397    consult 
   TABLE DATA           P   COPY public.consult (id, firstname, lastname, email, website, mess) FROM stdin;
    public          postgres    false    216   1       �           2606    16407    asses asses_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.asses
    ADD CONSTRAINT asses_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.asses DROP CONSTRAINT asses_pkey;
       public            postgres    false    217            �           2606    16402    consult consult_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT consult_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.consult DROP CONSTRAINT consult_pkey;
       public            postgres    false    216            V   I   x�3��CF\���y������E�y�ŉ%��y��`��t��������\NSc21���K�L����� ڬ�      U   ?   x�3�tO�K-�����I��L�R��R+srR���s9�����B fFjNN�BF&W� �L\     