--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO ictc_admin;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO ictc_admin;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO ictc_admin;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO ictc_admin;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ictc_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ictc_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ictc_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ictc_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ictc_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ictc_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ictc_admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ictc_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ictc_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ictc_admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ictc_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ictc_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ictc_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ictc_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ictc_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ictc_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ictc_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ictc_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ictc_admin;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO ictc_admin;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO ictc_admin;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: other_pages_contact; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_contact (
    id bigint NOT NULL,
    organization_name character varying(200) NOT NULL,
    college_name character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    phone_no character varying(200) NOT NULL,
    email character varying(200) NOT NULL
);


ALTER TABLE public.other_pages_contact OWNER TO ictc_admin;

--
-- Name: other_pages_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_contact_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_contact_id_seq OWNED BY public.other_pages_contact.id;


--
-- Name: other_pages_cvupload; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_cvupload (
    id bigint NOT NULL,
    cv_pdf character varying(100) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL
);


ALTER TABLE public.other_pages_cvupload OWNER TO ictc_admin;

--
-- Name: other_pages_cvupload_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_cvupload_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_cvupload_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_cvupload_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_cvupload_id_seq OWNED BY public.other_pages_cvupload.id;


--
-- Name: other_pages_goal; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_goal (
    id bigint NOT NULL,
    goal character varying(200) NOT NULL
);


ALTER TABLE public.other_pages_goal OWNER TO ictc_admin;

--
-- Name: other_pages_goal_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_goal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_goal_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_goal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_goal_id_seq OWNED BY public.other_pages_goal.id;


--
-- Name: other_pages_homepagecarouselimage; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_homepagecarouselimage (
    id bigint NOT NULL,
    image character varying(100)
);


ALTER TABLE public.other_pages_homepagecarouselimage OWNER TO ictc_admin;

--
-- Name: other_pages_homepagecarouselimage_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_homepagecarouselimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_homepagecarouselimage_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_homepagecarouselimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_homepagecarouselimage_id_seq OWNED BY public.other_pages_homepagecarouselimage.id;


--
-- Name: other_pages_homepagemessages; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_homepagemessages (
    id bigint NOT NULL,
    deans_message text NOT NULL,
    chairmans_photo character varying(100),
    chairmans_message text NOT NULL,
    deans_photo character varying(100)
);


ALTER TABLE public.other_pages_homepagemessages OWNER TO ictc_admin;

--
-- Name: other_pages_homepagecontent_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_homepagecontent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_homepagecontent_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_homepagecontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_homepagecontent_id_seq OWNED BY public.other_pages_homepagemessages.id;


--
-- Name: other_pages_mission; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_mission (
    id bigint NOT NULL,
    mission character varying(200) NOT NULL
);


ALTER TABLE public.other_pages_mission OWNER TO ictc_admin;

--
-- Name: other_pages_vision; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_vision (
    id bigint NOT NULL,
    vision character varying(200) NOT NULL
);


ALTER TABLE public.other_pages_vision OWNER TO ictc_admin;

--
-- Name: other_pages_missions_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_missions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_missions_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_missions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_missions_id_seq OWNED BY public.other_pages_vision.id;


--
-- Name: other_pages_researchteammember; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_researchteammember (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    post character varying(200) NOT NULL,
    email character varying(200) NOT NULL,
    phone_no character varying(200) NOT NULL,
    url character varying(200) NOT NULL,
    remarks text NOT NULL,
    category character varying(200) NOT NULL,
    photo character varying(100)
);


ALTER TABLE public.other_pages_researchteammember OWNER TO ictc_admin;

--
-- Name: other_pages_researchteam_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_researchteam_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_researchteam_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_researchteam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_researchteam_id_seq OWNED BY public.other_pages_researchteammember.id;


--
-- Name: other_pages_task; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_task (
    id bigint NOT NULL,
    task character varying(200) NOT NULL
);


ALTER TABLE public.other_pages_task OWNER TO ictc_admin;

--
-- Name: other_pages_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_tasks_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_tasks_id_seq OWNED BY public.other_pages_task.id;


