PGDMP     4    6                x            series    10.13    10.13     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    20595    series    DATABASE     �   CREATE DATABASE series WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE series;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    20598    serie    TABLE     �   CREATE TABLE public.serie (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    protagonistas character varying(255) NOT NULL
);
    DROP TABLE public.serie;
       public         postgres    false    3            �            1259    20596    serie_id_seq    SEQUENCE     u   CREATE SEQUENCE public.serie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.serie_id_seq;
       public       postgres    false    3    197            �
           0    0    serie_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.serie_id_seq OWNED BY public.serie.id;
            public       postgres    false    196            o
           2604    20601    serie id    DEFAULT     d   ALTER TABLE ONLY public.serie ALTER COLUMN id SET DEFAULT nextval('public.serie_id_seq'::regclass);
 7   ALTER TABLE public.serie ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    20598    serie 
   TABLE DATA               G   COPY public.serie (id, nombre, descripcion, protagonistas) FROM stdin;
    public       postgres    false    197   4       �
           0    0    serie_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.serie_id_seq', 2, true);
            public       postgres    false    196            q
           2606    20606    serie serie_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.serie
    ADD CONSTRAINT serie_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.serie DROP CONSTRAINT serie_pkey;
       public         postgres    false    197            �
   :   x�3�N�)KL�/V(�/R�ITpN�-H�K�N-�LU�*-K����JL������ ���     