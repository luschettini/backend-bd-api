PGDMP      9    
            }            cadastro    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16413    cadastro    DATABASE     n   CREATE DATABASE cadastro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE cadastro;
                     postgres    false            �            1259    16424    posts    TABLE     �   CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    image character varying(500),
    user_id integer NOT NULL,
    photo text
);
    DROP TABLE public.posts;
       public         heap r       postgres    false            �            1259    16423    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public               postgres    false    220                        0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public               postgres    false    219            �            1259    16415    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    photo text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16414    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            ]           2604    16427    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            \           2604    16418    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16424    posts 
   TABLE DATA           J   COPY public.posts (id, title, content, image, user_id, photo) FROM stdin;
    public               postgres    false    220   �       �          0    16415    users 
   TABLE DATA           7   COPY public.users (id, name, email, photo) FROM stdin;
    public               postgres    false    218   {                  0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 8, true);
          public               postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 51, true);
          public               postgres    false    217            c           2606    16431    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public                 postgres    false    220            _           2606    16422    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            a           2606    16420    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            d           2606    16432    posts posts_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_user_id_fkey;
       public               postgres    false    220    4705    218            �   �   x���1�0������$m���x �����
��9\��G�$B: ,M^�/�%G�S&`�[�����z4C;m�~p!
�.�q�.ܐ7���i�N��P���\;�]��KB�_�������}�%ō=���"2�6lL+ŒUF��(�独KB�_V�j-yK��t�%�挱���>      �   �  x�m�Kr7E�O��%��g��Ȳ#�.�%�.M�AJ7� ��(�,"�d+�N��\ mW�� �~��t-����AڂE���lY5�2-=ޝ���*ޘ�^5{�n���cՈέצxot'��]�c�暋��Q̤�ɋ�w�T�6�t���Ѹ�Ge9�M~Z{]�ۜL���:&�5V��0���qżi���������JZͺ����ӺG��g��WVɦ�Q-�&�h ���)�q��Sm�T"ae��5������z2�ąe&�[�P�[�k�I(ڈ���[�HN񠴪�w�F��3�����7�R !V*��16ĺ�Ȏ��N�:�ug��A�E��zϝ��O�?xר}�������Mi�kF�K��#Q�	3�݇��=n��q�D(��h{��k(��:��u�Sz`�"���8C�ĢJ���A�F>�B@�>G6a��Gv��ťGD��#�:R�-铬�3����7DȔ#�7���m���(�3���k�����~t�=f�	f�Uh빮-��Pp�L=�K�*L�z��	�:b�>��C��7���^r�ጮx�` �ң�։�ϻ�<��&�7�Ҡ�m�.b�k�����ESo#�U�L;�7c1�i^ ��¬�%E�õnq�S"ae���ȕ�ŕ�e��"�u�L=��]J�%��	(�3�$���b﷉Q����/�t�*ӰC::LW'FB"g�3
íB���g"�Qe�,��%g	n ¤Dʾ.�������A�%�6����z 'h=|���Mt�@b)�i�HBT�_�F�c�F%=�
}S\{�>����38�ՠ�m�������hL��7Q��׿Dz��G�譊��7�3 �- SN�o$�Y\��G(!k��%�߷�Sg��?�*n�:Pk),3݌�e0�C0�z�0X�.���)]�JǶ��0|�*	�(S�j��;v�B"p��aG��;ǧ�����	�     