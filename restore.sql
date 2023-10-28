--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE pdv;
--
-- Name: pdv; Type: DATABASE; Schema: -; Owner: pdv
--

CREATE DATABASE pdv WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE pdv OWNER TO pdv;

\connect pdv

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: itens_venda; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.itens_venda (
    id_item_venda integer NOT NULL,
    cod_venda integer NOT NULL,
    cod_produto_venda integer NOT NULL,
    qtd_produto_venda integer NOT NULL,
    valor_unitario_venda numeric(10,2) NOT NULL,
    imposto_produto_venda numeric(10,2) NOT NULL,
    total_produto_venda numeric(10,2) NOT NULL,
    total_imposto_venda numeric(10,2) NOT NULL,
    status_item_venda integer NOT NULL
);


ALTER TABLE public.itens_venda OWNER TO pdv;

--
-- Name: itens_venda_id_item_venda_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.itens_venda_id_item_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itens_venda_id_item_venda_seq OWNER TO pdv;

--
-- Name: itens_venda_id_item_venda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.itens_venda_id_item_venda_seq OWNED BY public.itens_venda.id_item_venda;


--
-- Name: perfis; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.perfis (
    id_perfil integer NOT NULL,
    nome_perfil character varying(50) NOT NULL,
    status_perfil integer NOT NULL
);


ALTER TABLE public.perfis OWNER TO pdv;

--
-- Name: perfis_id_perfil_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.perfis_id_perfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.perfis_id_perfil_seq OWNER TO pdv;

--
-- Name: perfis_id_perfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.perfis_id_perfil_seq OWNED BY public.perfis.id_perfil;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.produtos (
    id_produto integer NOT NULL,
    nome_produto character varying(100) NOT NULL,
    tipo_produto integer NOT NULL,
    preco_venda_produto numeric(10,2) NOT NULL,
    preco_custo_produto numeric(10,2) NOT NULL,
    status_produto integer NOT NULL
);


ALTER TABLE public.produtos OWNER TO pdv;

--
-- Name: produtos_id_produto_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.produtos_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_produto_seq OWNER TO pdv;

--
-- Name: produtos_id_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.produtos_id_produto_seq OWNED BY public.produtos.id_produto;


--
-- Name: tipos_produtos; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.tipos_produtos (
    id_tipo_produto integer NOT NULL,
    nome_tipo_produto character varying(100) NOT NULL,
    imposto_tipo_produto numeric(10,2) DEFAULT 0.00 NOT NULL,
    status_tipo_produto integer NOT NULL
);


ALTER TABLE public.tipos_produtos OWNER TO pdv;

--
-- Name: tipos_produtos_id_tipo_produto_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.tipos_produtos_id_tipo_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_produtos_id_tipo_produto_seq OWNER TO pdv;

--
-- Name: tipos_produtos_id_tipo_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.tipos_produtos_id_tipo_produto_seq OWNED BY public.tipos_produtos.id_tipo_produto;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    perfil_usuario integer NOT NULL,
    nome_usuario character varying(60) NOT NULL,
    email_usuario character varying(40) NOT NULL,
    telefone_usuario character varying(20) NOT NULL,
    login_usuario character varying(20) NOT NULL,
    senha_usuario character varying(200) NOT NULL,
    status_usuario integer NOT NULL
);


ALTER TABLE public.usuarios OWNER TO pdv;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO pdv;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: vendas; Type: TABLE; Schema: public; Owner: pdv
--

CREATE TABLE public.vendas (
    id_venda integer NOT NULL,
    datetime_venda timestamp without time zone NOT NULL,
    valor_total_venda numeric(10,2) DEFAULT 0.00 NOT NULL,
    valor_imposto_venda numeric(10,2) NOT NULL,
    status_venda integer NOT NULL
);


ALTER TABLE public.vendas OWNER TO pdv;

--
-- Name: vendas_id_venda_seq; Type: SEQUENCE; Schema: public; Owner: pdv
--

CREATE SEQUENCE public.vendas_id_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendas_id_venda_seq OWNER TO pdv;

--
-- Name: vendas_id_venda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pdv
--

ALTER SEQUENCE public.vendas_id_venda_seq OWNED BY public.vendas.id_venda;