--
-- Name: other_pages_vacancyannouncement; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.other_pages_vacancyannouncement (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.other_pages_vacancyannouncement OWNER TO ictc_admin;

--
-- Name: other_pages_vacancyannouncement_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_vacancyannouncement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_vacancyannouncement_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_vacancyannouncement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_vacancyannouncement_id_seq OWNED BY public.other_pages_vacancyannouncement.id;


--
-- Name: other_pages_visions_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.other_pages_visions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_pages_visions_id_seq OWNER TO ictc_admin;

--
-- Name: other_pages_visions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.other_pages_visions_id_seq OWNED BY public.other_pages_mission.id;


--
-- Name: posts_collaborator; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_collaborator (
    id bigint NOT NULL,
    collaborating_user_id integer NOT NULL,
    collborating_post_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.posts_collaborator OWNER TO ictc_admin;

--
-- Name: posts_collaborator_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_collaborator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_collaborator_id_seq OWNER TO ictc_admin;

--
-- Name: posts_collaborator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_collaborator_id_seq OWNED BY public.posts_collaborator.id;


--
-- Name: posts_news; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_news (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    body text NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.posts_news OWNER TO ictc_admin;

--
-- Name: posts_news_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_news_id_seq OWNER TO ictc_admin;

--
-- Name: posts_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_news_id_seq OWNED BY public.posts_news.id;


--
-- Name: posts_post; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    body text NOT NULL,
    publisher_id integer NOT NULL,
    research_file character varying(100)
);


ALTER TABLE public.posts_post OWNER TO ictc_admin;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_post_id_seq OWNER TO ictc_admin;

--
-- Name: posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_post_id_seq OWNED BY public.posts_post.id;


--
-- Name: posts_researchdomains; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_researchdomains (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    body text NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    publisher_id integer NOT NULL
);


ALTER TABLE public.posts_researchdomains OWNER TO ictc_admin;

--
-- Name: posts_researchdomains_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_researchdomains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_researchdomains_id_seq OWNER TO ictc_admin;

--
-- Name: posts_researchdomains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_researchdomains_id_seq OWNED BY public.posts_researchdomains.id;


--
-- Name: posts_researchpublicationlist; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_researchpublicationlist (
    id bigint NOT NULL,
    name character varying(2000) NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    publisher_id integer NOT NULL,
    external_researchers character varying(400),
    link_to_project character varying(200),
    research_paper character varying(100),
    _uuid uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    published_at character varying(400) NOT NULL
);


ALTER TABLE public.posts_researchpublicationlist OWNER TO ictc_admin;

--
-- Name: posts_researchpublicationlist_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_researchpublicationlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_researchpublicationlist_id_seq OWNER TO ictc_admin;

--
-- Name: posts_researchpublicationlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_researchpublicationlist_id_seq OWNED BY public.posts_researchpublicationlist.id;


--
-- Name: posts_researchpublicationlist_researchers; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.posts_researchpublicationlist_researchers (
    id bigint NOT NULL,
    researchpublicationlist_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.posts_researchpublicationlist_researchers OWNER TO ictc_admin;

--
-- Name: posts_researchpublicationlist_researchers_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.posts_researchpublicationlist_researchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_researchpublicationlist_researchers_id_seq OWNER TO ictc_admin;

--
-- Name: posts_researchpublicationlist_researchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.posts_researchpublicationlist_researchers_id_seq OWNED BY public.posts_researchpublicationlist_researchers.id;


--
-- Name: project_management_collaborator; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.project_management_collaborator (
    id bigint NOT NULL,
    collaborating_user_id integer NOT NULL,
    collborating_project_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE public.project_management_collaborator OWNER TO ictc_admin;

--
-- Name: project_management_collaborator_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.project_management_collaborator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_management_collaborator_id_seq OWNER TO ictc_admin;

--
-- Name: project_management_collaborator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.project_management_collaborator_id_seq OWNED BY public.project_management_collaborator.id;


--
-- Name: project_management_role; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.project_management_role (
    id bigint NOT NULL,
    role_name character varying(200) NOT NULL,
    role_description character varying(200) NOT NULL
);


ALTER TABLE public.project_management_role OWNER TO ictc_admin;

--
-- Name: project_management_role_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.project_management_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_management_role_id_seq OWNER TO ictc_admin;

--
-- Name: project_management_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.project_management_role_id_seq OWNED BY public.project_management_role.id;


--
-- Name: project_management_status; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.project_management_status (
    id bigint NOT NULL,
    title character varying(2000) NOT NULL,
    introduction text NOT NULL,
    background text NOT NULL,
    scope_of_work text NOT NULL,
    objective character varying(2000) NOT NULL,
    project_duration character varying(100) NOT NULL,
    funding character varying(100) NOT NULL,
    estimated_completion_date date NOT NULL,
    other_description text NOT NULL,
    publisher_id integer NOT NULL,
    publish_date timestamp with time zone NOT NULL,
    state_of_project character varying(10) NOT NULL
);


ALTER TABLE public.project_management_status OWNER TO ictc_admin;

--
-- Name: project_management_status_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.project_management_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_management_status_id_seq OWNER TO ictc_admin;

--
-- Name: project_management_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.project_management_status_id_seq OWNED BY public.project_management_status.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO ictc_admin;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO ictc_admin;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO ictc_admin;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO ictc_admin;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO ictc_admin;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO ictc_admin;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id bigint NOT NULL,
    app_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO ictc_admin;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: ictc_admin
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO ictc_admin;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ictc_admin
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: user_userprofile; Type: TABLE; Schema: public; Owner: ictc_admin
--

CREATE TABLE public.user_userprofile (
    user_id integer NOT NULL,
    designation character varying(30),
    name character varying(30),
    bio text,
    profile_pic character varying(100) NOT NULL,
    posting_permission boolean NOT NULL,
    project_management_permission boolean NOT NULL,
    is_researcher boolean NOT NULL
);


ALTER TABLE public.user_userprofile OWNER TO ictc_admin;

--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: other_pages_contact id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_contact ALTER COLUMN id SET DEFAULT nextval('public.other_pages_contact_id_seq'::regclass);


--
-- Name: other_pages_cvupload id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_cvupload ALTER COLUMN id SET DEFAULT nextval('public.other_pages_cvupload_id_seq'::regclass);


--
-- Name: other_pages_goal id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_goal ALTER COLUMN id SET DEFAULT nextval('public.other_pages_goal_id_seq'::regclass);


--
-- Name: other_pages_homepagecarouselimage id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_homepagecarouselimage ALTER COLUMN id SET DEFAULT nextval('public.other_pages_homepagecarouselimage_id_seq'::regclass);


--
-- Name: other_pages_homepagemessages id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_homepagemessages ALTER COLUMN id SET DEFAULT nextval('public.other_pages_homepagecontent_id_seq'::regclass);


--
-- Name: other_pages_mission id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_mission ALTER COLUMN id SET DEFAULT nextval('public.other_pages_visions_id_seq'::regclass);


--
-- Name: other_pages_researchteammember id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_researchteammember ALTER COLUMN id SET DEFAULT nextval('public.other_pages_researchteam_id_seq'::regclass);


--
-- Name: other_pages_task id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_task ALTER COLUMN id SET DEFAULT nextval('public.other_pages_tasks_id_seq'::regclass);


--
-- Name: other_pages_vacancyannouncement id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_vacancyannouncement ALTER COLUMN id SET DEFAULT nextval('public.other_pages_vacancyannouncement_id_seq'::regclass);


--
-- Name: other_pages_vision id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_vision ALTER COLUMN id SET DEFAULT nextval('public.other_pages_missions_id_seq'::regclass);


--
-- Name: posts_collaborator id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_collaborator ALTER COLUMN id SET DEFAULT nextval('public.posts_collaborator_id_seq'::regclass);


--
-- Name: posts_news id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_news ALTER COLUMN id SET DEFAULT nextval('public.posts_news_id_seq'::regclass);


--
-- Name: posts_post id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_post ALTER COLUMN id SET DEFAULT nextval('public.posts_post_id_seq'::regclass);


--
-- Name: posts_researchdomains id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchdomains ALTER COLUMN id SET DEFAULT nextval('public.posts_researchdomains_id_seq'::regclass);


--
-- Name: posts_researchpublicationlist id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist ALTER COLUMN id SET DEFAULT nextval('public.posts_researchpublicationlist_id_seq'::regclass);


--
-- Name: posts_researchpublicationlist_researchers id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist_researchers ALTER COLUMN id SET DEFAULT nextval('public.posts_researchpublicationlist_researchers_id_seq'::regclass);


--
-- Name: project_management_collaborator id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_collaborator ALTER COLUMN id SET DEFAULT nextval('public.project_management_collaborator_id_seq'::regclass);


--
-- Name: project_management_role id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_role ALTER COLUMN id SET DEFAULT nextval('public.project_management_role_id_seq'::regclass);


--
-- Name: project_management_status id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_status ALTER COLUMN id SET DEFAULT nextval('public.project_management_status_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	aavashchhetri01@gmail.com	t	t	2
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add site	1	add_site
2	Can change site	1	change_site
3	Can delete site	1	delete_site
4	Can view site	1	view_site
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add email address	8	add_emailaddress
30	Can change email address	8	change_emailaddress
31	Can delete email address	8	delete_emailaddress
32	Can view email address	8	view_emailaddress
33	Can add email confirmation	9	add_emailconfirmation
34	Can change email confirmation	9	change_emailconfirmation
35	Can delete email confirmation	9	delete_emailconfirmation
36	Can view email confirmation	9	view_emailconfirmation
37	Can add social account	10	add_socialaccount
38	Can change social account	10	change_socialaccount
39	Can delete social account	10	delete_socialaccount
40	Can view social account	10	view_socialaccount
41	Can add social application	11	add_socialapp
42	Can change social application	11	change_socialapp
43	Can delete social application	11	delete_socialapp
44	Can view social application	11	view_socialapp
45	Can add social application token	12	add_socialtoken
46	Can change social application token	12	change_socialtoken
47	Can delete social application token	12	delete_socialtoken
48	Can view social application token	12	view_socialtoken
49	Can add post	13	add_post
50	Can change post	13	change_post
51	Can delete post	13	delete_post
52	Can view post	13	view_post
53	Can add research domains	14	add_researchdomains
54	Can change research domains	14	change_researchdomains
55	Can delete research domains	14	delete_researchdomains
56	Can view research domains	14	view_researchdomains
57	Can add Research Publications	15	add_researchpublicationlist
58	Can change Research Publications	15	change_researchpublicationlist
59	Can delete Research Publications	15	delete_researchpublicationlist
60	Can view Research Publications	15	view_researchpublicationlist
61	Can add news	16	add_news
62	Can change news	16	change_news
63	Can delete news	16	delete_news
64	Can view news	16	view_news
65	Can add collaborator	17	add_collaborator
66	Can change collaborator	17	change_collaborator
67	Can delete collaborator	17	delete_collaborator
68	Can view collaborator	17	view_collaborator
69	Can add user profile	18	add_userprofile
70	Can change user profile	18	change_userprofile
71	Can delete user profile	18	delete_userprofile
72	Can view user profile	18	view_userprofile
73	Can add goal	19	add_goal
74	Can change goal	19	change_goal
75	Can delete goal	19	delete_goal
76	Can view goal	19	view_goal
77	Can add mission	20	add_mission
78	Can change mission	20	change_mission
79	Can delete mission	20	delete_mission
80	Can view mission	20	view_mission
81	Can add task	21	add_task
82	Can change task	21	change_task
83	Can delete task	21	delete_task
84	Can view task	21	view_task
85	Can add vision	22	add_vision
86	Can change vision	22	change_vision
87	Can delete vision	22	delete_vision
88	Can view vision	22	view_vision
89	Can add contact	23	add_contact
90	Can change contact	23	change_contact
91	Can delete contact	23	delete_contact
92	Can view contact	23	view_contact
93	Can add research team member	24	add_researchteammember
94	Can change research team member	24	change_researchteammember
95	Can delete research team member	24	delete_researchteammember
96	Can view research team member	24	view_researchteammember
97	Can add home page carousel image	25	add_homepagecarouselimage
98	Can change home page carousel image	25	change_homepagecarouselimage
99	Can delete home page carousel image	25	delete_homepagecarouselimage
100	Can view home page carousel image	25	view_homepagecarouselimage
101	Can add home page messages	26	add_homepagemessages
102	Can change home page messages	26	change_homepagemessages
103	Can delete home page messages	26	delete_homepagemessages
104	Can view home page messages	26	view_homepagemessages
105	Can add cv upload	27	add_cvupload
106	Can change cv upload	27	change_cvupload
107	Can delete cv upload	27	delete_cvupload
108	Can view cv upload	27	view_cvupload
109	Can add vacancy announcement	28	add_vacancyannouncement
110	Can change vacancy announcement	28	change_vacancyannouncement
111	Can delete vacancy announcement	28	delete_vacancyannouncement
112	Can view vacancy announcement	28	view_vacancyannouncement
113	Can add status	29	add_status
114	Can change status	29	change_status
115	Can delete status	29	delete_status
116	Can view status	29	view_status
117	Can add role	30	add_role
118	Can change role	30	change_role
119	Can delete role	30	delete_role
120	Can view role	30	view_role
121	Can add collaborator	31	add_collaborator
122	Can change collaborator	31	change_collaborator
123	Can delete collaborator	31	delete_collaborator
124	Can view collaborator	31	view_collaborator
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$glXwgUxseaZ8UGpthKWfNB$R4ZiQ79CRFzsztWkM2B9W+k0A1ld0H31gQXzsc3xsu8=	2023-07-17 06:30:47.608523+00	t	ictc			ictc@ictc.com	t	t	2023-07-17 06:30:25.821095+00
2	pbkdf2_sha256$260000$IAxvn8vpdg7d029RgEAsLP$jjzh5O6MOz4tH6d3nfCIEB0AbKh8IlylmhHuswiPvI0=	2023-07-17 06:52:10.968802+00	f	Aavash			aavashchhetri01@gmail.com	f	t	2023-07-17 06:51:37.831563+00
11	pbkdf2_sha256$260000$iWWdquHokU7cofWtJsb9ox$7FETeemNfTeitcIhIGXiLetqAyEZoIw/56ckInjwT+k=	\N	f	DSB	Daya Sagar	Baral		f	t	2023-07-17 07:01:30+00
14	pbkdf2_sha256$260000$jHqG0AadMTBrnSl9S4odyy$expE2ezMXprOXaj/9KDmj2JcaRBxA+QCWuCwX29ZWPA=	\N	f	RP	Rili	Pradhan		f	t	2023-07-17 07:03:10+00
3	pbkdf2_sha256$260000$WHLNMsl9vDnzAmlAma4nFK$0YSp8yIjNNTLfXvmqRETBKZgh5aj7F0O2ZCFpm4UAdY=	\N	f	AKT	Dr. Arun	K. Timalsina		f	t	2023-07-17 06:54:06+00
4	pbkdf2_sha256$260000$EpUhfpjl6Jm8GgeUKRgq5C$7xXOQg4TWGkTSzhg5lBM5YeUIyF17+QoLdZpB33VHwo=	\N	f	AS	Dr. Aman	Shakya		f	t	2023-07-17 06:55:28+00
5	pbkdf2_sha256$260000$jKz7xbNwsIBPOH2ht87LuP$CcaF90QRLcSJFqaKhr9FndNtJIqSaBsZbzY8UsBboQc=	\N	f	BJ	Dr. Basanta	Joshi		f	t	2023-07-17 06:57:17+00
6	pbkdf2_sha256$260000$cVcWiA4pC4Jg27OR3jXUCn$QVwsKdA7/rVxXSWnW6RV4i4B+5VuvEfc0Gj1qKt5Jec=	\N	f	BRD	Babu	R. Dawadi		f	t	2023-07-17 06:58:51+00
7	pbkdf2_sha256$260000$SeAc53nWT4hdu5iWyz3pRy$5jZERHW8R62QAks9zVTQ/ssKDYV4nUkxvVp/rzAQrY8=	\N	f	SRJ	Dr. Shashidhar	R. Joshi		f	t	2023-07-17 06:59:26+00
8	pbkdf2_sha256$260000$hCbKbwxHVxOlUip2UiTihJ$1GTvRoPu6BfYTjWbjGCDhkBmE5wITHbvVNxX1jWJOmY=	\N	f	DBR	Dr. Danda	B. Rawat		f	t	2023-07-17 06:59:53+00
9	pbkdf2_sha256$260000$EKstzR7srN9tW1OtK65wPP$bezfp0S2lNz3NiDtGg+DXI32NK/MVco6fNhA0goSkrM=	\N	f	MK	Dr. Manoj	Karkee		f	t	2023-07-17 07:00:16+00
10	pbkdf2_sha256$260000$Z01853pDndoXcKzYgDiNxY$NgQ0cSFqKrRWVyfssrlO489sIg1ikt7HtzKviEeVf7c=	\N	f	RKK	Dr. Rajeev	K Kantha		f	t	2023-07-17 07:00:55+00
12	pbkdf2_sha256$260000$e5JFpBtOzWCsATzQHKKvaj$lsB3BKE6aPQ/4FukrXQr7tXxJxbaPMKCjdXvVs0Svwg=	\N	f	DKS	Dinesh	Kr. Sharma		f	t	2023-07-17 07:01:49+00
13	pbkdf2_sha256$260000$XkigJ6lf9p8cZ2SfM4ocDl$EoYX/nhDEpFlZxUt5d/5fG/W8kScUu1QvJlaBpghgqg=	\N	f	SPP	Dr. Sanjeeb	Prasad Panday		f	t	2023-07-17 07:02:30+00
16	pbkdf2_sha256$260000$X0ev4EWIJh5dMdhA5IRW2f$fXpD+ZYdmpLSiZaVCuE/u33VY3pgpyHTfVO0Xkv0Hjg=	\N	f	BS	Bibek	Siwakoti		f	t	2023-07-17 07:05:16+00
15	pbkdf2_sha256$260000$hNpyKG18vg1MGVSuzVc1gH$MvZusfysN1v7DzWQiMVwyJH22fhXJY1GMLXe6V+Z2yY=	\N	f	RKM	Dr. Ram	Krishna Maharjan		f	t	2023-07-17 07:03:35+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-07-17 06:39:02.845391+00	1	HomePageCarouselImage object (1)	1	[{"added": {}}]	25	1
2	2023-07-17 06:39:14.782384+00	2	HomePageCarouselImage object (2)	1	[{"added": {}}]	25	1
3	2023-07-17 06:39:22.764205+00	3	HomePageCarouselImage object (3)	1	[{"added": {}}]	25	1
4	2023-07-17 06:40:06.4874+00	1	HomePageMessages object (1)	1	[{"added": {}}]	26	1
5	2023-07-17 06:51:02.779266+00	1	http://52.249.179.50/	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	1	1
6	2023-07-17 06:54:06.991508+00	3	AKT	1	[{"added": {}}]	5	1
7	2023-07-17 06:54:27.28669+00	3	AKT	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
8	2023-07-17 06:54:47.376614+00	3	UserProfile object (3)	2	[{"changed": {"fields": ["Posting permission", "Is researcher"]}}]	18	1
9	2023-07-17 06:55:28.365607+00	4	AS	1	[{"added": {}}]	5	1
10	2023-07-17 06:57:03.653053+00	4	AS	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
11	2023-07-17 06:57:17.653089+00	5	BJ	1	[{"added": {}}]	5	1
12	2023-07-17 06:57:49.149602+00	5	BJ	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
13	2023-07-17 06:58:51.36506+00	6	BRD	1	[{"added": {}}]	5	1
14	2023-07-17 06:59:05.67826+00	6	BRD	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
15	2023-07-17 06:59:26.412992+00	7	SRJ	1	[{"added": {}}]	5	1
16	2023-07-17 06:59:40.057139+00	7	SRJ	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
17	2023-07-17 06:59:53.524277+00	8	DBR	1	[{"added": {}}]	5	1
18	2023-07-17 07:00:08.045102+00	8	DBR	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
19	2023-07-17 07:00:16.744746+00	9	MK	1	[{"added": {}}]	5	1
20	2023-07-17 07:00:37.393507+00	9	MK	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
21	2023-07-17 07:00:55.240924+00	10	RKK	1	[{"added": {}}]	5	1
22	2023-07-17 07:01:04.891967+00	10	RKK	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
23	2023-07-17 07:01:30.595703+00	11	DSB	1	[{"added": {}}]	5	1
24	2023-07-17 07:01:40.032955+00	11	DSB	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
25	2023-07-17 07:01:49.859625+00	12	DKS	1	[{"added": {}}]	5	1
26	2023-07-17 07:02:12.868242+00	12	DKS	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
27	2023-07-17 07:02:30.386614+00	13	SPP	1	[{"added": {}}]	5	1
28	2023-07-17 07:02:46.281242+00	13	SPP	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
29	2023-07-17 07:03:10.280483+00	14	RP	1	[{"added": {}}]	5	1
30	2023-07-17 07:03:23.4116+00	14	RP	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
31	2023-07-17 07:03:35.508174+00	15	RKM	1	[{"added": {}}]	5	1
32	2023-07-17 07:03:46.682691+00	15	RKM	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
33	2023-07-17 07:05:16.837682+00	16	BS	1	[{"added": {}}]	5	1
34	2023-07-17 07:05:29.937678+00	16	BS	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
35	2023-07-17 07:06:16.371448+00	3	AKT	2	[{"changed": {"fields": ["First name"]}}]	5	1
36	2023-07-17 07:06:55.190757+00	3	UserProfile object (3)	2	[{"changed": {"fields": ["Designation", "Project management permission"]}}]	18	1
37	2023-07-17 07:07:09.030141+00	4	AS	2	[{"changed": {"fields": ["First name"]}}]	5	1
38	2023-07-17 07:07:28.199733+00	4	UserProfile object (4)	2	[{"changed": {"fields": ["Designation", "Posting permission", "Project management permission", "Is researcher"]}}]	18	1
39	2023-07-17 07:07:41.421902+00	5	BJ	2	[{"changed": {"fields": ["First name"]}}]	5	1
40	2023-07-17 07:07:57.45164+00	5	UserProfile object (5)	2	[{"changed": {"fields": ["Designation", "Posting permission", "Is researcher"]}}]	18	1
41	2023-07-17 07:08:07.351385+00	6	BRD	2	[{"changed": {"fields": ["First name"]}}]	5	1
42	2023-07-17 07:08:21.589744+00	6	UserProfile object (6)	2	[{"changed": {"fields": ["Designation", "Posting permission", "Project management permission", "Is researcher"]}}]	18	1
43	2023-07-17 07:08:40.755221+00	7	SRJ	2	[{"changed": {"fields": ["First name"]}}]	5	1
44	2023-07-17 07:08:48.971497+00	7	UserProfile object (7)	2	[{"changed": {"fields": ["Designation", "Posting permission", "Project management permission", "Is researcher"]}}]	18	1
45	2023-07-17 07:09:16.856381+00	8	DBR	2	[{"changed": {"fields": ["First name", "Last name"]}}]	5	1
46	2023-07-17 07:09:23.114755+00	8	UserProfile object (8)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
47	2023-07-17 07:09:37.341255+00	9	MK	2	[{"changed": {"fields": ["First name"]}}]	5	1
48	2023-07-17 07:09:46.495336+00	9	UserProfile object (9)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
49	2023-07-17 07:10:01.35356+00	10	RKK	2	[{"changed": {"fields": ["First name"]}}]	5	1
50	2023-07-17 07:10:08.756431+00	10	UserProfile object (10)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
51	2023-07-17 07:10:17.487309+00	11	UserProfile object (11)	2	[{"changed": {"fields": ["Is researcher"]}}]	18	1
52	2023-07-17 07:10:36.531778+00	12	DKS	2	[{"changed": {"fields": ["First name"]}}]	5	1
53	2023-07-17 07:10:41.530881+00	12	UserProfile object (12)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
54	2023-07-17 07:10:59.199548+00	13	SPP	2	[{"changed": {"fields": ["First name"]}}]	5	1
55	2023-07-17 07:11:05.942171+00	13	UserProfile object (13)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
56	2023-07-17 07:11:29.033292+00	14	UserProfile object (14)	2	[{"changed": {"fields": ["Is researcher"]}}]	18	1
57	2023-07-17 07:12:00.172362+00	16	BS	2	[{"changed": {"fields": ["First name"]}}]	5	1
58	2023-07-17 07:12:05.808642+00	16	UserProfile object (16)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
59	2023-07-17 07:12:23.923334+00	15	RKM	2	[{"changed": {"fields": ["First name"]}}]	5	1
60	2023-07-17 07:12:29.443114+00	15	UserProfile object (15)	2	[{"changed": {"fields": ["Designation", "Is researcher"]}}]	18	1
61	2023-07-17 07:14:20.426439+00	1	Scholar	1	[{"added": {}}]	30	1
62	2023-07-17 07:14:35.934911+00	2	Manager	1	[{"added": {}}]	30	1
63	2023-07-17 07:14:45.814797+00	3	Project Operation	1	[{"added": {}}]	30	1
64	2023-07-17 07:14:57.426929+00	4	Foreign Expert(s)	1	[{"added": {}}]	30	1
65	2023-07-17 07:15:07.779321+00	5	Research Advisor(s)	1	[{"added": {}}]	30	1
66	2023-07-17 07:15:17.570898+00	6	Expert Team Member(s)	1	[{"added": {}}]	30	1
67	2023-07-17 07:15:29.107509+00	7	Co Investigator	1	[{"added": {}}]	30	1
68	2023-07-17 07:15:44.467993+00	8	Principle Investigator	1	[{"added": {}}]	30	1
69	2023-07-17 07:15:55.011307+00	9	PhD Research Scholar(s)	1	[{"added": {}}]	30	1
70	2023-07-17 07:16:03.582469+00	10	Advisor(s)	1	[{"added": {}}]	30	1
71	2023-07-17 07:16:11.745137+00	11	Project Coordinator at IOE side	1	[{"added": {}}]	30	1
72	2023-07-17 07:17:00.11293+00	1	Artificial Intelligence, Image Processing, and Computer Vision (AIPCV)	1	[{"added": {}}]	14	1
73	2023-07-17 07:17:21.730871+00	2	Networks, Cyber Security, and Digital Forensic (NCSDF)	1	[{"added": {}}]	14	1
74	2023-07-17 07:17:37.810169+00	3	Semantic Web, Linked Open Data, Social Web applications and Natural language P rocessing (SLSNP)	1	[{"added": {}}]	14	1
75	2023-07-17 07:18:41.259371+00	4	Digital Health, Big Data and Analytics (DHBDA)	1	[{"added": {}}]	14	1
76	2023-07-17 07:27:45.98322+00	5	5) Int'l Standard Web Portal Development Initiation in Tribhuvan University	1	[{"added": {}}]	29	1
77	2023-07-17 07:28:59.683009+00	6	6) Transformation to Future Networking with Broadband Implementation: Status of Nepal and the Steps Ahead (TraFNet)	1	[{"added": {}}]	29	1
78	2023-07-17 07:29:53.501714+00	7	7) Development of Smart Irrigation System for:Optimization of Water use and Increasing Crop Yield (SISO-WAY)	1	[{"added": {}}]	29	1
79	2023-07-17 07:30:47.960453+00	8	8) Int'l Standard Web Portal Development Initiation in Tribhuvan University	1	[{"added": {}}]	29	1
80	2023-07-17 07:37:23.536474+00	1	Evolutionary Dynamics of Service Provider Legacy Network Migration to Software Defined IPv6 Network	3		15	1
81	2023-07-17 07:41:24.89155+00	2	Evolutionary Dynamics of Service Provider Legacy Network Migration to Software Defined IPv6 Network	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
82	2023-07-17 07:45:45.908517+00	2	Evolutionary Dynamics of Service Provider Legacy Network Migration to Software Defined IPv6 Network	2	[{"changed": {"fields": ["External researchers"]}}]	15	1
83	2023-07-17 07:58:26.32365+00	3	Affordable Broadband with Software Defined IPv6 Network for Rural Communities	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
84	2023-07-17 07:58:57.960492+00	2	Evolutionary Dynamics of Service Provider Legacy Network Migration to Software Defined IPv6 Network	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
85	2023-07-17 08:01:31.819593+00	4	Recommendations for Energy Efficient SoDIP6 Network Deployment at the Early Stage Rural ICT Expansion of Nepal	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
86	2023-07-17 08:04:02.303728+00	5	Joint Cost Estimation Approach for Service Provider Legacy Network Migration to Unified Software Defined IPv6 Network	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
87	2023-07-17 08:07:08.345335+00	6	Packet Loss Recovery and Control for VoIP	2	[{"changed": {"fields": ["Researchers"]}}]	15	1
88	2023-07-17 08:11:54.667121+00	7	Towards Automation in the Admission Process as a Tool to Enhance Quality of Engineering Education	2	[{"changed": {"fields": ["Research paper", "Link to project", "Researchers"]}}]	15	1
89	2023-07-17 08:12:17.997596+00	7	Towards Automation in the Admission Process as a Tool to Enhance Quality of Engineering Education	2	[{"changed": {"fields": ["Research paper"]}}]	15	1
90	2023-07-17 08:14:08.835685+00	8	Restructuring Examination System of IOE for Establishing Center of Excellency in Engineering Education	2	[{"changed": {"fields": ["Researchers", "External researchers"]}}]	15	1
91	2023-07-17 08:17:28.77231+00	12	Research Team Member(s)	1	[{"added": {}}]	30	1
92	2023-07-17 08:17:57.985272+00	13	Research Management Team	1	[{"added": {}}]	30	1
93	2023-07-17 08:29:26.03821+00	4	TEXT SIMILARITY IDENTIFICATION WITH THE REFERENCE DATABASE	3		13	1
94	2023-07-17 08:31:47.581539+00	5	Handwritten Maths Expression Recogniser	1	[{"added": {}}]	13	1
95	2023-07-17 08:31:55.077847+00	5	Handwritten Maths Expression Recogniser	2	[{"changed": {"fields": ["Research file"]}}]	13	1
96	2023-07-17 08:32:21.671639+00	6	TEXT SIMILARITY IDENTIFICATION WITH THE REFERENCE DATABASE	1	[{"added": {}}]	13	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	sites	site
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	account	emailaddress
9	account	emailconfirmation
10	socialaccount	socialaccount
11	socialaccount	socialapp
12	socialaccount	socialtoken
13	posts	post
14	posts	researchdomains
15	posts	researchpublicationlist
16	posts	news
17	posts	collaborator
18	user	userprofile
19	other_pages	goal
20	other_pages	mission
21	other_pages	task
22	other_pages	vision
23	other_pages	contact
24	other_pages	researchteammember
25	other_pages	homepagecarouselimage
26	other_pages	homepagemessages
27	other_pages	cvupload
28	other_pages	vacancyannouncement
29	project_management	status
30	project_management	role
31	project_management	collaborator
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-07-17 06:29:41.677405+00
2	auth	0001_initial	2023-07-17 06:29:41.835598+00
3	account	0001_initial	2023-07-17 06:29:41.905785+00
4	account	0002_email_max_length	2023-07-17 06:29:41.918142+00
5	account	0003_auto_20230717_0622	2023-07-17 06:29:42.021433+00
6	admin	0001_initial	2023-07-17 06:29:42.071401+00
7	admin	0002_logentry_remove_auto_add	2023-07-17 06:29:42.08491+00
8	admin	0003_logentry_add_action_flag_choices	2023-07-17 06:29:42.095209+00
9	contenttypes	0002_remove_content_type_name	2023-07-17 06:29:42.116171+00
10	auth	0002_alter_permission_name_max_length	2023-07-17 06:29:42.127326+00
11	auth	0003_alter_user_email_max_length	2023-07-17 06:29:42.138512+00
12	auth	0004_alter_user_username_opts	2023-07-17 06:29:42.149649+00
13	auth	0005_alter_user_last_login_null	2023-07-17 06:29:42.161652+00
14	auth	0006_require_contenttypes_0002	2023-07-17 06:29:42.166675+00
15	auth	0007_alter_validators_add_error_messages	2023-07-17 06:29:42.180253+00
16	auth	0008_alter_user_username_max_length	2023-07-17 06:29:42.19878+00
17	auth	0009_alter_user_last_name_max_length	2023-07-17 06:29:42.211964+00
18	auth	0010_alter_group_name_max_length	2023-07-17 06:29:42.224628+00
19	auth	0011_update_proxy_permissions	2023-07-17 06:29:42.236096+00
20	auth	0012_alter_user_first_name_max_length	2023-07-17 06:29:42.246885+00
21	other_pages	0001_initial	2023-07-17 06:29:42.281924+00
22	other_pages	0002_auto_20210615_1213	2023-07-17 06:29:42.333683+00
23	other_pages	0003_contact	2023-07-17 06:29:42.353845+00
24	other_pages	0004_auto_20210615_1644	2023-07-17 06:29:42.378135+00
25	other_pages	0005_researchteam_photo	2023-07-17 06:29:42.384523+00
26	other_pages	0006_rename_researchteam_researchteammember	2023-07-17 06:29:42.402343+00
27	other_pages	0007_homepagecarouselimage_homepagecontent	2023-07-17 06:29:42.439172+00
28	other_pages	0008_auto_20210615_1855	2023-07-17 06:29:42.452814+00
29	other_pages	0009_remove_homepagecontent_carousel_images	2023-07-17 06:29:42.459508+00
30	other_pages	0010_auto_20210615_1859	2023-07-17 06:29:42.469827+00
31	other_pages	0011_alter_homepagecarouselimage_home_content	2023-07-17 06:29:42.476111+00
32	other_pages	0012_auto_20210616_1620	2023-07-17 06:29:42.513777+00
33	other_pages	0013_rename_deans_photo_homepagecarouselimage_image	2023-07-17 06:29:42.5201+00
34	other_pages	0014_cvupload	2023-07-17 06:29:42.530288+00
35	other_pages	0015_vacancyannouncement	2023-07-17 06:29:42.547736+00
36	project_management	0001_initial	2023-07-17 06:29:42.578782+00
37	project_management	0002_status_publish_date	2023-07-17 06:29:42.591055+00
38	project_management	0003_alter_status_publisher	2023-07-17 06:29:42.604815+00
39	project_management	0004_alter_status_estimated_completion_date	2023-07-17 06:29:42.629179+00
40	project_management	0005_status_state_of_project	2023-07-17 06:29:42.642286+00
41	project_management	0006_auto_20220206_2212	2023-07-17 06:29:42.679905+00
42	project_management	0007_auto_20220207_0139	2023-07-17 06:29:42.758696+00
43	project_management	0008_remove_role_project	2023-07-17 06:29:42.778+00
44	project_management	0009_role_project	2023-07-17 06:29:42.834013+00
45	project_management	0010_auto_20220316_2230	2023-07-17 06:29:42.86856+00
46	project_management	0011_auto_20220316_2230	2023-07-17 06:29:42.923416+00
47	project_management	0012_auto_20220316_2235	2023-07-17 06:29:42.960272+00
48	project_management	0013_auto_20220317_0022	2023-07-17 06:29:43.012849+00
49	project_management	0014_auto_20220318_1037	2023-07-17 06:29:43.026291+00
50	project_management	0015_alter_status_estimated_completion_date	2023-07-17 06:29:43.064459+00
51	project_management	0016_collaborator	2023-07-17 06:29:43.111791+00
52	project_management	0017_auto_20230710_1701	2023-07-17 06:29:43.134477+00
53	project_management	0018_delete_person	2023-07-17 06:29:43.141644+00
54	project_management	0019_alter_collaborator_collborating_project	2023-07-17 06:29:43.156159+00
55	posts	0001_initial	2023-07-17 06:29:43.237302+00
56	posts	0002_alter_post_image	2023-07-17 06:29:43.253863+00
57	posts	0003_answer	2023-07-17 06:29:43.349613+00
58	posts	0004_answer_parent	2023-07-17 06:29:43.379581+00
59	posts	0005_auto_20210616_1620	2023-07-17 06:29:43.431577+00
60	posts	0006_researchdomains	2023-07-17 06:29:43.474346+00
61	posts	0007_researchpublicationlist	2023-07-17 06:29:43.507525+00
62	posts	0008_alter_researchpublicationlist_name	2023-07-17 06:29:43.526374+00
63	posts	0009_news	2023-07-17 06:29:43.56941+00
64	posts	0010_researchpublication	2023-07-17 06:29:43.635738+00
65	posts	0011_auto_20230710_1639	2023-07-17 06:29:43.73423+00
66	posts	0012_alter_researchpublicationlist_research_paper	2023-07-17 06:29:43.751165+00
67	posts	0013_researchpublicationlist__uuid	2023-07-17 06:29:43.76767+00
68	posts	0014_alter_researchpublicationlist__uuid	2023-07-17 06:29:43.792649+00
69	posts	0015_alter_researchpublicationlist__uuid	2023-07-17 06:29:43.808066+00
70	posts	0016_auto_20230715_1241	2023-07-17 06:29:43.836175+00
71	posts	0017_collaborator	2023-07-17 06:29:43.880533+00
72	posts	0018_post_research_file	2023-07-17 06:29:43.896906+00
73	posts	0019_alter_post_research_file	2023-07-17 06:29:43.912777+00
74	sessions	0001_initial	2023-07-17 06:29:43.939806+00
75	sites	0001_initial	2023-07-17 06:29:43.951466+00
76	sites	0002_alter_domain_unique	2023-07-17 06:29:43.966758+00
77	socialaccount	0001_initial	2023-07-17 06:29:44.156791+00
78	socialaccount	0002_token_max_lengths	2023-07-17 06:29:44.192358+00
79	socialaccount	0003_extra_data_default_dict	2023-07-17 06:29:44.21042+00
80	socialaccount	0004_auto_20230717_0622	2023-07-17 06:29:44.41019+00
81	user	0001_initial	2023-07-17 06:29:44.482444+00
82	user	0002_rename_username_userprofile_designation	2023-07-17 06:29:44.502565+00
83	user	0003_rename_pofile_pic_userprofile_profile_pic	2023-07-17 06:29:44.536411+00
84	user	0004_remove_userprofile_followers	2023-07-17 06:29:44.561877+00
85	user	0005_userprofile_posting_permission	2023-07-17 06:29:44.58105+00
86	user	0006_userprofile_project_management_permission	2023-07-17 06:29:44.599629+00
87	user	0007_userprofile_is_researcher	2023-07-17 06:29:44.620209+00
88	user	0008_alter_userprofile_is_researcher	2023-07-17 06:29:44.638531+00
89	user	0009_alter_userprofile_is_researcher	2023-07-17 06:29:44.656508+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0jpx543fp226d7wwca81204fe2wxysc9	.eJxVjEEOwiAQRe_C2hBKCwwu3XuGZpgZpGpoUtqV8e7apAvd_vfef6kRt7WMW5NlnFidVadOv1tCekjdAd-x3mZNc12XKeld0Qdt-jqzPC-H-3dQsJVvbQHAdcEy-pwGMkZS730UIxY6G8kACSNZHHzwMQzgDOc-IydxAuTU-wPVJjgO:1qLHkt:3nAI9L8D10YJCpv9GrTR7GeFGtMy36YOTN7GdbCzD64	2023-07-31 06:30:47.616589+00
kwut0ln6uky3whxidxuifh9fny9n2mts	.eJxljEEOgjAQRe_SNSFQJwNl6d4zNGU6lSq2pgWjMd5dJMTEuH3v__cUhijOYdI3Tt55tpovxo-iC_M4Fl87Z06iE1IUQpt5Glagvf1nvaEzh4-wJxOOsaQYpuT78jMpN5vLQ7Q87rftT2AweVjerXIknZPKAdKuV-CYLVQsbYOoGmCSBoEA-xZrIIS6XVhTN4oRwa7RzDn7GDTfrz49RFfLSmFVvd56JVH-:1qLI5a:COELWkCAnC9REt2p8sTTuPM_bt1l_ddpc1VtPkS9BMY	2023-07-31 06:52:10.981906+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.django_site (id, domain, name) FROM stdin;
1	http://52.249.179.50/	http://lict.ioe.edu.np/
\.


--
-- Data for Name: other_pages_contact; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_contact (id, organization_name, college_name, address, phone_no, email) FROM stdin;
\.


--
-- Data for Name: other_pages_cvupload; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_cvupload (id, cv_pdf, uploaded_at) FROM stdin;
\.


--
-- Data for Name: other_pages_goal; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_goal (id, goal) FROM stdin;
\.


--
-- Data for Name: other_pages_homepagecarouselimage; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_homepagecarouselimage (id, image) FROM stdin;
1	home-pg-photos/image-slider-1.jpg
2	home-pg-photos/image-slider-2.jpg
3	home-pg-photos/image-slider-3.jpg
\.


--
-- Data for Name: other_pages_homepagemessages; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_homepagemessages (id, deans_message, chairmans_photo, chairmans_message, deans_photo) FROM stdin;
1	This is my great pleasure to establish the research lab viz. Laboratory for ICT Research and Development (LICT) in our institute. The socio-economic development of the country starts with the level of Excellency in its education system. Institute of Engineering at Tribhuvan University is the one prominent institute which was established in 1984 with the initial motto to produce highly skilled technical human resources for the nation. Now the institute’s objective is added to develop the nation through research and innovation and establish as top ranked university via research, innovation and development. IOE is providing engineering education on several streams via bachelor, masters and Ph.D. program. IOE products are worldwide recognized and working in the top national and international institutions. I am convinced that the establishment of this research and innovation LAB (#LICT) will make our institute more prestigious for the nation and the world.	home-pg-photos/lictCo.jpg	This is my great pleasure to establish the ICT research and development laboratory at our institute. The socio-economic development of the country starts with the level of excellency in its education system. Institute of Engineering at Tribhuvan University is the one prominent institute providing engineering education on several streams since 1972. Among the several research center we have, now we are able to add another research center dedictated in Information and Communication Technology (ICT)	home-pg-photos/deanIOE.jpg
\.


--
-- Data for Name: other_pages_mission; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_mission (id, mission) FROM stdin;
\.


--
-- Data for Name: other_pages_researchteammember; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_researchteammember (id, name, post, email, phone_no, url, remarks, category, photo) FROM stdin;
\.


--
-- Data for Name: other_pages_task; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_task (id, task) FROM stdin;
\.


--
-- Data for Name: other_pages_vacancyannouncement; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_vacancyannouncement (id, title, description) FROM stdin;
\.


--
-- Data for Name: other_pages_vision; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.other_pages_vision (id, vision) FROM stdin;
\.


--
-- Data for Name: posts_collaborator; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_collaborator (id, collaborating_user_id, collborating_post_id, role_id) FROM stdin;
1	13	1	8
2	13	1	13
3	4	1	13
4	6	1	13
5	5	1	13
6	7	1	10
7	15	1	10
8	7	2	10
9	1	3	2
\.


--
-- Data for Name: posts_news; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_news (id, title, body, publish_date, publisher_id) FROM stdin;
\.


--
-- Data for Name: posts_post; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_post (id, title, publish_date, body, publisher_id, research_file) FROM stdin;
6	TEXT SIMILARITY IDENTIFICATION WITH THE REFERENCE DATABASE	2023-07-17 08:32:12+00	TEXT SIMILARITY IDENTIFICATION WITH THE REFERENCE DATABASE	1	uploads/research_post/LICT_Report_2_compressed.pdf
1	Assess and examine the interference due to frequency allocation for new technologies such as 5G and Short-Range Devices” - 5GSRD	2023-07-17 08:15:57.224939+00	##MoU signed between NTA and IOE\r\nDean of IOE, Prof. Dr. Shashidhar R Joshi in presence with Asst. Prof. Babu R Dawadi, LICT Co-Chairman and Asst. Prof. Dr. Basant Joshi, LICT Member, has signed a Memorandum of Understanding (MoU) with Nepal Telecommunications Aughority (NTA) to carryout research on “interference effects while allocating frequencies on recent technologies like 5G and Short Range Derices (SRDs)”. The MoU was signed on Jan. 25, 2021 at NTA premises. Chairman of NTA Mr. Purushottam Khanal has highlighted the possible collaborations in the future with the continuation of this resaerch so that the country will be benefitted with such industry-academia collaboration. “NTA can suffport to researchers who engaged in the filed of ICT at the university research that contributes to the Nepal’s ICT sector”, said by Chairman Mr. Khanal.  Similarly, Director of Technology Research Section Mr. Ambar Sthapit and Deputy Director Dr. Pradip Poudyal have shown their commitment to see the possible resaerch collaborations with IOE in the long run to boostup Nepal’s ICT sector. \r\n\r\n##Scope of Work\r\nFollowing are the main scope of works which are defined to fulfill the objective of this research.\r\n\r\nStudy all the relevant plans/policies of Nepal government and NTA regarding national frequency plan. \r\n\r\nStudy the current spectrum distribution plan of Nepal focusing on 3G/4G/5G.\r\n\r\nStudy SRD devices and their frequency usage in the global scenarios. Then find the list of approved SRD devices by NTA with their frequency allocation if any.\r\n\r\nReview the literature on the world-wide 5G spectrum distribution scenarios and their interferences (basically of India and Region-3 countries).\r\n\r\nPerform virtual or field experimental analysis including NTA approved SRDs to assess the possible interferences in the context of Nepal.\r\n\r\nPropose suitable solution e.g. frequency band for 5G network mobile communication that might have least interference  with other bands and the SRDs.\r\n\r\n \r\n\r\n##Objective(s)\r\nThe major objective(s) of this research shall be as follows:\r\n\r\n- To study spectrum band allocation at different networks of Nepal.\r\n\r\n- To study the impact of 5G spectrum band interference with other bands with respect to use of short range devices (SRDs).\r\n\r\n- To recommend the solutions to avoid spectrum interference in the context of 5G implementations.\r\n\r\n**Reserach Duration: 9 Months **(February - October 2021)	1	
2	CASI - Centralized Admission System of IOE >> काजी	2023-07-17 08:21:09.401478+00	Continuous improvement in the academic environment and achieving excellence in producing quality engineers is the main motto of IOE. After automating the BE & M.Sc. entrance system, IOE is proceeding towards the automation of admission process for all of its campuses/colleges where the research study carried out in 2016 thoroughly investigated the existing system and recommend reform in admission process of IOE. We, the member of that research team reviewed the study documents and propose the suitable administrative and technical framework for the automation of IOE admission system. CASI is a research based projects implemented for the uniformity in admission process at all constituent campuses and the affialiated colleges of Institute of Engineering towards excellency by enrolling meritorious best students every year at its engineering education.\r\nThe enrollment software systems developed is running from [http://admission.ioe.edu.np](http://admission.ioe.edu.np) and is contineous progress in optimum implementation	1	
3	Real Time Intranet Based Entrance ExamiNAtion System (RETINAS) रेटिनाज	2023-07-17 08:24:00.318693+00	RETINAS is a research and development project initiated by Prof. Dr. Bharat Raj Pahari, Dean of Institute of Engineering (IOE), Tribhuvan University (TU) on 2012 with the objective to select highly qualified candidates by having sohpisticated computer based entrance examination system for bachelor/master level study at the institute. IOE is the government owned oldest institution in Nepal providing quality education in the engineering domain since 1972. However in the recent decade, other several universities are established in the country, IOE hasn't lost its popularity with its major features to have dedication on quality education to fulfill the world class education. As a public institution, it provides equal opportunities for all qualified citizens to enter into the university education. IOE has been conducting its entrance examination every year since 1972. There were more than 10,000 competitive applicants in the entrance exam of bachelors program. Hence less than 35% students were selected for the admission. The Entrance Examination Board of IOE massively conducts yearly entrance exam by planning four slots in a day and one slot consists of 240 examinees. Hence, it takes almost 10 to 12 days to conduct exam for about 10,000 applicants.\r\nAs being the technical institute, historically IOE is always ahead in the use of technology. The increasing burden in the manual processing of the entrance exam enforces IOE to step into the automatic exam oepration and result processing system. Since 2004, IOE developed automatic answer sheet scanning and processing system and started online based application since 2009. From the year 2014, IOE has started fully computer based entrance examination at its resourceful centers at Pulchowk. The fully managed and hassle free application system of IOE entrance examination [( http://entrance.ioe.edu.np)]( http://entrance.ioe.edu.np) allows applicants to simply apply and receive admit card with specified time slot from online registration system.\r\nProject RETINAS had been executed since 2012 and is currently led by dean of Institute of Engineering Prof. Dr. Triratna Bajracharya including highly qualified research oriented faculties of IOE. RETIENAS has the following features:\r\n\r\n-  It is an automated system for Application Registration, Processing, Verification and Admit Card Generation for BE/BArch as well as M.Sc. Entrance Examination\r\n-  The system also reserved the exam date and time slot for every applicants.\r\n-  Highly secured intrancet system is available at Information and Communication Technology Center at IOE Pulchowk. Students appear in the center and give exam from specified LAB and the computer.\r\n-  The redundant entrance examination servers (WEB,DB) are maintained and more than 240 client computers are dedicately placed at ICTC. Hence 240 examinees can appear at a time for the examination\r\nThe deveoped packages to conduct entrance examination is fully interactive client server based system in which the time between server and client is well synchronized. We implemented lamports timestamp with the cristian's clock synchronization algorithm to distribute updated timestamp from server. Since the system is on the single LAN (Intranet), hence the propagation delay between client and server for timestamp distribution is very little (in micro-second) that does not considerably affect examinees during examination.\r\nLICT team is continuing the research and development of the system to make it fully distributed and run on multiple LAN with the introduction of CACHE servers to balance the load and increase the concurrent access during examination so that we can increase the number of examinees in one slot.\r\n\r\n**Photos of ICTC Computer Labs:**\r\n![](https://lict.ioe.edu.np/projects/ictc-lab3.jpg)\r\n![](https://lict.ioe.edu.np/projects/ictc-lab2.jpg)\r\n![](https://lict.ioe.edu.np/projects/ictc-lab1.jpg)	1	
5	Handwritten Maths Expression Recogniser	2023-07-17 08:30:13+00	Handwritten Maths Expression Recogniser	1	uploads/research_post/LICT_Report_1_compressed.pdf
\.


--
-- Data for Name: posts_researchdomains; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_researchdomains (id, title, body, publish_date, publisher_id) FROM stdin;
1	Artificial Intelligence, Image Processing, and Computer Vision (AIPCV)	This reserach domain is lead by Sanjeeb Prasad Panday, PhD. The areas of research under this wing are as follows:\r\n\r\n- Artificial Intelligence\r\n- Image Processing\r\n- Computer Vision\r\n- Optimization Technique	2023-07-17 07:16:47+00	1
2	Networks, Cyber Security, and Digital Forensic (NCSDF)	This reserach domain is lead by Babu R Dawadi. The areas of reserach under this wing are as follows:\r\n\r\n- Computer Networks\r\n- Network Security\r\n- Cyber Security\r\n- Digital Forensic\r\n- Distributed Computing\r\n- Intellignet Networks	2023-07-17 07:17:11+00	1
3	Semantic Web, Linked Open Data, Social Web applications and Natural language P rocessing (SLSNP)	This reserach domain is lead by Dr. Aman Shakya . The areas of reserach under this wing are as follows:\r\n\r\n- Semantic web tehnologies\r\n- Linked open data\r\n- Social computing and web applications\r\n- Natural language processing	2023-07-17 07:17:22+00	1
4	Digital Health, Big Data and Analytics (DHBDA)	This reserach domain is directed by Dr. Basanta Joshi. The areas of reserach under this wing are as follows:\r\n\r\n- Digital Health\r\n- Health Informatics\r\n- Bio-Informatics\r\n- Big Data Anlytics	2023-07-17 07:17:38+00	1
\.


--
-- Data for Name: posts_researchpublicationlist; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_researchpublicationlist (id, name, publish_date, publisher_id, external_researchers, link_to_project, research_paper, _uuid, created_at, published_at) FROM stdin;
3	Affordable Broadband with Software Defined IPv6 Network for Rural Communities	2019-12-27 07:56:00+00	1	\N	https://www.mdpi.com/2571-5577/3/1/4		e8287301-6ed1-4e5f-b922-342d8018a9d5	2023-07-17 07:57:25+00	10th INTERNATIONAL CONFERENCE ON QUALITY, RELIABILITY, INFOCOM TECHNOLOGY AND BUSINESS OPERATIONS (Towards Smart, Reliable and Sustainable Future)
2	Evolutionary Dynamics of Service Provider Legacy Network Migration to Software Defined IPv6 Network	2019-07-04 07:33:29+00	1	\N	https://www.researchgate.net/publication/333039152_Evolutionary_Dynamics_of_Service_Provider_Legacy_Network_Migration_to_Software_Defined_IPv6_Network		583a0489-45c9-4df6-9667-442d677955f8	2023-07-17 07:36:41+00	Proc. of the 15th International Conference on Computing and Information Technology (IC2IT), Arnoma Grand Hotel Bangkok, Thailand
4	Recommendations for Energy Efficient SoDIP6 Network Deployment at the Early Stage Rural ICT Expansion of Nepal	2019-02-18 07:59:55+00	1	Martina M Keitsch	https://ieeexplore.ieee.org/document/8685567		7376117f-c2e2-4c30-92f9-66e0529fccf5	2023-07-17 08:01:04+00	2019 International Conference on Computing, Networking and Communications (ICNC)
5	Joint Cost Estimation Approach for Service Provider Legacy Network Migration to Unified Software Defined IPv6 Network	2018-10-18 08:02:55+00	1	Martina M Keitsch	https://ieeexplore.ieee.org/document/8537854		0499dfe2-6136-489c-9e0e-fba4964f7e60	2023-07-17 08:03:37+00	2018 IEEE 4th International Conference on Collaboration and Internet Computing (CIC)
6	Packet Loss Recovery and Control for VoIP	2017-05-05 08:04:50+00	1	Dipak K.C.	https://www.researchgate.net/publication/317101480_Packet_Loss_Recovery_and_Control_for_VoIP	uploads/research_paper/PLC-ART20173719.pdf	30a0390a-ea88-408c-ab7f-7cb7c31f3610	2023-07-17 08:06:53+00	International-Journal-of-Science-and-Research-IJSR-2319-7064
7	Towards Automation in the Admission Process as a Tool to Enhance Quality of Engineering Education	2017-07-17 08:08:47+00	1	\N	https://www.researchgate.net/publication/317101542_Towards_Automation_in_the_Admission_Process_as_a_Tool_to_Enhance_Quality_of_Engineering_Education_at_Tribhuvan_University		e7cd3e0c-9ecc-4c6d-b245-843beaa376fa	2023-07-17 08:10:49+00	Journal of the Institute of Engineering, 13(1), Kathmandu, Nepal.
8	Restructuring Examination System of IOE for Establishing Center of Excellency in Engineering Education	2017-07-17 08:12:58+00	1	Ram Chandra Sapkota,Triratna Bajracharya	https://www.researchgate.net/publication/317101633_Restructuring_Examination_System_of_IOE_for_Establishing_Center_of_Excellency_in_Engineering_Education	uploads/research_paper/16471.pdf	9b503240-9b6e-4a5b-a68c-9e807fa7bc57	2023-07-17 08:13:30+00	Journal of the Institute of Engineering, 13(1), Kathmandu, Nepal
\.


--
-- Data for Name: posts_researchpublicationlist_researchers; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.posts_researchpublicationlist_researchers (id, researchpublicationlist_id, user_id) FROM stdin;
1	2	6
2	2	7
3	3	8
4	3	11
5	3	6
6	3	7
7	2	8
8	4	8
9	4	6
10	4	7
11	5	8
12	5	6
13	5	7
14	6	6
15	7	11
16	7	6
17	8	6
\.


--
-- Data for Name: project_management_collaborator; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.project_management_collaborator (id, collaborating_user_id, collborating_project_id, role_id) FROM stdin;
1	3	2	8
2	7	2	10
3	6	2	7
4	11	2	7
5	6	3	8
6	7	3	10
7	10	3	10
8	5	3	6
9	6	3	6
10	13	3	6
12	14	7	11
13	11	7	7
14	9	7	7
15	6	7	8
16	7	7	10
17	4	9	2
\.


--
-- Data for Name: project_management_role; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.project_management_role (id, role_name, role_description) FROM stdin;
1	Scholar	None
2	Manager	None
3	Project Operation	None
4	Foreign Expert(s)	None
5	Research Advisor(s)	None
6	Expert Team Member(s)	None
7	Co Investigator	None
8	Principle Investigator	None
9	PhD Research Scholar(s)	None
10	Advisor(s)	None
11	Project Coordinator at IOE side	None
12	Research Team Member(s)	None
13	Research Management Team	None
\.


--
-- Data for Name: project_management_status; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.project_management_status (id, title, introduction, background, scope_of_work, objective, project_duration, funding, estimated_completion_date, other_description, publisher_id, publish_date, state_of_project) FROM stdin;
2	CASS: Content-Aware Search System	CASS: Content-Aware Search System	This project investigates how to build an efficient, high-quality content-based similarity search engine for feature-rich (non-text) data, which has dominated the increasing volume of digital information. The research topics include sketch construction, indexing for similarity search, distance functions for different feature-rich data types, integration with attribute-based search tools, content-addressable and searchable storage system, and Memex systems. The current toolkit is used to construct search systems for four data types including audio recordings, digital photos, 3D shapes, and genomic micro-array data.					2023-10-13		1	2023-07-17 07:21:47.004421+00	completed
3	CertiCoq: Principled Optimizing Compilation of Dependently Typed Programs	The CertiCoq project aims to build a proven-correct compiler for dependently-typed, functional languages, such as Gallina—the core language of the Coq proof assistant. A proved-correct compiler consists of a high-level functional specification, machine-verified proofs of important properties, such as safety and correctness, and a mechanism to transport those proofs to the generated machine code. The project exposes both engineering challenges and foundational questions about compilers for dependently-typed languages.		Principled Optimizing Compilation of Dependently Typed Programs		2 years	$ 10,000	2022-12-21	CertiCoq is a compiler for Gallina, the specification language of the Coq proof assistant. CertiCoq targets Clight, a subset of the C language that can be compiled with any C compiler, including the CompCert verified compiler.\r\n\r\nThe goal of the CertiCoq project is to build an end-to-end verified compiler for Gallina, bridging the gap between formally verified source programs and their compiled executables.\r\n\r\nLarge parts of the CertiCoq compiler have been verified whereas others are in the process of being verified.\r\n\r\nYou can find CertiCoq’s souce code on GitHub. CertiCoq is part of the DeepSpec project.	1	2023-07-17 07:24:50.106026+00	completed
5	Int'l Standard Web Portal Development Initiation in Tribhuvan University	Develop standard and fully dynamic web templates for university center, campuses/centraldepartments, research centers and faculties/departments.\r\nDevelop full features content management system (CMS) for all developed web templates.\r\nImplement integrated website of TU including its all bodies and strengthen the content creation, management and visualization.\r\nThe web system will be developed based on the features highlited in Figure 1						2023-01-24		1	2023-07-17 07:27:33+00	ongoing
6	Transformation to Future Networking with Broadband Implementation: Status of Nepal and the Steps Ahead (TraFNet)	## Research Motivation\r\nWe, the research team members include professionals of networking and telecommunications as well as university professors. Our main motto is to have localized ICT research for our country that contributes towards speedy implementation of new technologies in the field of information and communication technology for social transformation. At the different time frame, we members were involved in real time network configuration of telecom networks, ICT policy formulation including IPv6 migration, broadband communication, latest network deployment et cetera. It was also the major concern of Nepal Telecommunications Authority (NTA) to formulate suitable policies and regulatory guidelines to transform the current network into new networking paradigms. The important part for our country is the identification of proper cost of broadband deployment as well as network migration for ISP and Telecom equipment upgrades towards IPv6 and Software Defined Network (SDN), Implementation for Internet of Things (IoT), network operation & maintenance and upgrade as well. Another major concern is the amount of energy consumed by networks. The increasing network size and continuous operation increase the energy consumption by the network devices. Because of this, the companies pay a significant percentage of their revenue to power their network infrastructures. With the rapid growth of smart users, IoT implementation and the Wireless Sensor Network (WSN) deployment becomes major concern for the service providers as their sustainable business solutions. Considering the global pace of technology transformations, we need to take steps for our country’s network to identify its current status and apply suitable measures towards future smart life.\r\nThis seismic shift in the technological paradigm has encouraged the team to carry out practical research on the field of smart cities and the related infrastructure including IoT, carrier network and data analytics infrastructure along with evolutionary enablers such as IPv6, Software Defined Networks (SDN), cloud computing infrastructure and virtualization technologies. These technological enablers are critical in realizing a functional high-tech society that can lead to efficient service delivery, better communication and improved quality of life in the smart communities. \r\n\r\n##Background\r\nInternet and related technologies have transformed the way humans communicate. Rapid technological advancement, service proliferation and integration of innumerable services have made the Internet an indispensable part of our lives. Traditionally, Internet has been a means of communication between people. The technology and network enabled people to quickly communicate with each other irrespective of geographical distance. This network then led to the evolution of network based services in trade, finance, education, social networking, and public services delivery. Even conventional communication media such as voice telephony and short messaging services are becoming Internet-borne.\r\n\r\nLately, Internet and IP technology have taken another very transformative turn. Machines have started to get more autonomous as connected entities that can create and consume data. This traditionally human activity (of creating and consuming data) has started being done by machines in what is known as M2M (Machine to Machine) network. This phenomena combined with the Internet technology is also called the Internet of Things (IoT). This has created an unprecedented avenue of technological evolution and business opportunity. Concepts such as remote surveillance, smart cities, smart homes, societal automation are becoming a reality. This, combined with advanced data analytics technologies, artificial intelligence, cloud platforms, rapid expansion of next generation broadband networks (wired and wireless) for seamless communication and future-proof technologies such as IPv6 has made the dream of smart communities, industrial automation and automated public service delivery a reality.\r\nAccording to the gadget survey , within the last 20 years, the number of Internet users reached more than 3 billion. The number of connected devices is more than 7.2 billion mobile gadgets which is even bigger than world's population in 2015. The rapid growth of Internet users and ICT business in the world led to the exhaustion of IPv4 address space and forced the industry to standardize new addressing scheme having 128 bits, called Internet Protocol version 6 (IPv6). In the next generation networking infrastructure, every connected device shall have one or more unique IPv6 addresses. The vast size of the IPv6 address space has enough addresses to allocate to every such device coming up in the foreseeable future. IPv6 on the one hand improves the efficiency of internet protocol as a whole including routing, while on the other hand Software Defined Networks (SDN) improves the controllability of networking equipment with an approach to using open protocols, such as Open-Flow, to apply globally aware software control at the edges of the network to access network devices that typically would use closed and vendor specific firmware. The invention of these new concepts and development creates bigger challenges in networking for service providers to migrate their existing legacy networks into the software defined and IPv6 enabled network and the implementation of those technologies in broadband communications.\r\n\r\nWith the rapid growth of internet users, increased Internet of Things (IoT), smart devices and the trend of world moving to converged network environment into the mode of computer networks (IP based network), the researchers, developers and the networking enterprises worldwide are obliged to enhance the intelligence in networking technologies. For the realization of the dream of smart cities and smart communities it is imperative to move towards next generation networking paradigm like IPv6 addressing mechanism, Software Defined Network as well as implementing the IoT & Wireless Sensor Network and addressing the increased user’s demand by having high speed broadband communications.\r\nBeing the developing country, Nepal is a net consumer of Internet services and technologies. ISPs of Nepal are the distributors of technologies and services. However, the rapid changes in technology worldwide has raised the challenges and issues for the developing country like Nepal towards the early implementation of evolving and new services. The major hurdles are limited skilled human resources, limited purchasing capacity and lack of proper planning. There is also a need for proper and timely government initiatives to formulate the policies, laws and regulation as well as their proper enforcement to usher in desired change in relevant sectors of society.\r\n\r\nNepal has six licensed telecom operators and more than 60 ISPs. Recently promulgated broadband policy of Nepal is still in the initial stage of implementation while the sufficient study on technology migration, migration policy and strategy have not been set by the government. The change in technologies encourages and prompts the service providers to introduce new technologies and provide efficient services to the customers via technology migration. The migration is a gradual process for which proper strategy has to be developed by the service providers considering the technology needs, customer demand, Capital Expenditure (CapEX), Operational Expenditure (OpEX) and traffic engineering perspectives towards smooth transitioning. The transition period spans longer during when the service providers should have to move forward with proper migration planning with optimum cost. On the other hand the geographical distribution of Nepal is unique in the world having highest peak, mostly covered by Himalayan, hilly diverse terrain and a small part of plain area. Difficult geographical terrain and scattered inhabitation makes it difficult to build communication infrastructure and distribute the technologies and services. Core network migration to IPv6 and SDN, broadband infrastructure deployment with proper policy to suit of those migrated new technologies and the IoT implementations are the major concerns for the service providers of developing countries like Nepal. Looking into the Nepalese context, the technology migration is in the early stage. Similarly the broadband deployment, cloud computing, IoT implementations together with the necessary policy and implementation guideline formulation are in the early stages. This encouraged us to undertake this localized ICT research for our country so that we find the current status of technology implementation and recommend for the future that helps the country towards smart life and reduce the digital divide. We also expect the research to provide important insight to help innovate and introduce new services with right technologies in an effective and economical manner.\r\n\r\n##Justification of the Study\r\nThis research performs the technical and economic analysis of the legacy network migration to Software Defined IPv6 Network with broadband deployment challenges for Nepal including IoT implementation and the security measure that the service providers should consider. It will focus to identify networking equipment status for their upgradability towards future networking, optimum estimate to migrate the service provider network with cost of migration and broadband network deployment and identify the IoT implementation plan with better security.\r\n\r\n**Technological Impact:**  This research is highly assistive to the service providers of Nepal to efficiently migrate their current network into next generation networking paradigm like SDN & IPv6 as well as it comes up with proper plan and strategies for broadband deployment and IoT implementations.\r\nSocio economic impact: organizations and the citizens are directly benefited with the use of low cost and affordable new ICT services.\r\nThis research would also be helpful to the government agencies/regulators for proper regulation, development of regulatory guidelines/rules and future planning.\r\n\r\n##Objective(s)\r\nThe major objective(s) of this faculty research shall be as follows\r\n- Study the current trend of networking technologies migrations including broadband deployment and the IoT implementation for future smart life\r\n- Find the position of Nepal regarding Broadband deployment, SDN/IPv6 migration & IoT implementation.\r\n- Analyze the future network transformation challenges and recommend the solution for Nepal.				2 Years	Funded by University Grant Commission Nepal (UGC-Nepal) with grant support USD4000 under faculty res	2023-12-15		1	2023-07-17 07:28:07+00	ongoing
7	Development of Smart Irrigation System for:Optimization of Water use and Increasing Crop Yield (SISO-WAY)	Agriculture in Nepal has long been based on subsistence farming. Approximately two third of the population is involved in agriculture, which constitutes 34 percent of GDP. The seasonal nature of farming leads to widespread underemployment, but programs to grow cash crops and encourage cottage industries have had some success over the years. Population increase and environmental degradation have ensured that the minimal gains in agricultural production, owing more to the extension of arable land than to improvements in farming practices, have been canceled out. \r\n\r\nThe main challenge for our irrigated agricultural sector is to increase water use efficiency to result in increase in the productivity of land and water in a sustainable way (more crops per drop per hectare). It is important to optimize the available resources to achieve maximum return. Towards this goal, new technologies need to be applied to provide an optimal alternative to gather and process information to enhance the productivity. Climate change and scarcity of water demand new and improved method for modern agricultural fields. Consequently the field for automation and intelligent decision making is becoming more important to achieve this mission.\r\n\r\n# Project Area\r\nThe project is designated at Gauradaha Municipality-5, Jhapa (previously Maharanijhoda-3, Jhapa) where community based small farmers group cultivate around 50 Ha (80 Bigha) agricultural land in an integrated way. The land is divided into 8 blocks (each ranging from 8 Bigha to 14 Bigha) with 3.0m of service road. WRRDC intend to select one suitable block among the 8 blocks for this study purpose. Several crops are cultivated within the same area with specific irrigation demands and different average yields. The major crops in the command area are monsoon paddy, maize, oil seed and wheat.	Laboratory for ICT Resaerch and Development (LICT)-Information and Communication Technology Center (ICTC) has signed MoU on 25 Dec. 2019 with The Water Resource Research and Development Centre (WRRDC), Ministry of Energy, Water Resources and Irrigation to carryout detailed study, preparation of detailed project report and implementation of the project report for “Developement of Smart Irrigation System for: Optimization of Water Use and Increasing Crop Yield (SISO-WAY)" resulting with research work.\r\n\r\nWRRDC perceive that the research work would come forth with publications of national and international repute as well as conferences of national and international levels and commendable achievements of the study would emerge through successful completion of Doctoral (PhD) and Master of Science (Engineering) thesis.\r\n\r\nThe complete research work is conceptualized to be carried out in three phases. Phase (I) Study/Plan which will cover the field work and documentation to prepare detailed project report (DPR),  Phase (II) Implementation will include all aspects of implementation of activities on the basis of the DPR and Phase (III) Research Study will cover all research  activities to understand the operational aspects and its improvement, impact and such other aspects for optimization to achieve more crop per drop.		The objective of this research work is to carry out detailed field study and preparation of detailed project report (DPR) for the Development of Smart Irrigation System for: Optimization of Water Use and Increasing Crop Yield (SISO-WAY) in the project area using appropriate information and communication technology (ICT) (Agricultural IoT and Automation).	18 Weeks	Funded by Water Resource Research and Development Centre (WRRDC), Ministry of Energy, Water Resource	2023-07-05		1	2023-07-17 07:29:00+00	ongoing
9	New Proj	**THIS**\r\n\r\n* THis\r\n*	THis	new	Test	2	$ 10,000	2022-10-12		1	2023-07-17 09:50:27.447592+00	ongoing
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: user_userprofile; Type: TABLE DATA; Schema: public; Owner: ictc_admin
--

COPY public.user_userprofile (user_id, designation, name, bio, profile_pic, posting_permission, project_management_permission, is_researcher) FROM stdin;
16	Er.	\N		uploads/profile_pictures/default.png	f	f	t
2	\N	\N	\N	uploads/profile_pictures/default.png	f	f	f
15	Prof.	\N		uploads/profile_pictures/default.png	f	f	t
1	\N	\N	\N	uploads/profile_pictures/default.png	t	t	f
3	Assoc. Prof.	\N		uploads/profile_pictures/default.png	t	t	t
4	Asst. Prof.	\N		uploads/profile_pictures/default.png	t	t	t
5	Asst. Prof.	\N		uploads/profile_pictures/default.png	t	f	t
6	Asst. Prof.	\N		uploads/profile_pictures/default.png	t	t	t
7	Prof.	\N		uploads/profile_pictures/default.png	t	t	t
8	Assoc. Prof.	\N		uploads/profile_pictures/default.png	f	f	t
9	Assoc. Prof.	\N		uploads/profile_pictures/default.png	f	f	t
10	Assoc. Prof.	\N		uploads/profile_pictures/default.png	f	f	t
11	\N	\N		uploads/profile_pictures/default.png	f	f	t
12	Prof.	\N		uploads/profile_pictures/default.png	f	f	t
13	Assoc. Prof.	\N		uploads/profile_pictures/default.png	f	f	t
14	\N	\N		uploads/profile_pictures/default.png	f	f	t
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 124, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 16, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 96, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 89, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: other_pages_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_contact_id_seq', 1, false);


--
-- Name: other_pages_cvupload_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_cvupload_id_seq', 1, false);


--
-- Name: other_pages_goal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_goal_id_seq', 1, false);


--
-- Name: other_pages_homepagecarouselimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_homepagecarouselimage_id_seq', 3, true);


--
-- Name: other_pages_homepagecontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_homepagecontent_id_seq', 1, true);


--
-- Name: other_pages_missions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_missions_id_seq', 1, false);


--
-- Name: other_pages_researchteam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_researchteam_id_seq', 1, false);


--
-- Name: other_pages_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_tasks_id_seq', 1, false);


--
-- Name: other_pages_vacancyannouncement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_vacancyannouncement_id_seq', 1, false);


--
-- Name: other_pages_visions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.other_pages_visions_id_seq', 1, false);


--
-- Name: posts_collaborator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_collaborator_id_seq', 9, true);


--
-- Name: posts_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_news_id_seq', 1, false);


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 6, true);


--
-- Name: posts_researchdomains_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_researchdomains_id_seq', 4, true);


--
-- Name: posts_researchpublicationlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_researchpublicationlist_id_seq', 8, true);


--
-- Name: posts_researchpublicationlist_researchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.posts_researchpublicationlist_researchers_id_seq', 17, true);


--
-- Name: project_management_collaborator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.project_management_collaborator_id_seq', 17, true);


--
-- Name: project_management_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.project_management_role_id_seq', 13, true);


--
-- Name: project_management_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.project_management_status_id_seq', 9, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ictc_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: other_pages_contact other_pages_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_contact
    ADD CONSTRAINT other_pages_contact_pkey PRIMARY KEY (id);


--
-- Name: other_pages_cvupload other_pages_cvupload_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_cvupload
    ADD CONSTRAINT other_pages_cvupload_pkey PRIMARY KEY (id);


--
-- Name: other_pages_goal other_pages_goal_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_goal
    ADD CONSTRAINT other_pages_goal_pkey PRIMARY KEY (id);


--
-- Name: other_pages_homepagecarouselimage other_pages_homepagecarouselimage_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_homepagecarouselimage
    ADD CONSTRAINT other_pages_homepagecarouselimage_pkey PRIMARY KEY (id);


--
-- Name: other_pages_homepagemessages other_pages_homepagecontent_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_homepagemessages
    ADD CONSTRAINT other_pages_homepagecontent_pkey PRIMARY KEY (id);


--
-- Name: other_pages_vision other_pages_missions_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_vision
    ADD CONSTRAINT other_pages_missions_pkey PRIMARY KEY (id);


--
-- Name: other_pages_researchteammember other_pages_researchteam_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_researchteammember
    ADD CONSTRAINT other_pages_researchteam_pkey PRIMARY KEY (id);


--
-- Name: other_pages_task other_pages_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_task
    ADD CONSTRAINT other_pages_tasks_pkey PRIMARY KEY (id);


--
-- Name: other_pages_vacancyannouncement other_pages_vacancyannouncement_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_vacancyannouncement
    ADD CONSTRAINT other_pages_vacancyannouncement_pkey PRIMARY KEY (id);


--
-- Name: other_pages_mission other_pages_visions_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.other_pages_mission
    ADD CONSTRAINT other_pages_visions_pkey PRIMARY KEY (id);


--
-- Name: posts_collaborator posts_collaborator_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_collaborator
    ADD CONSTRAINT posts_collaborator_pkey PRIMARY KEY (id);


--
-- Name: posts_news posts_news_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_news
    ADD CONSTRAINT posts_news_pkey PRIMARY KEY (id);


--
-- Name: posts_post posts_post_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_pkey PRIMARY KEY (id);


--
-- Name: posts_researchdomains posts_researchdomains_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchdomains
    ADD CONSTRAINT posts_researchdomains_pkey PRIMARY KEY (id);


--
-- Name: posts_researchpublicationlist_researchers posts_researchpublicatio_researchpublicationlist__272b8586_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist_researchers
    ADD CONSTRAINT posts_researchpublicatio_researchpublicationlist__272b8586_uniq UNIQUE (researchpublicationlist_id, user_id);


--
-- Name: posts_researchpublicationlist posts_researchpublicationlist__uuid_f7326968_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist
    ADD CONSTRAINT posts_researchpublicationlist__uuid_f7326968_uniq UNIQUE (_uuid);


--
-- Name: posts_researchpublicationlist posts_researchpublicationlist_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist
    ADD CONSTRAINT posts_researchpublicationlist_pkey PRIMARY KEY (id);


--
-- Name: posts_researchpublicationlist_researchers posts_researchpublicationlist_researchers_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist_researchers
    ADD CONSTRAINT posts_researchpublicationlist_researchers_pkey PRIMARY KEY (id);


--
-- Name: project_management_collaborator project_management_collaborator_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_collaborator
    ADD CONSTRAINT project_management_collaborator_pkey PRIMARY KEY (id);


--
-- Name: project_management_role project_management_role_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_role
    ADD CONSTRAINT project_management_role_pkey PRIMARY KEY (id);


--
-- Name: project_management_status project_management_status_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_status
    ADD CONSTRAINT project_management_status_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: user_userprofile user_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.user_userprofile
    ADD CONSTRAINT user_userprofile_pkey PRIMARY KEY (user_id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: posts_collaborator_collaborating_user_id_e57096ca; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_collaborator_collaborating_user_id_e57096ca ON public.posts_collaborator USING btree (collaborating_user_id);


--
-- Name: posts_collaborator_collborating_post_id_a139cbce; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_collaborator_collborating_post_id_a139cbce ON public.posts_collaborator USING btree (collborating_post_id);


--
-- Name: posts_collaborator_role_id_47c429ad; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_collaborator_role_id_47c429ad ON public.posts_collaborator USING btree (role_id);


--
-- Name: posts_news_publisher_id_422a6bcf; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_news_publisher_id_422a6bcf ON public.posts_news USING btree (publisher_id);


--
-- Name: posts_post_publisher_id_2a58e835; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_post_publisher_id_2a58e835 ON public.posts_post USING btree (publisher_id);


--
-- Name: posts_researchdomains_publisher_id_e48110e0; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_researchdomains_publisher_id_e48110e0 ON public.posts_researchdomains USING btree (publisher_id);


--
-- Name: posts_researchpublicationl_researchpublicationlist_id_85dad78a; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_researchpublicationl_researchpublicationlist_id_85dad78a ON public.posts_researchpublicationlist_researchers USING btree (researchpublicationlist_id);


--
-- Name: posts_researchpublicationlist_publisher_id_5a7de9f0; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_researchpublicationlist_publisher_id_5a7de9f0 ON public.posts_researchpublicationlist USING btree (publisher_id);


--
-- Name: posts_researchpublicationlist_researchers_user_id_96a45847; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX posts_researchpublicationlist_researchers_user_id_96a45847 ON public.posts_researchpublicationlist_researchers USING btree (user_id);


--
-- Name: project_management_collabo_collborating_project_id_31f9303d; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX project_management_collabo_collborating_project_id_31f9303d ON public.project_management_collaborator USING btree (collborating_project_id);


--
-- Name: project_management_collaborator_collaborating_user_id_05a1163d; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX project_management_collaborator_collaborating_user_id_05a1163d ON public.project_management_collaborator USING btree (collaborating_user_id);


--
-- Name: project_management_collaborator_role_id_6efc3682; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX project_management_collaborator_role_id_6efc3682 ON public.project_management_collaborator USING btree (role_id);


--
-- Name: project_management_status_publisher_id_52702d38; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX project_management_status_publisher_id_52702d38 ON public.project_management_status USING btree (publisher_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: ictc_admin
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_collaborator posts_collaborator_collaborating_user_i_e57096ca_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_collaborator
    ADD CONSTRAINT posts_collaborator_collaborating_user_i_e57096ca_fk_auth_user FOREIGN KEY (collaborating_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_collaborator posts_collaborator_collborating_post_id_a139cbce_fk_posts_pos; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_collaborator
    ADD CONSTRAINT posts_collaborator_collborating_post_id_a139cbce_fk_posts_pos FOREIGN KEY (collborating_post_id) REFERENCES public.posts_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_collaborator posts_collaborator_role_id_47c429ad_fk_project_m; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_collaborator
    ADD CONSTRAINT posts_collaborator_role_id_47c429ad_fk_project_m FOREIGN KEY (role_id) REFERENCES public.project_management_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_news posts_news_publisher_id_422a6bcf_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_news
    ADD CONSTRAINT posts_news_publisher_id_422a6bcf_fk_auth_user_id FOREIGN KEY (publisher_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_post posts_post_publisher_id_2a58e835_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_post
    ADD CONSTRAINT posts_post_publisher_id_2a58e835_fk_auth_user_id FOREIGN KEY (publisher_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_researchdomains posts_researchdomains_publisher_id_e48110e0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchdomains
    ADD CONSTRAINT posts_researchdomains_publisher_id_e48110e0_fk_auth_user_id FOREIGN KEY (publisher_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_researchpublicationlist posts_researchpublic_publisher_id_5a7de9f0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist
    ADD CONSTRAINT posts_researchpublic_publisher_id_5a7de9f0_fk_auth_user FOREIGN KEY (publisher_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_researchpublicationlist_researchers posts_researchpublic_researchpublicationl_85dad78a_fk_posts_res; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist_researchers
    ADD CONSTRAINT posts_researchpublic_researchpublicationl_85dad78a_fk_posts_res FOREIGN KEY (researchpublicationlist_id) REFERENCES public.posts_researchpublicationlist(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: posts_researchpublicationlist_researchers posts_researchpublic_user_id_96a45847_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.posts_researchpublicationlist_researchers
    ADD CONSTRAINT posts_researchpublic_user_id_96a45847_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_management_collaborator project_management_c_collaborating_user_i_05a1163d_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_collaborator
    ADD CONSTRAINT project_management_c_collaborating_user_i_05a1163d_fk_auth_user FOREIGN KEY (collaborating_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_management_collaborator project_management_c_collborating_project_31f9303d_fk_project_m; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_collaborator
    ADD CONSTRAINT project_management_c_collborating_project_31f9303d_fk_project_m FOREIGN KEY (collborating_project_id) REFERENCES public.project_management_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_management_collaborator project_management_c_role_id_6efc3682_fk_project_m; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_collaborator
    ADD CONSTRAINT project_management_c_role_id_6efc3682_fk_project_m FOREIGN KEY (role_id) REFERENCES public.project_management_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_management_status project_management_status_publisher_id_52702d38_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.project_management_status
    ADD CONSTRAINT project_management_status_publisher_id_52702d38_fk_auth_user_id FOREIGN KEY (publisher_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_userprofile user_userprofile_user_id_2474538d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ictc_admin
--

ALTER TABLE ONLY public.user_userprofile
    ADD CONSTRAINT user_userprofile_user_id_2474538d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

