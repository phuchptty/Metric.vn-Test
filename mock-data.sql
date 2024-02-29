--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

ALTER TABLE IF EXISTS ONLY public.price_histories DROP CONSTRAINT IF EXISTS price_histories_item_id_fkey;
ALTER TABLE IF EXISTS ONLY public.items DROP CONSTRAINT IF EXISTS items_category_id_fkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;
DROP INDEX IF EXISTS public.ix_items_slug;
DROP INDEX IF EXISTS public.ix_items_id;
DROP INDEX IF EXISTS public.ix_categories_slug;
DROP INDEX IF EXISTS public.ix_categories_id;
ALTER TABLE IF EXISTS ONLY public.price_histories DROP CONSTRAINT IF EXISTS price_histories_pkey;
ALTER TABLE IF EXISTS ONLY public.items DROP CONSTRAINT IF EXISTS items_pkey;
ALTER TABLE IF EXISTS ONLY public.categories DROP CONSTRAINT IF EXISTS categories_pkey;
ALTER TABLE IF EXISTS ONLY public.alembic_version DROP CONSTRAINT IF EXISTS alembic_version_pkc;
ALTER TABLE IF EXISTS public.price_histories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.items ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.categories ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.price_histories_id_seq;
DROP TABLE IF EXISTS public.price_histories;
DROP SEQUENCE IF EXISTS public.items_id_seq;
DROP TABLE IF EXISTS public.items;
DROP SEQUENCE IF EXISTS public.categories_id_seq;
DROP TABLE IF EXISTS public.categories;
DROP TABLE IF EXISTS public.alembic_version;
DROP SCHEMA IF EXISTS public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying,
    level integer,
    parent_id integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    slug character varying,
    name character varying NOT NULL,
    description character varying,
    category_id integer NOT NULL,
    images character varying,
    thumbnail character varying,
    historical_sold integer,
    rating_count integer,
    rating_avg double precision,
    comment_count integer,
    price_before_discount double precision,
    provider character varying NOT NULL,
    provider_url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: price_histories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.price_histories (
    id integer NOT NULL,
    item_id integer,
    price double precision,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.price_histories OWNER TO postgres;

--
-- Name: price_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.price_histories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.price_histories_id_seq OWNER TO postgres;

--
-- Name: price_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.price_histories_id_seq OWNED BY public.price_histories.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: price_histories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_histories ALTER COLUMN id SET DEFAULT nextval('public.price_histories_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alembic_version (version_num) VALUES ('f9ba9720d9fc');


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (1, 'Máy tính & Laptop', 'may-tinh-laptop', 0, NULL, '2024-02-28 04:44:48.593+00', '2024-02-28 04:44:50.261+00');
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (2, 'Phụ Kiện Máy Tính', 'phu-kien-may-tinh', 1, 1, '2024-02-27 21:45:35.34803+00', NULL);
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (3, 'Bộ chia cổng USB & Đọc thẻ nhớ', 'bo-chia-cong-usb-doc-the-nho', 2, 2, '2024-02-27 21:45:58.308881+00', NULL);
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (4, 'Thời trang nữ', 'ttn', 0, NULL, '2024-02-29 11:36:32.945417+00', NULL);
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (5, 'Áo len', 'al', 1, 4, '2024-02-29 11:36:32.945417+00', NULL);
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (6, 'Giày dép nam', 'gdn', 0, NULL, '2024-02-29 11:36:55.820162+00', NULL);
INSERT INTO public.categories (id, name, slug, level, parent_id, created_at, updated_at) VALUES (7, 'Dép', 'dep', 1, 6, '2024-02-29 11:37:09.659095+00', NULL);


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.items (id, slug, name, description, category_id, images, thumbnail, historical_sold, rating_count, rating_avg, comment_count, price_before_discount, provider, provider_url, created_at, updated_at) VALUES (1, 'bo-hub-mo-rong-baseus-metal-gleam-starjoy-series-8-in-1-4k60hz-p', 'Bộ Hub mở rộng Baseus Metal Gleam 2 Series 4K60Hz', '⚡️ LƯU Ý QUAN TRỌNG:
🏎  Sản phẩm có nhiều phiên bản, quý khách vui lòng đọc kỹ thông tin và chọn phiên bản phù hợp
🏎  Sử dụng cho Máy tính xách tay / Máy tính bảng / Điện thoại có cổng Type C
🏎  Phiên bản (60Hz) hỗ trợ 4K / 60Hz, phiên bản khác hỗ trợ 4K / 30Hz.
🏎  Tất cả các cổng USB đều hỗ trợ Sạc và Truyền dữ liệu.
🏎  Điện thoại di động / máy tính bảng sử dụng hub để đọc dữ liệu hoặc hiển thị mở rộng màn hình, thì điện thoại / máy tính bảng đó cần hỗ trợ chức năng OTG.
🏎  Do cổng C có nhiều chuẩn khác nhau: vui lòng đảm bảo các chuẩn ThunderBolt 3 / USB-C 3.1 Gen 2 để hỗ trợ nhiều màn hình trước khi mua hàng.
🏎  Do giới hạn của hệ điều hành, Windows hỗ trợ 3 màn hình riêng biệt, Mac không hỗ trợ 3 màn hình riêng biệt, chỉ hỗ trợ mirror mode và dual mode.

⚡️ THÔNG SỐ KỸ THUẬT chung:
🏎 Thương hiệu: Baseus
🏎 Cổng vào: Type C
🏎 Màu sắc: Bạc
🏎 Chất liệu: Hợp kim nhôm
🏎 USB 3.0*2: 5Gbps (Max)
🏎 USB 2.0: 480Mbps
🏎 HDMI*2: 4K@30Hz (Max)
🏎 SD/TF: 104MB/s
🏎 RJ45: 1000Mbps (Max)
🏎 Type-C PD: 100W (Max)
🏎 Input: 5V/3A, 9V/3A, 15V/3A, 20V/5A
🏎 Output: 5v/0.9A

⚡️ Thông số từng phiên bản:
4.1: USB3.0*4
4.2: USB3.0*3+RJ45:100Mbps
4.3: HDMI (4K30Hz), USB3.0, USB2.0, Type C (PD100W)

5.1: HDMI (4K30Hz), USB3.0*3, Type C (PD100W)
5.2: HDMI (4K60Hz), USB3.0*3, Type C (PD100W)

6.1: USB3.0*3+PD*1+SD/TF*1
6.2: HDMI*2+USB3.0*3+PD*1
6.3: HDMI*1+USB3.0*3+PD*1+VGA*1
6.4: HDMI (4K30Hz), USB3.0*3, RJ-45, Type C (PD100W)

7.1: HDMI*1+USB3.0*3+PD*1+VGA*1+RJ45*1
7.2: HDMI*2+USB3.0*3+PD*1+RJ45*1
7.3: HDMI (4K30Hz), USB3.0*3, Type C (PD 100W), Type C (Data), SD/TF Card Reader

8.1: HDMI*1+USB3.0*3+PD*1+SD/TF*1+VGA*1
8.2: HDMI*2+USB3.0*3+PD*1+SD/TF*1
8.3: HDMI (4K30Hz), USB3.0*3, RJ-45, SD, TF, Type C (PD100W)

9.1: HDMI*2+USB3.0*2+USB2.0*1+PD*1+SD/TF*1+RJ45*1
9.2: HDMI (4K30Hz), VGA, USB3.0*3, RJ-45, SD, TF, Type C (PD100W). Hỗ trợ 2 màn hình phản chiếu (Mirror Mode)

- 11 in 1: HDMI*2(4K30Hz), VGA, USB3.0*3, RJ-45, SD, TF, Audio Aux 3.5mm, Type C (PD100W). Hỗ trợ Window với 3 màn hình riêng biệt, hỗ trợ Mac với 3 màn hình phản chiếu (Mirror Mode).

- 12 in 1: HDMI: 8K@30Hz (Max.), DP: 8K@30Hz (Max.), USB 3.0*2: 5Gbps (Max.), USB 3.2*2: 10Gbps (Max.), Type-C 3.2: 10Gbps (Max.), Type-C PD: 100W (Max), RJ45: 10Mbps/100Mbps/1000Mbps, SD/TF: 104MB/s (Max.), Do not support data reading at the same time, 3.5mm Audio: Support headphones, audio output.

Bản 60Hz bổ sung:
- 6 in 1 4K60Hz: HDMI4K@60Hz*1+USB3.0*3+PD*1+RJ45*1
- 8 in 1 4K60Hz USB3.0: HDMI4K@60Hz*1+USB3.0*3+PD*1+RJ45*1+SD/TF*1
- 8 in 1 4K60Hz USB3.1: HDMI4K@60Hz*1+USB3.1*3+PD*1+RJ45*1+SD/TF*1

⚡️ THỜI GIAN BẢO HÀNH:
🏎  Bảo hành chính hãng 12 tháng
---------------------------------------------------------------------------
🔥 Chú Bé Shop - cáp sạc laptop, hub chuyển, thiết bị lưu trữ, phụ kiện công nghệ chính hãng
🔥 Chính sách bảo hành: https://chube.vn/chinh-sach-bao-hanh
🔥 Hotline: 028 9999 8880', 3, '["https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3a9zrw5632","https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3aa07ce294","https://cf.shopee.vn/file/0831df249013d5ae50d7ed42996412c8","https://cf.shopee.vn/file/be82e16ddc37dcf2657d02a30171a050","https://cf.shopee.vn/file/2d7d1d30596c7d6527b403f9e3a40518","https://cf.shopee.vn/file/38625d8696c075b0266676b87dc910dd","https://cf.shopee.vn/file/2c467c40341e8132bae9b6b493a7ae33","https://cf.shopee.vn/file/fb70d055c8d4b2604314d0ba36a9ba80"]', 'https://cf.shopee.vn/file/vn-11134207-7r98o-lnqi3a9zrw5632', 201, 60, 4.9166665, 60, 519000, 'shopee', 'https://shopee.vn/bo-hub-mo-rong-baseus-metal-gleam-2-series-4k60hz-i.227642622.5382617241', '2024-02-27 21:47:30.468663+00', NULL);


--
-- Data for Name: price_histories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (1, 1, 381650, '2023-06-06 05:39:31+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (2, 1, 449000, '2023-06-19 11:36:17+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (3, 1, 449000, '2023-06-23 10:42:53+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (4, 1, 579000, '2023-07-05 13:30:47+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (5, 1, 449000, '2023-07-06 09:23:29+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (6, 1, 404100, '2023-07-07 06:31:29+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (7, 1, 449000, '2023-07-18 00:25:22+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (8, 1, 449000, '2023-07-30 07:22:52+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (9, 1, 449000, '2023-08-02 22:45:12+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (10, 1, 669000, '2023-08-11 07:31:08+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (11, 1, 569000, '2023-08-24 19:49:13+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (12, 1, 608790, '2023-09-07 09:08:14+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (13, 1, 608790, '2023-09-14 09:24:39+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (14, 1, 526890, '2023-09-21 13:10:22+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (15, 1, 579000, '2023-10-05 07:30:03+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (16, 1, 579000, '2023-10-07 19:06:55+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (17, 1, 521100, '2023-10-08 23:47:07+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (18, 1, 526890, '2023-10-14 07:28:11+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (19, 1, 479470, '2023-10-15 10:22:02+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (20, 1, 408590, '2023-10-16 10:20:52+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (21, 1, 579000, '2023-10-27 14:03:24+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (22, 1, 669000, '2023-11-09 03:18:22+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (23, 1, 541890, '2023-11-10 08:51:43+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (24, 1, 669000, '2023-11-11 11:35:44+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (25, 1, 608790, '2023-11-24 02:23:26+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (26, 1, 669000, '2023-11-26 07:36:51+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (27, 1, 608790, '2023-11-30 04:59:23+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (28, 1, 669000, '2023-12-10 09:38:22+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (29, 1, 579000, '2023-12-13 06:38:49+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (30, 1, 526890, '2023-12-14 12:16:39+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (31, 1, 519000, '2023-12-22 04:04:15+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (32, 1, 472290, '2024-01-04 10:20:12.576+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (33, 1, 472290, '2024-01-05 19:39:34+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (34, 1, 519000, '2024-01-08 02:50:08+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (35, 1, 472290, '2024-01-14 02:07:32+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (36, 1, 409000, '2024-01-27 20:12:09+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (37, 1, 409000, '2024-02-03 11:15:55+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (38, 1, 579000, '2024-02-06 23:56:49+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (39, 1, 499000, '2024-02-13 06:21:50+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (40, 1, 579000, '2024-02-15 13:59:58+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (41, 1, 521100, '2024-02-26 03:21:29+00');
INSERT INTO public.price_histories (id, item_id, price, created_at) VALUES (42, 1, 472290, '2024-02-27 19:44:47.243+00');


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 1, true);


--
-- Name: price_histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.price_histories_id_seq', 42, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: price_histories price_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_histories
    ADD CONSTRAINT price_histories_pkey PRIMARY KEY (id);


--
-- Name: ix_categories_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_categories_id ON public.categories USING btree (id);


--
-- Name: ix_categories_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_categories_slug ON public.categories USING btree (slug);


--
-- Name: ix_items_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_items_id ON public.items USING btree (id);


--
-- Name: ix_items_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_items_slug ON public.items USING btree (slug);


--
-- Name: categories categories_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.categories(id);


--
-- Name: items items_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: price_histories price_histories_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.price_histories
    ADD CONSTRAINT price_histories_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- PostgreSQL database dump complete
--

