--
-- PostgreSQL database dump
--

-- Dumped from database version 10.15
-- Dumped by pg_dump version 10.15

-- Started on 2022-03-28 23:56:59

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 119375)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    username character varying,
    password character varying,
    phone character varying,
    id uuid,
    "createdAt" time without time zone,
    "updatedAt" time without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 2790 (class 0 OID 119375)
-- Dependencies: 196
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES ('huuh', '123123', '978600276', NULL, NULL, NULL);
INSERT INTO public.users VALUES ('huuhoang', '123123', '9999', NULL, NULL, NULL);


-- Completed on 2022-03-28 23:57:00

--
-- PostgreSQL database dump complete
--