--
-- Name: itens_venda id_item_venda; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.itens_venda ALTER COLUMN id_item_venda SET DEFAULT nextval('public.itens_venda_id_item_venda_seq'::regclass);


--
-- Name: perfis id_perfil; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.perfis ALTER COLUMN id_perfil SET DEFAULT nextval('public.perfis_id_perfil_seq'::regclass);


--
-- Name: produtos id_produto; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.produtos ALTER COLUMN id_produto SET DEFAULT nextval('public.produtos_id_produto_seq'::regclass);


--
-- Name: tipos_produtos id_tipo_produto; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.tipos_produtos ALTER COLUMN id_tipo_produto SET DEFAULT nextval('public.tipos_produtos_id_tipo_produto_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Name: vendas id_venda; Type: DEFAULT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.vendas ALTER COLUMN id_venda SET DEFAULT nextval('public.vendas_id_venda_seq'::regclass);


--
-- Data for Name: itens_venda; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.itens_venda (id_item_venda, cod_venda, cod_produto_venda, qtd_produto_venda, valor_unitario_venda, imposto_produto_venda, total_produto_venda, total_imposto_venda, status_item_venda) FROM stdin;
\.
COPY public.itens_venda (id_item_venda, cod_venda, cod_produto_venda, qtd_produto_venda, valor_unitario_venda, imposto_produto_venda, total_produto_venda, total_imposto_venda, status_item_venda) FROM '$$PATH$$/3394.dat';

--
-- Data for Name: perfis; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.perfis (id_perfil, nome_perfil, status_perfil) FROM stdin;
\.
COPY public.perfis (id_perfil, nome_perfil, status_perfil) FROM '$$PATH$$/3384.dat';

--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.produtos (id_produto, nome_produto, tipo_produto, preco_venda_produto, preco_custo_produto, status_produto) FROM stdin;
\.
COPY public.produtos (id_produto, nome_produto, tipo_produto, preco_venda_produto, preco_custo_produto, status_produto) FROM '$$PATH$$/3390.dat';

--
-- Data for Name: tipos_produtos; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.tipos_produtos (id_tipo_produto, nome_tipo_produto, imposto_tipo_produto, status_tipo_produto) FROM stdin;
\.
COPY public.tipos_produtos (id_tipo_produto, nome_tipo_produto, imposto_tipo_produto, status_tipo_produto) FROM '$$PATH$$/3388.dat';

--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.usuarios (id_usuario, perfil_usuario, nome_usuario, email_usuario, telefone_usuario, login_usuario, senha_usuario, status_usuario) FROM stdin;
\.
COPY public.usuarios (id_usuario, perfil_usuario, nome_usuario, email_usuario, telefone_usuario, login_usuario, senha_usuario, status_usuario) FROM '$$PATH$$/3386.dat';

--
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: pdv
--

COPY public.vendas (id_venda, datetime_venda, valor_total_venda, valor_imposto_venda, status_venda) FROM stdin;
\.
COPY public.vendas (id_venda, datetime_venda, valor_total_venda, valor_imposto_venda, status_venda) FROM '$$PATH$$/3392.dat';

--
-- Name: itens_venda_id_item_venda_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.itens_venda_id_item_venda_seq', 21, true);


--
-- Name: perfis_id_perfil_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.perfis_id_perfil_seq', 1, false);


--
-- Name: produtos_id_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.produtos_id_produto_seq', 7, true);


--
-- Name: tipos_produtos_id_tipo_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.tipos_produtos_id_tipo_produto_seq', 10, true);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, true);


--
-- Name: vendas_id_venda_seq; Type: SEQUENCE SET; Schema: public; Owner: pdv
--

SELECT pg_catalog.setval('public.vendas_id_venda_seq', 14, true);


--
-- Name: itens_venda itens_venda_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.itens_venda
    ADD CONSTRAINT itens_venda_pkey PRIMARY KEY (id_item_venda);


--
-- Name: perfis perfis_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.perfis
    ADD CONSTRAINT perfis_pkey PRIMARY KEY (id_perfil);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id_produto);


--
-- Name: tipos_produtos tipos_produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.tipos_produtos
    ADD CONSTRAINT tipos_produtos_pkey PRIMARY KEY (id_tipo_produto);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: pdv
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id_venda);


--
-- PostgreSQL database dump complete
--

