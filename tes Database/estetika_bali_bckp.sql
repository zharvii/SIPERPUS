PGDMP                          w            estetika_bali    11.4    11.4    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    24577    estetika_bali    DATABASE     ?   CREATE DATABASE estetika_bali WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE estetika_bali;
             postgres    false            ?            1259    26237    BEBAS    TABLE     Y  CREATE TABLE public."BEBAS" (
    kodeobat character varying(10) DEFAULT NULL::character varying,
    namaobat character varying(255) DEFAULT NULL::character varying,
    satuan1 character varying(10) DEFAULT NULL::character varying,
    hargabeli money,
    hargajual money,
    kemasan character varying(10) DEFAULT NULL::character varying
);
    DROP TABLE public."BEBAS";
       public         postgres    false            ?            1259    26258    OB    TABLE     ?  CREATE TABLE public."OB" (
    kodeobat character varying(255) DEFAULT NULL::character varying,
    namaobat character varying(255) DEFAULT NULL::character varying,
    namageneric character varying(255) DEFAULT NULL::character varying,
    golongan character varying(255) DEFAULT NULL::character varying,
    "JENIS" character varying(255) DEFAULT NULL::character varying,
    satuan1 character varying(255) DEFAULT NULL::character varying,
    hargabeli money,
    hargajual money
);
    DROP TABLE public."OB";
       public         postgres    false            ?            1259    26270    OB2    TABLE     ?  CREATE TABLE public."OB2" (
    "KODEOBAT" character varying(10) DEFAULT NULL::character varying,
    namaobat character varying(50) DEFAULT NULL::character varying,
    namageneric character varying(50) DEFAULT NULL::character varying,
    golongan character varying(10) DEFAULT NULL::character varying,
    "JENIS" character varying(10) DEFAULT NULL::character varying,
    hargabeli numeric(18,0) DEFAULT NULL::numeric,
    hargajual numeric(18,0) DEFAULT NULL::numeric
);
    DROP TABLE public."OB2";
       public         postgres    false                       1259    27910    TBL_APOSESUAILOG    TABLE     9  CREATE TABLE public."TBL_APOSESUAILOG" (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    tglso date NOT NULL,
    saldo numeric(10,0) DEFAULT 0 NOT NULL,
    hasilso numeric(8,0) DEFAULT 0 NOT NULL,
    sesuai numeric(10,0) DEFAULT 0 NOT NULL,
    kogudang character(30) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT NULL::bpchar,
    tglentry date,
    jamentry character(10) DEFAULT NULL::bpchar,
    hna numeric(18,2) DEFAULT 0 NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL
);
 &   DROP TABLE public."TBL_APOSESUAILOG";
       public         postgres    false                       1259    28004    TBL_APOSTOCKLOG    TABLE     Y  CREATE TABLE public."TBL_APOSTOCKLOG" (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    saldoawal numeric(10,2) DEFAULT 0 NOT NULL,
    terima numeric(10,2) DEFAULT 0 NOT NULL,
    keluar numeric(10,2) DEFAULT 0 NOT NULL,
    hasilso numeric(10,2) DEFAULT 0 NOT NULL,
    sesuai numeric(10,2) DEFAULT 0 NOT NULL,
    saldoakhir numeric(10,2) DEFAULT 0 NOT NULL,
    tglso date NOT NULL,
    periodedate date NOT NULL,
    awaltemp numeric(10,2) DEFAULT 0 NOT NULL,
    terimatemp numeric(10,2) DEFAULT 0 NOT NULL,
    keluartemp numeric(10,2) DEFAULT 0 NOT NULL,
    akhirtemp numeric(10,2) DEFAULT 0 NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL,
    tidakterpakai money DEFAULT 0 NOT NULL,
    kogudang character(20) DEFAULT ''::bpchar NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL,
    maksimumstock numeric(18,0) DEFAULT 0 NOT NULL,
    minimumstock numeric(18,0) DEFAULT 0 NOT NULL,
    jual numeric(18,0) DEFAULT 0 NOT NULL,
    lead1 date NOT NULL,
    lead2 date NOT NULL,
    lead numeric(18,0) DEFAULT 0 NOT NULL
);
 %   DROP TABLE public."TBL_APOSTOCKLOG";
       public         postgres    false            ?           1259    36651    TBL_PROVIDER    TABLE     ?   CREATE TABLE public."TBL_PROVIDER" (
    "PROVIDER" character(5) DEFAULT ''::bpchar NOT NULL,
    "NAMAPROVIDER" character(50) DEFAULT ''::bpchar NOT NULL,
    jenisjamin numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public."TBL_PROVIDER";
       public         postgres    false            ?           1259    37621    TBL_TRIAGEUGD_DETAIL1    TABLE     ?  CREATE TABLE public."TBL_TRIAGEUGD_DETAIL1" (
    "NOREG" character(12) DEFAULT NULL::bpchar,
    "REKMED" character(10) DEFAULT NULL::bpchar,
    "PUKUL" character(10) DEFAULT NULL::bpchar,
    "NAMAOBAT" character(100) DEFAULT NULL::bpchar,
    "DOSIS" character(40) DEFAULT NULL::bpchar,
    "RUTE" character(40) DEFAULT NULL::bpchar,
    "DR" character(40) DEFAULT NULL::bpchar,
    "DIPERIKSA" character(40) DEFAULT NULL::bpchar,
    "DIBERI" character(40) DEFAULT NULL::bpchar
);
 +   DROP TABLE public."TBL_TRIAGEUGD_DETAIL1";
       public         postgres    false            ?            1259    26957    TBL_apodpolog    TABLE     ?  CREATE TABLE public."TBL_apodpolog" (
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_po numeric(10,0) DEFAULT 0 NOT NULL,
    qty_terima numeric(10,0) DEFAULT 0 NOT NULL,
    qty_retur money DEFAULT 0 NOT NULL,
    price_po numeric(12,4) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(10) DEFAULT ''::bpchar NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    vatrp numeric(10,2) DEFAULT 0 NOT NULL,
    price_net numeric(12,4) DEFAULT 0 NOT NULL,
    total numeric(14,4) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    pokey character(20) DEFAULT ''::bpchar NOT NULL,
    rencana_no character(14) DEFAULT ''::bpchar NOT NULL,
    ketbeli character(200) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public."TBL_apodpolog";
       public         postgres    false            ?            1259    27252    TBL_apodterimalog    TABLE     "  CREATE TABLE public."TBL_apodterimalog" (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_terima numeric(12,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    price numeric(12,2) DEFAULT 0 NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discountrp numeric(14,2) DEFAULT 0 NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    vatrp numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    pocounter character(4) DEFAULT ''::bpchar NOT NULL,
    exp_date date NOT NULL,
    terimakey character(20) DEFAULT ''::bpchar NOT NULL,
    pokey character(20) DEFAULT ''::bpchar NOT NULL,
    hargajual numeric(18,0) DEFAULT 0 NOT NULL,
    batno character(15) DEFAULT ''::bpchar NOT NULL,
    hithpp numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 '   DROP TABLE public."TBL_apodterimalog";
       public         postgres    false            ?            1259    27517    TBL_apohpolog    TABLE     ?  CREATE TABLE public."TBL_apohpolog" (
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    po_date date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    ship_via character(10) DEFAULT ''::bpchar NOT NULL,
    ship_date date NOT NULL,
    ref_no character(20) DEFAULT ''::bpchar NOT NULL,
    kurs character(10) DEFAULT ''::bpchar NOT NULL,
    kursrate numeric(8,2) DEFAULT 1 NOT NULL,
    counter integer DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    optype money DEFAULT 1 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    icgroup character(4) DEFAULT ''::bpchar NOT NULL,
    cntpo numeric(18,0) DEFAULT 0 NOT NULL,
    jenisbeli numeric(18,0) DEFAULT 0 NOT NULL,
    username character(10) DEFAULT ''::bpchar NOT NULL,
    dibuatoleh character(40) DEFAULT ''::bpchar NOT NULL,
    diajukanoleh character(40) DEFAULT ''::bpchar NOT NULL,
    disetujuioleh character(40) DEFAULT ''::bpchar NOT NULL,
    disetujuitgl date NOT NULL,
    disetujuijam character(10) DEFAULT ''::bpchar NOT NULL,
    ownerlevel numeric(18,0) DEFAULT 0 NOT NULL,
    ajukan money DEFAULT 0 NOT NULL,
    totalrp numeric(18,0) DEFAULT 0 NOT NULL,
    setuju money DEFAULT 0 NOT NULL
);
 #   DROP TABLE public."TBL_apohpolog";
       public         postgres    false            ?            1259    27631    TBL_apohreturbelilog    TABLE     ?  CREATE TABLE public."TBL_apohreturbelilog" (
    retur_no character(16) DEFAULT ''::bpchar NOT NULL,
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    retur_date date,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(20) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL
);
 *   DROP TABLE public."TBL_apohreturbelilog";
       public         postgres    false            ?            1259    27737    TBL_apohterimalog    TABLE     ?  CREATE TABLE public."TBL_apohterimalog" (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    terima_date date NOT NULL,
    due_date date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(50) DEFAULT ''::bpchar NOT NULL,
    sj_no character(20) DEFAULT ''::bpchar NOT NULL,
    term character(4) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    kurs character(10) DEFAULT ''::bpchar NOT NULL,
    kursrate numeric(8,2) DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    cntterima numeric(4,0) DEFAULT 0 NOT NULL,
    luar money DEFAULT 0 NOT NULL,
    diskontotal numeric(18,0) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    vatrp numeric(18,0) DEFAULT 0 NOT NULL,
    jenisbeli numeric(18,0) DEFAULT 0 NOT NULL,
    tgltukar date NOT NULL,
    tukar money DEFAULT 0 NOT NULL,
    rbayar date NOT NULL,
    materai numeric(18,0) DEFAULT 0 NOT NULL,
    ongkir numeric(18,0) DEFAULT 0 NOT NULL,
    bkemasan numeric(18,0) DEFAULT 0 NOT NULL
);
 '   DROP TABLE public."TBL_apohterimalog";
       public         postgres    false                       1259    28133    TBL_cartofacc    TABLE     ?  CREATE TABLE public."TBL_cartofacc" (
    accountno character(14) NOT NULL,
    acname character(80) NOT NULL,
    actype character(5) NOT NULL,
    aclevel numeric(1,0) NOT NULL,
    kasbank money NOT NULL,
    possaldo character(1) NOT NULL,
    saldo01 numeric(14,2) NOT NULL,
    saldo02 numeric(14,2) NOT NULL,
    saldo03 numeric(14,2) NOT NULL,
    saldo04 numeric(14,2) NOT NULL,
    saldo05 numeric(14,2) NOT NULL,
    saldo06 numeric(14,2) NOT NULL,
    saldo07 numeric(14,2) NOT NULL,
    saldo08 numeric(14,2) NOT NULL,
    saldo09 numeric(14,2) NOT NULL,
    saldo10 numeric(14,2) NOT NULL,
    saldo11 numeric(14,2) NOT NULL,
    saldo12 numeric(14,2) NOT NULL,
    tglsaldo date NOT NULL,
    rekno character(20) NOT NULL,
    tglbank date NOT NULL,
    saldobank numeric(12,2) NOT NULL,
    nodekey character(14) NOT NULL,
    awaltmpdebet numeric(14,2) NOT NULL,
    awaltmpcredit numeric(14,2) NOT NULL,
    trtmpdebet numeric(14,2) NOT NULL,
    trtmpcredit numeric(14,2) NOT NULL,
    akhirtmpdebet numeric(14,2) NOT NULL,
    akhirtmpcredit numeric(14,2) NOT NULL,
    saldoawal01 numeric(14,2) NOT NULL,
    saldoawal02 numeric(14,2) NOT NULL,
    saldoawal03 numeric(14,2) NOT NULL,
    saldoawal04 numeric(14,2) NOT NULL,
    saldoawal05 numeric(14,2) NOT NULL,
    saldoawal06 numeric(14,2) NOT NULL,
    saldo character(10) NOT NULL,
    bg01 numeric(14,2) NOT NULL,
    bg02 numeric(14,2) NOT NULL,
    bg03 numeric(14,2) NOT NULL,
    bg04 numeric(14,2) NOT NULL,
    bg05 numeric(14,2) NOT NULL,
    bg06 numeric(14,2) NOT NULL,
    bg07 numeric(14,2) NOT NULL,
    bg08 numeric(14,2) NOT NULL,
    bg09 numeric(14,2) NOT NULL,
    bg10 numeric(14,2) NOT NULL,
    bg11 numeric(14,2) NOT NULL,
    bg12 numeric(14,2) NOT NULL,
    judulac money NOT NULL
);
 #   DROP TABLE public."TBL_cartofacc";
       public         postgres    false            8           1259    28583 
   TBL_dpaket    TABLE     ?  CREATE TABLE public."TBL_dpaket" (
    paketid character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    jasars numeric(12,2) DEFAULT 0 NOT NULL,
    jasadr numeric(12,2) DEFAULT 0 NOT NULL,
    tarifrs numeric(18,0) DEFAULT 0 NOT NULL,
    tarifdroperasi numeric(18,0) DEFAULT 0 NOT NULL,
    tarifasdroperasi numeric(18,0) DEFAULT 0 NOT NULL,
    tarifdranestasi numeric(18,0) DEFAULT 0 NOT NULL,
    tarifdrasanestasi numeric(18,0) DEFAULT 0 NOT NULL,
    tarifasoperasi numeric(18,0) DEFAULT 0 NOT NULL,
    drpendamping numeric(18,0) DEFAULT 0 NOT NULL,
    paketkey character(15) DEFAULT ''::bpchar NOT NULL
);
     DROP TABLE public."TBL_dpaket";
       public         postgres    false            9           1259    35119    TBL_dpaketobat    TABLE     ?  CREATE TABLE public."TBL_dpaketobat" (
    paketid character(10) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,0) DEFAULT 0 NOT NULL,
    harga numeric(12,2) DEFAULT 0 NOT NULL,
    totalharga numeric(12,2) DEFAULT 0 NOT NULL,
    paketkey character(15) DEFAULT ''::bpchar NOT NULL
);
 $   DROP TABLE public."TBL_dpaketobat";
       public         postgres    false            D           1259    35248    TBL_formathms    TABLE        CREATE TABLE public."TBL_formathms" (
    regformat character(15) NOT NULL,
    rekmedformat character(15) NOT NULL,
    priceformat character(20) NOT NULL,
    totalformat character(20) NOT NULL,
    urutradiologi character(20) NOT NULL,
    printradiologi numeric(1,0) NOT NULL,
    rubahtarifradio numeric(1,0) NOT NULL,
    urutlaborat character(20) NOT NULL,
    printlaborat numeric(1,0) NOT NULL,
    rubahtariflab numeric(1,0) NOT NULL,
    penanggungjawablab character(30) NOT NULL,
    labkasir numeric(1,0) NOT NULL,
    labanak numeric(1,0) NOT NULL,
    labumuranak numeric(2,0) NOT NULL,
    urutbedah character(20) NOT NULL,
    printbedah numeric(1,0) NOT NULL,
    rubahtarifbedah numeric(1,0) NOT NULL,
    urutinap character(20) NOT NULL,
    printinap numeric(1,0) NOT NULL,
    rubahtarifinap numeric(1,0) NOT NULL,
    apoqty character(20) NOT NULL,
    apoprice character(20) NOT NULL,
    apototal character(20) NOT NULL,
    apoprint numeric(1,0) NOT NULL,
    apotransaksi numeric(1,0) NOT NULL,
    admpolip numeric(10,2) NOT NULL,
    admpolipsistem numeric(1,0) NOT NULL,
    admpolij numeric(19,2) NOT NULL,
    admpolijsistem numeric(1,0) NOT NULL,
    urutpoli character(20) NOT NULL,
    printpoli numeric(1,0) NOT NULL,
    rubahtarifpoli numeric(1,0) NOT NULL,
    poliautoprint numeric(1,0) NOT NULL,
    printkasir numeric(1,0) NOT NULL,
    aplikasigambar character(200) NOT NULL,
    filegambarbedah character(100) NOT NULL,
    filegambarradio character(100) NOT NULL,
    trubisnis numeric(1,0) NOT NULL,
    dospoli numeric(1,0) NOT NULL,
    vatdr character(10) NOT NULL,
    vatbeli character(10) NOT NULL,
    vatjual character(10) NOT NULL,
    reportpath character(200) NOT NULL,
    kasirradio numeric(1,0) NOT NULL,
    gunakanlcd numeric(1,0) NOT NULL,
    toleransijam character(8) NOT NULL,
    jamawal character(8) NOT NULL,
    sistempindah numeric(1,0) NOT NULL,
    jaminap numeric(2,0) NOT NULL,
    jaminapgratis numeric(2,0) NOT NULL,
    tombol numeric(1,0) NOT NULL,
    max_window numeric(1,0) NOT NULL,
    defagudang character(10) NOT NULL,
    apomargin numeric(6,2) NOT NULL,
    autorekmed numeric(1,0) NOT NULL,
    resepdrumum numeric(10,0) NOT NULL,
    resepdrsp numeric(10,0) NOT NULL,
    puyer numeric(10,0) NOT NULL,
    kapsul numeric(10,0) NOT NULL,
    jasamedis numeric(10,0) NOT NULL,
    sistemharga numeric(1,0) NOT NULL,
    apomarginj numeric(6,2) NOT NULL,
    apomarginb numeric(6,2) NOT NULL,
    insentifpoli numeric(8,0) NOT NULL,
    insentifbedah numeric(8,0) NOT NULL,
    insentiflab numeric(8,0) NOT NULL,
    insentifradio numeric(8,0) NOT NULL,
    insentifinap numeric(8,0) NOT NULL,
    insentifvk numeric(8,0) NOT NULL,
    acmodel numeric(1,0) NOT NULL,
    apowarning numeric(1,0) NOT NULL,
    tanggaldata date NOT NULL,
    gltype numeric(1,0) NOT NULL,
    showmember numeric(1,0) NOT NULL,
    depopoli character(10) DEFAULT ''::bpchar NOT NULL,
    depougd character(10) DEFAULT ''::bpchar NOT NULL,
    deporadio character(10) DEFAULT ''::bpchar NOT NULL,
    depolaborat character(10) DEFAULT ''::bpchar NOT NULL,
    lebarrm numeric(18,0) DEFAULT 0 NOT NULL,
    cetakjasa numeric(18,0) DEFAULT 0 NOT NULL,
    autoclose numeric(18,0) DEFAULT 0,
    kodeobatotomatis numeric(18,0) DEFAULT 0 NOT NULL,
    daftarugd numeric(18,0) DEFAULT 0 NOT NULL
);
 #   DROP TABLE public."TBL_formathms";
       public         postgres    false            _           1259    35638 
   TBL_hpaket    TABLE     $  CREATE TABLE public."TBL_hpaket" (
    paketid character(10) DEFAULT ''::bpchar NOT NULL,
    namapaket character(100) DEFAULT ''::bpchar NOT NULL,
    lamahari numeric(18,0) DEFAULT 0 NOT NULL,
    feepengirim numeric(18,0) DEFAULT 0 NOT NULL,
    uruttr numeric(18,0) DEFAULT 0 NOT NULL
);
     DROP TABLE public."TBL_hpaket";
       public         postgres    false            k           1259    35798    TBL_hreport    TABLE     ?   CREATE TABLE public."TBL_hreport" (
    reportcode character(5) NOT NULL,
    reportdesc character(40) NOT NULL,
    ifilter character(1) NOT NULL
);
 !   DROP TABLE public."TBL_hreport";
       public         postgres    false            s           1259    35876    TBL_kartukredit    TABLE     b  CREATE TABLE public."TBL_kartukredit" (
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    nocard character(20) DEFAULT ''::bpchar NOT NULL,
    nootorisasi character(20) DEFAULT ''::bpchar NOT NULL,
    tanggal date NOT NULL,
    jumlahbayar numeric(14,2) DEFAULT 0 NOT NULL,
    admpersen numeric(5,2) DEFAULT 0 NOT NULL,
    admrp numeric(14,2) DEFAULT 0 NOT NULL,
    totalcardrp numeric(18,2) DEFAULT 0 NOT NULL,
    kodebank character(3) NOT NULL,
    cardtype numeric(2,0) DEFAULT 1 NOT NULL,
    cardkey character(20) DEFAULT ''::bpchar NOT NULL,
    urut numeric(4,0) DEFAULT 0 NOT NULL
);
 %   DROP TABLE public."TBL_kartukredit";
       public         postgres    false            t           1259    35891    TBL_kartukredit1    TABLE     ?  CREATE TABLE public."TBL_kartukredit1" (
    nokwitansi character(16) NOT NULL,
    nocard character(20) NOT NULL,
    nootorisasi character(20) NOT NULL,
    tanggal date NOT NULL,
    jumlahbayar numeric(14,2) NOT NULL,
    admpersen numeric(5,2) NOT NULL,
    admrp numeric(14,2) NOT NULL,
    totalcardrp numeric(18,2) NOT NULL,
    kodebank character(3) NOT NULL,
    cardtype numeric(2,0) NOT NULL,
    cardkey character(20) NOT NULL,
    urut numeric(4,0) NOT NULL
);
 &   DROP TABLE public."TBL_kartukredit1";
       public         postgres    false            ?           1259    36539    TBL_posinap    TABLE        CREATE TABLE public."TBL_posinap" (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglpulang date NOT NULL,
    kamarrp numeric(14,2) DEFAULT 0 NOT NULL,
    autotr numeric(14,2) DEFAULT 0 NOT NULL,
    totalrawat numeric(14,2) DEFAULT 0 NOT NULL,
    disc numeric(6,2) DEFAULT 0 NOT NULL,
    discrp numeric(14,2) DEFAULT 0 NOT NULL,
    diskonby character(40) DEFAULT 0 NOT NULL,
    totaluangmuka numeric(14,2) DEFAULT 0 NOT NULL,
    admpersen numeric(5,2) DEFAULT 0 NOT NULL,
    admrp numeric(14,2) DEFAULT 0 NOT NULL,
    materai numeric(5,0) DEFAULT 0 NOT NULL,
    jaminpr numeric(6,2) DEFAULT 0 NOT NULL,
    totaljaminan numeric(14,2) DEFAULT 0 NOT NULL,
    totalnet numeric(14,2) DEFAULT 0 NOT NULL,
    yangharusdibayar numeric(14,2) DEFAULT 0 NOT NULL,
    selisih numeric(14,2) DEFAULT 0 NOT NULL,
    jenisbayar numeric(1,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    resetby character(14) DEFAULT ''::bpchar NOT NULL,
    resetdate date NOT NULL,
    resettime character(10) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    ket character(245) DEFAULT ''::bpchar NOT NULL,
    konpulang character(100) DEFAULT ''::bpchar NOT NULL,
    admselisihpr numeric(12,0) DEFAULT 0 NOT NULL,
    admtype numeric(12,0) DEFAULT 0 NOT NULL,
    admtunairp numeric(18,0) DEFAULT 0 NOT NULL,
    admtunaipr numeric(18,0) DEFAULT 0 NOT NULL,
    admselisihrp numeric(18,0) DEFAULT 0 NOT NULL,
    dibayaroleh character(100) DEFAULT ''::bpchar NOT NULL,
    admtype1 numeric(12,0) DEFAULT 0 NOT NULL,
    jpk numeric(18,0) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public."TBL_posinap";
       public         postgres    false            ?           1259    37537    TBl_TR    TABLE     ?   CREATE TABLE public."TBl_TR" (
    notr character(16) NOT NULL,
    "OSTATUS" character(1) NOT NULL,
    "OTYPE" character(3) NOT NULL
);
    DROP TABLE public."TBl_TR";
       public         postgres    false            ?            1259    26244    coa12    TABLE     ?   CREATE TABLE public.coa12 (
    accountno character(14) NOT NULL,
    acname character(61) NOT NULL,
    typename character(35) NOT NULL,
    actype character(5) NOT NULL,
    aclevel numeric(9,0) NOT NULL
);
    DROP TABLE public.coa12;
       public         postgres    false            ?            1259    26247    dtproperties    TABLE     @  CREATE TABLE public.dtproperties (
    id integer NOT NULL,
    objectid integer,
    property character varying(64) NOT NULL,
    value character varying(255) DEFAULT NULL::character varying,
    uvalue character varying(255) DEFAULT NULL::character varying,
    lvalue bytea,
    version integer DEFAULT 0 NOT NULL
);
     DROP TABLE public.dtproperties;
       public         postgres    false                       1259    28065    tbL_askespaketh    TABLE     5  CREATE TABLE public."tbL_askespaketh" (
    paketaskes character(10) NOT NULL,
    keterangan character(100) NOT NULL,
    askesrp numeric(18,0) NOT NULL,
    jamkesmas numeric(18,0) NOT NULL,
    kodepos character(5) NOT NULL,
    urut numeric(18,0) DEFAULT 0 NOT NULL,
    slc integer DEFAULT 0 NOT NULL
);
 %   DROP TABLE public."tbL_askespaketh";
       public         postgres    false            ?           1259    36201    tbl_OB    TABLE     A  CREATE TABLE public."tbl_OB" (
    kodeobat character(10) NOT NULL,
    namaobat character varying(120) NOT NULL,
    namageneric character varying(120) NOT NULL,
    pabrik character(10) NOT NULL,
    icgroup character(4) NOT NULL,
    golongan character(10) NOT NULL,
    jenis character(10) NOT NULL,
    groupharga character(10) NOT NULL,
    jenisobat character(10) NOT NULL,
    kemasan character(50) NOT NULL,
    satuan1 character(30) NOT NULL,
    satuan2 character(30) NOT NULL,
    faktorsat2 character(1) NOT NULL,
    satuan2qty numeric(18,0) NOT NULL,
    satuan3 character(30) NOT NULL,
    faktorsat3 character(10) NOT NULL,
    satuan3qty numeric(18,0) NOT NULL,
    hargabeli numeric(18,0) NOT NULL,
    hargabeliluar numeric(18,0) NOT NULL,
    hargabelippn numeric(18,0) NOT NULL,
    hargajual numeric(18,0) NOT NULL,
    hargajualrekanan numeric(18,0) NOT NULL,
    hargajualluar numeric(18,0) NOT NULL,
    hpp numeric(18,2) NOT NULL,
    minstock numeric(18,0) NOT NULL,
    maxstock numeric(18,0) NOT NULL,
    vendor_id character(10) NOT NULL,
    hargatype numeric(18,0) NOT NULL,
    discc character(5) NOT NULL,
    discp character(5) NOT NULL,
    notax money NOT NULL,
    depkesjenis numeric(18,0) NOT NULL,
    leadtime numeric(18,0) NOT NULL,
    reorder numeric(18,0) NOT NULL,
    jenisstock character(1) NOT NULL,
    useredit character varying(100) NOT NULL,
    tgledit date NOT NULL,
    userbuat character varying(100) NOT NULL,
    tglbuat date NOT NULL,
    hppawal numeric(18,0) NOT NULL,
    minimum money NOT NULL,
    kodepareto character(2) NOT NULL
);
    DROP TABLE public."tbl_OB";
       public         postgres    false            ?            1259    26399    tbl_ac_type    TABLE     x   CREATE TABLE public.tbl_ac_type (
    ackode character varying(2) NOT NULL,
    acgol character varying(30) NOT NULL
);
    DROP TABLE public.tbl_ac_type;
       public         postgres    false            ?            1259    26280    tbl_accostcentre    TABLE     o   CREATE TABLE public.tbl_accostcentre (
    depid character(10) NOT NULL,
    namadep character(50) NOT NULL
);
 $   DROP TABLE public.tbl_accostcentre;
       public         postgres    false            ?            1259    26283    tbl_accountinap    TABLE     ?   CREATE TABLE public.tbl_accountinap (
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    bangsalid character(10) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_accountinap;
       public         postgres    false            ?            1259    26289    tbl_accounting    TABLE     ?  CREATE TABLE public.tbl_accounting (
    accountno character(14) DEFAULT ''''::bpchar NOT NULL,
    acname character(80) DEFAULT ''::bpchar NOT NULL,
    actype character(5) DEFAULT ''::bpchar NOT NULL,
    aclevel numeric(1,0) DEFAULT 0 NOT NULL,
    kasbank money DEFAULT 0 NOT NULL,
    nodekey character(14) DEFAULT ''::bpchar NOT NULL,
    aktif money DEFAULT 0 NOT NULL,
    depid character(10) DEFAULT ''::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_accounting;
       public         postgres    false            ?            1259    26302    tbl_accounting_BK    TABLE     8  CREATE TABLE public."tbl_accounting_BK" (
    accountno character(14) NOT NULL,
    acname character(80) NOT NULL,
    actype character(5) NOT NULL,
    aclevel numeric(1,0) NOT NULL,
    kasbank bit(1) NOT NULL,
    nodekey character(14) NOT NULL,
    aktif bit(1) NOT NULL,
    depid character(10) NOT NULL
);
 '   DROP TABLE public."tbl_accounting_BK";
       public         postgres    false            ?            1259    26359    tbl_acsaldo    TABLE     ?  CREATE TABLE public.tbl_acsaldo (
    tahun character(4) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    saldo01 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo02 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo03 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo04 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo05 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo06 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo07 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo08 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo09 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo10 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo11 numeric(13,2) DEFAULT 0 NOT NULL,
    saldo12 numeric(13,2) DEFAULT 0 NOT NULL,
    bg01 numeric(13,2) DEFAULT 0 NOT NULL,
    bg02 numeric(13,2) DEFAULT 0 NOT NULL,
    bg03 numeric(13,2) DEFAULT 0 NOT NULL,
    bg04 numeric(13,2) DEFAULT 0 NOT NULL,
    bg05 numeric(13,2) DEFAULT 0 NOT NULL,
    bg06 numeric(13,2) DEFAULT 0 NOT NULL,
    bg07 numeric(13,2) DEFAULT 0 NOT NULL,
    bg08 numeric(13,2) DEFAULT 0 NOT NULL,
    bg09 numeric(13,2) DEFAULT 0 NOT NULL,
    bg10 numeric(13,2) DEFAULT 0 NOT NULL,
    bg11 numeric(13,2) DEFAULT 0 NOT NULL,
    bg12 numeric(13,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_acsaldo;
       public         postgres    false            ?            1259    26388 
   tbl_actype    TABLE     ?  CREATE TABLE public.tbl_actype (
    actype character(5) DEFAULT ''::bpchar NOT NULL,
    typename character(30) DEFAULT ''''::bpchar NOT NULL,
    jenisac character(1) DEFAULT ''::bpchar NOT NULL,
    keyid character(1) DEFAULT ''::bpchar NOT NULL,
    pls character varying(1) DEFAULT ''::character varying NOT NULL,
    neracatype character(1) DEFAULT ''::bpchar NOT NULL,
    ackode character(2) DEFAULT ''::bpchar NOT NULL,
    depid character varying(10) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_actype;
       public         postgres    false            ?            1259    26502    tbl_akdt    TABLE     O  CREATE TABLE public.tbl_akdt (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    totaltr numeric(18,0) DEFAULT 0 NOT NULL,
    jasarp numeric(18,0) DEFAULT 0 NOT NULL,
    pajak numeric(18,0) DEFAULT 0 NOT NULL,
    dibayarrp numeric(18,0) DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    tglpulang date,
    tgldibayar date,
    nokwitansi character(16) DEFAULT ''::bpchar,
    nihil money DEFAULT 0,
    diskonrp numeric(18,0) DEFAULT 0,
    tglalokasi date
);
    DROP TABLE public.tbl_akdt;
       public         postgres    false            ?            1259    26534    tbl_akdtdetail    TABLE     ?  CREATE TABLE public.tbl_akdtdetail (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    tgltransaksi date NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    totaltr numeric(12,2) DEFAULT 0 NOT NULL,
    totaljasa numeric(12,2) DEFAULT 0 NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    notr character(16) DEFAULT ''::bpchar NOT NULL,
    poskey character(20) DEFAULT ''::bpchar NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar,
    feepr numeric(18,0) DEFAULT 0,
    koreksi money DEFAULT 0
);
 "   DROP TABLE public.tbl_akdtdetail;
       public         postgres    false            ?            1259    26554 	   tbl_akdth    TABLE     ?   CREATE TABLE public.tbl_akdth (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    tgltr date,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    ok money DEFAULT 0,
    step numeric(18,0) DEFAULT 0
);
    DROP TABLE public.tbl_akdth;
       public         postgres    false            ?            1259    26564    tbl_akdtpay    TABLE     ?  CREATE TABLE public.tbl_akdtpay (
    "NOBAYAR" character(16) DEFAULT ''::bpchar NOT NULL,
    "KODOKTER" character(10) DEFAULT ''::bpchar NOT NULL,
    "TGLBAYAR" date,
    "PERIODE1" date,
    "PERIODE2" date,
    "ACCOUNTNO" character(14) DEFAULT ''::bpchar,
    "TOTALAKDT" numeric(18,0) DEFAULT 0,
    rspr numeric(18,0) DEFAULT 0,
    "UNTUKRS" numeric(18,0) DEFAULT 0,
    admpr numeric(18,0) DEFAULT 0,
    "ADM" numeric(18,0) DEFAULT 0,
    pajakpr numeric(18,0) DEFAULT 0,
    "PAJAK" numeric(18,0) DEFAULT 0,
    "KASBONRP" numeric(18,0) DEFAULT 0,
    potlain numeric(18,0) DEFAULT 0,
    totalnet numeric(18,0) DEFAULT 0,
    "USER_NAME" character(20) DEFAULT ''::bpchar NOT NULL,
    "DISERAHKANOLEH" character(40) DEFAULT ''::bpchar
);
    DROP TABLE public.tbl_akdtpay;
       public         postgres    false            ?            1259    26584    tbl_alkesmedik    TABLE     ?  CREATE TABLE public.tbl_alkesmedik (
    kodetarif character varying(10) DEFAULT NULL::character varying,
    kodeobat character varying(10) DEFAULT NULL::character varying,
    qty_pakai numeric(10,2) DEFAULT NULL::numeric,
    satuan character varying(10) DEFAULT NULL::character varying,
    hargasat numeric(14,2) DEFAULT NULL::numeric,
    totalharga numeric(14,2) DEFAULT NULL::numeric
);
 "   DROP TABLE public.tbl_alkesmedik;
       public         postgres    false            ?            1259    26593    tbl_alkespakai    TABLE     1  CREATE TABLE public.tbl_alkespakai (
    notr character(16) DEFAULT ''::bpchar NOT NULL,
    "TGLPAKAI" date NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(18,0) DEFAULT 0 NOT NULL,
    oldqty numeric(18,0) DEFAULT 0 NOT NULL,
    harga numeric(18,0) NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    trkey character(20) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_alkespakai;
       public         postgres    false            ?            1259    26645    tbl_alkestransaksi    TABLE     P  CREATE TABLE public.tbl_alkestransaksi (
    notr character(16) DEFAULT ''::bpchar NOT NULL,
    kodetarif character varying(50) DEFAULT ''::character varying NOT NULL,
    kodeobat character varying(50) DEFAULT ''::character varying NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character varying(50) DEFAULT ''::character varying NOT NULL,
    harga numeric(10,2) DEFAULT 0 NOT NULL,
    totalharga numeric(12,2) DEFAULT 0 NOT NULL,
    tgltransaksi date NOT NULL,
    gudang character varying(50) DEFAULT ''::character varying NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    notrkey character varying(50) DEFAULT ''::character varying NOT NULL,
    dibebankan money DEFAULT 0 NOT NULL,
    hpp numeric(18,2) DEFAULT NULL::numeric,
    coverrp numeric(18,2) DEFAULT 0 NOT NULL
);
 &   DROP TABLE public.tbl_alkestransaksi;
       public         postgres    false            ?            1259    26664    tbl_alkestransaksibk    TABLE     e  CREATE TABLE public.tbl_alkestransaksibk (
    notr character(16) NOT NULL,
    kodetarif character varying(50) NOT NULL,
    kodeobat character varying(50) NOT NULL,
    qty numeric(10,2) NOT NULL,
    oldqty numeric(10,2) NOT NULL,
    satuan character varying(50) NOT NULL,
    harga numeric(10,2) NOT NULL,
    totalharga numeric(12,2) NOT NULL,
    tgltransaksi date NOT NULL,
    gudang character varying(50) NOT NULL,
    posting bit(1) NOT NULL,
    notrkey character varying(50) NOT NULL,
    dibebankan bit(1) NOT NULL,
    hpp numeric(18,2) DEFAULT NULL::numeric,
    coverrp numeric(18,2) NOT NULL
);
 (   DROP TABLE public.tbl_alkestransaksibk;
       public         postgres    false            ?            1259    26668 	   tbl_almed    TABLE     ?  CREATE TABLE public.tbl_almed (
    kdperalatan character varying(8) NOT NULL,
    nama character varying(100) NOT NULL,
    jumlah numeric(10,0) NOT NULL,
    umur1 numeric(18,0) NOT NULL,
    umur2 numeric(18,0) NOT NULL,
    umur3 numeric(18,0) NOT NULL,
    kapasitas numeric(10,0) NOT NULL,
    kondisi numeric(10,0) NOT NULL,
    izin numeric(10,0) NOT NULL,
    kalibrasi numeric(10,0) NOT NULL
);
    DROP TABLE public.tbl_almed;
       public         postgres    false            ?            1259    26671    tbl_antrirj    TABLE     ?   CREATE TABLE public.tbl_antrirj (
    tglantri date,
    noantri numeric(18,0) DEFAULT NULL::numeric,
    kodokter character(10) DEFAULT NULL::bpchar,
    antrikey character(18) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_antrirj;
       public         postgres    false            ?            1259    26718 	   tbl_apoap    TABLE     ?  CREATE TABLE public.tbl_apoap (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(50) DEFAULT ''::bpchar NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    tglinvoice date NOT NULL,
    duedate date NOT NULL,
    totaltagihan numeric(14,2) DEFAULT 0 NOT NULL,
    totalbayar numeric(14,2) DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    keterangan character varying(50) DEFAULT ''::character varying NOT NULL,
    otomatis money DEFAULT 0 NOT NULL,
    term character(4) DEFAULT ''::bpchar NOT NULL,
    tukarfaktur money DEFAULT 0 NOT NULL,
    logis money DEFAULT 0 NOT NULL,
    otax numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_apoap;
       public         postgres    false            ?            1259    26757    tbl_apoap12    TABLE     ?  CREATE TABLE public.tbl_apoap12 (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(20) DEFAULT ''::bpchar NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    tglinvoice date NOT NULL,
    duedate date NOT NULL,
    totaltagihan numeric(14,2) DEFAULT 0 NOT NULL,
    totalbayar numeric(14,2) DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    keterangan character varying(50) DEFAULT ''::character varying NOT NULL,
    otomatis money DEFAULT 0 NOT NULL,
    term character(4) DEFAULT ''::bpchar NOT NULL,
    tukarfaktur money DEFAULT 0 NOT NULL,
    logis money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_apoap12;
       public         postgres    false            ?            1259    26795    tbl_apodbhp    TABLE     ?  CREATE TABLE public.tbl_apodbhp (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discrp numeric(14,2) DEFAULT 0 NOT NULL,
    price numeric(14,2) DEFAULT 0 NOT NULL,
    hna numeric(14,2) DEFAULT 0 NOT NULL,
    hpp numeric(14,2) DEFAULT 0 NOT NULL,
    ongkosracik numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    keyresep character(20) DEFAULT ''::bpchar NOT NULL,
    resepcounter numeric(10,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    atpakai character(30) DEFAULT ''::bpchar NOT NULL,
    racikurut numeric(3,0) DEFAULT 0 NOT NULL,
    selisih money DEFAULT 0 NOT NULL,
    hargadicover numeric(12,2) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    ppnrp numeric(12,2) DEFAULT 0 NOT NULL,
    ppntype numeric(1,0) DEFAULT 0 NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_apodbhp;
       public         postgres    false            ?            1259    26821    tbl_apodetresep    TABLE     m  CREATE TABLE public.tbl_apodetresep (
    keyresep character(20) DEFAULT ''::bpchar NOT NULL,
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    qtyr character(12) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discrp numeric(14,2) DEFAULT 0 NOT NULL,
    hpp numeric(14,2) DEFAULT 0 NOT NULL,
    price numeric(14,2) DEFAULT 0 NOT NULL,
    ongkosracik numeric(14,2) DEFAULT 0 NOT NULL,
    uangr numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    exp_date date NOT NULL,
    keyresepid character(23) NOT NULL,
    selisih money DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.tbl_apodetresep;
       public         postgres    false            ?            1259    26861    tbl_apodmohon    TABLE     ?  CREATE TABLE public.tbl_apodmohon (
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qtymohon numeric(14,2) DEFAULT 0 NOT NULL,
    harga numeric(14,2) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character(10) DEFAULT ''::bpchar NOT NULL,
    mohonkey character(20) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_apodmohon;
       public         postgres    false            ?            1259    26872    tbl_apodmohonlog    TABLE     ?  CREATE TABLE public.tbl_apodmohonlog (
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qtymohon numeric(14,2) DEFAULT 0 NOT NULL,
    harga numeric(14,2) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character(10) DEFAULT ''::bpchar NOT NULL,
    mohonkey character(20) DEFAULT ''::bpchar NOT NULL
);
 $   DROP TABLE public.tbl_apodmohonlog;
       public         postgres    false            ?            1259    26883    tbl_apodmove    TABLE     ?  CREATE TABLE public.tbl_apodmove (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qtymove numeric(14,2) DEFAULT 0 NOT NULL,
    harga numeric(14,2) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character varying(100) DEFAULT ''::character varying NOT NULL,
    mohonkey character(20) DEFAULT ''::bpchar NOT NULL,
    movekey character(20) DEFAULT ''::bpchar NOT NULL,
    oldqty numeric(18,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
     DROP TABLE public.tbl_apodmove;
       public         postgres    false            ?            1259    26898    tbl_apodmovelog    TABLE     ?  CREATE TABLE public.tbl_apodmovelog (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qtymove numeric(14,2) DEFAULT 0 NOT NULL,
    harga numeric(14,2) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character varying(100) DEFAULT ''::character varying NOT NULL,
    mohonkey character(20) DEFAULT ''::bpchar NOT NULL,
    movekey character(20) DEFAULT ''::bpchar NOT NULL,
    oldqty numeric(18,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.tbl_apodmovelog;
       public         postgres    false            ?            1259    26912    tbl_apodpakai    TABLE     ?  CREATE TABLE public.tbl_apodpakai (
    resepno character(16) NOT NULL,
    kodeobat character(10) NOT NULL,
    qty numeric(10,2) NOT NULL,
    oldqty numeric(10,2) NOT NULL,
    satuan character(10) NOT NULL,
    discount character(32) NOT NULL,
    discrp numeric(14,2) NOT NULL,
    price numeric(14,2) NOT NULL,
    hna numeric(14,2) NOT NULL,
    hpp numeric(14,2) NOT NULL,
    ongkosracik numeric(14,2) NOT NULL,
    totalrp numeric(14,2) NOT NULL,
    counter character(4) NOT NULL,
    keyresep character(20) NOT NULL,
    resepcounter numeric(10,0) NOT NULL,
    exp_date date,
    atpakai character(30) NOT NULL,
    racikurut numeric(3,0) NOT NULL
);
 !   DROP TABLE public.tbl_apodpakai;
       public         postgres    false            ?            1259    26926 
   tbl_apodpo    TABLE       CREATE TABLE public.tbl_apodpo (
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_po numeric(10,0) DEFAULT 0 NOT NULL,
    qty_terima numeric(10,0) DEFAULT 0 NOT NULL,
    qty_retur money DEFAULT 0 NOT NULL,
    price_po numeric(12,4) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(10) DEFAULT ''::bpchar NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    vatrp numeric(10,2) DEFAULT 0 NOT NULL,
    price_net numeric(12,4) DEFAULT 0 NOT NULL,
    total numeric(14,4) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    pokey character(20) DEFAULT ''::bpchar NOT NULL,
    rencana_no character(14) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_apodpo;
       public         postgres    false            ?            1259    26991    tbl_apodproduksi    TABLE     ?  CREATE TABLE public.tbl_apodproduksi (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qtymove numeric(14,2) DEFAULT 0 NOT NULL,
    harga numeric(14,2) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character varying(100) DEFAULT ''::character varying NOT NULL,
    mohonkey character(20) DEFAULT ''::bpchar NOT NULL,
    movekey character(20) DEFAULT ''::bpchar NOT NULL,
    oldqty numeric(18,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_apodproduksi;
       public         postgres    false            ?            1259    27050    tbl_apodresep    TABLE     ?  CREATE TABLE public.tbl_apodresep (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    namaobat character(50) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discrp numeric(14,2) DEFAULT 0 NOT NULL,
    price numeric(14,2) DEFAULT 0 NOT NULL,
    hna numeric(14,2) DEFAULT 0 NOT NULL,
    hpp numeric(14,2) DEFAULT 0 NOT NULL,
    ongkosracik numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    keyresep character(20) DEFAULT ''::bpchar NOT NULL,
    resepcounter numeric(10,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    atpakai character(30) DEFAULT ''::bpchar NOT NULL,
    racikurut numeric(3,0) DEFAULT 0 NOT NULL,
    selisih money DEFAULT 0 NOT NULL,
    hargadicover numeric(12,2) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    ppnrp numeric(12,2) DEFAULT 0 NOT NULL,
    ppntype numeric(1,0) DEFAULT 0 NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_apodresep;
       public         postgres    false            ?            1259    27098    tbl_apodresepbk    TABLE     ?  CREATE TABLE public.tbl_apodresepbk (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    namaobat character(50) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discrp numeric(14,2) DEFAULT 0 NOT NULL,
    price numeric(14,2) DEFAULT 0 NOT NULL,
    hna numeric(14,2) DEFAULT 0 NOT NULL,
    hpp numeric(14,2) DEFAULT 0 NOT NULL,
    ongkosracik numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    keyresep character(20) DEFAULT ''::bpchar NOT NULL,
    resepcounter numeric(10,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    atpakai character(30) DEFAULT ''::bpchar NOT NULL,
    racikurut numeric(3,0) DEFAULT 0 NOT NULL,
    selisih money DEFAULT 0 NOT NULL,
    hargadicover numeric(12,2) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    ppnrp numeric(12,2) DEFAULT 0 NOT NULL,
    ppntype numeric(1,0) DEFAULT 0 NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_apodresepbk;
       public         postgres    false            ?            1259    27139    tbl_apodreturbeli    TABLE     ?  CREATE TABLE public.tbl_apodreturbeli (
    retur_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_retur numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    price numeric(12,4) DEFAULT 0 NOT NULL,
    discount character(10) DEFAULT ''::bpchar NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,4) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    returkey character(20) DEFAULT ''::bpchar NOT NULL,
    terimakey character(20) DEFAULT ''::bpchar NOT NULL,
    tax money DEFAULT 0 NOT NULL,
    taxrp numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.tbl_apodreturbeli;
       public         postgres    false            ?            1259    27172    tbl_apodreturbelilog    TABLE     ?  CREATE TABLE public.tbl_apodreturbelilog (
    retur_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_retur numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    price numeric(12,4) DEFAULT 0 NOT NULL,
    discount character(10) DEFAULT ''::bpchar NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,4) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    returkey character(20) DEFAULT ''::bpchar NOT NULL,
    terimakey character(20) DEFAULT ''::bpchar NOT NULL,
    tax money DEFAULT 0 NOT NULL,
    taxrp numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 (   DROP TABLE public.tbl_apodreturbelilog;
       public         postgres    false            ?            1259    27207    tbl_apodreturjual    TABLE     "  CREATE TABLE public.tbl_apodreturjual (
    returno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qtyretur numeric(18,0) DEFAULT 0 NOT NULL,
    oldqty numeric(18,0) DEFAULT 0 NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    discount character(10) DEFAULT ''::bpchar NOT NULL,
    price numeric(18,0) DEFAULT 0 NOT NULL,
    ongkosracik numeric(18,0) DEFAULT 0 NOT NULL,
    exp_date date NOT NULL,
    totalrp numeric(18,0) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT ''::bpchar NOT NULL,
    keyresep character(20) DEFAULT ''::bpchar NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL,
    discountrp numeric(18,2) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    ppnrp numeric(18,2) DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.tbl_apodreturjual;
       public         postgres    false            ?            1259    27227    tbl_apodterima    TABLE       CREATE TABLE public.tbl_apodterima (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty_terima numeric(12,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    price numeric(12,2) DEFAULT 0 NOT NULL,
    discount character(32) DEFAULT ''::bpchar NOT NULL,
    discountrp numeric(14,2) DEFAULT 0 NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    vatrp numeric(14,2) DEFAULT 0 NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    counter character(4) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) DEFAULT 0 NOT NULL,
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    pocounter character(4) DEFAULT ''::bpchar NOT NULL,
    exp_date date NOT NULL,
    terimakey character(20) DEFAULT ''::bpchar NOT NULL,
    pokey character(20) DEFAULT ''::bpchar NOT NULL,
    hargajual numeric(18,0) DEFAULT 0 NOT NULL,
    batno character(15) DEFAULT ''::bpchar NOT NULL,
    hithpp numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_apodterima;
       public         postgres    false            ?            1259    27307    tbl_apohbhp    TABLE       CREATE TABLE public.tbl_apohbhp (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    antrino numeric(10,0) DEFAULT 0 NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    jenisjual numeric(1,0) DEFAULT 0 NOT NULL,
    jenispas numeric(1,0) DEFAULT 0 NOT NULL,
    pro character(200) DEFAULT ''::bpchar NOT NULL,
    tglresep date NOT NULL,
    jam character(8) DEFAULT ''::bpchar NOT NULL,
    jamdaftar character(8) DEFAULT ''::bpchar NOT NULL,
    jamserah character(8) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    jasalain numeric(12,2) DEFAULT 0 NOT NULL,
    jaminan money DEFAULT 0 NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    keluar character(1) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    selesai money DEFAULT 0 NOT NULL,
    ambil money DEFAULT 0 NOT NULL,
    typebayar numeric(1,0) DEFAULT 0 NOT NULL,
    kodepel character(10) DEFAULT ''::bpchar NOT NULL,
    drluar character(20) DEFAULT ''::bpchar NOT NULL,
    luar money DEFAULT 0 NOT NULL,
    nosp character(20) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    prosenjamin numeric(6,2) DEFAULT 0 NOT NULL,
    kontribusi numeric(5,2) DEFAULT 0 NOT NULL,
    kontribusirp numeric(12,2) DEFAULT 0 NOT NULL,
    useredit character(14) DEFAULT ''::bpchar NOT NULL,
    tgledit date NOT NULL,
    userbatal character(14) DEFAULT ''::bpchar NOT NULL,
    tglbatal date NOT NULL,
    jamedit character(10) DEFAULT ''::bpchar NOT NULL,
    jambatal character(10) DEFAULT ''::bpchar NOT NULL,
    batal money DEFAULT 0 NOT NULL,
    alasanbatal character(40) DEFAULT ''::bpchar NOT NULL,
    asal character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_apohbhp;
       public         postgres    false            ?            1259    27391 
   tbl_apohex    TABLE     '  CREATE TABLE public.tbl_apohex (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    antrino numeric(10,0) DEFAULT 0 NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    jenisjual numeric(1,0) DEFAULT 0 NOT NULL,
    jenispas numeric(1,0) DEFAULT 0 NOT NULL,
    pro character(200) DEFAULT ''::bpchar NOT NULL,
    tglresep date NOT NULL,
    jam character(8) DEFAULT ''::bpchar NOT NULL,
    jamdaftar character(8) DEFAULT ''''::bpchar NOT NULL,
    jamserah character(8) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    jasalain numeric(12,2) DEFAULT 0 NOT NULL,
    jaminan money DEFAULT 0 NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    keluar character(1) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    selesai money DEFAULT 0 NOT NULL,
    ambil money DEFAULT 0 NOT NULL,
    typebayar numeric(1,0) DEFAULT 0 NOT NULL,
    kodepel character(10) DEFAULT ''::bpchar NOT NULL,
    drluar character(20) DEFAULT ''::bpchar NOT NULL,
    luar money DEFAULT '$0.00'::money NOT NULL,
    nosp character(20) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    prosenjamin numeric(6,2) DEFAULT 0 NOT NULL,
    kontribusi numeric(5,2) DEFAULT 0 NOT NULL,
    kontribusirp numeric(12,2) DEFAULT 0 NOT NULL,
    useredit character(14) DEFAULT ''::bpchar NOT NULL,
    tgledit date NOT NULL,
    userbatal character(14) DEFAULT ''::bpchar NOT NULL,
    tglbatal date NOT NULL,
    jamedit character(10) DEFAULT ''::bpchar NOT NULL,
    jambatal character(10) DEFAULT ''::bpchar NOT NULL,
    batal money DEFAULT 0 NOT NULL,
    alasanbatal character(40) DEFAULT ''::bpchar NOT NULL,
    asal character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_apohex;
       public         postgres    false            ?            1259    27439    tbl_apohmohon    TABLE     G  CREATE TABLE public.tbl_apohmohon (
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    tglmohon date NOT NULL,
    dari character(10) DEFAULT ''::bpchar NOT NULL,
    ke character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character(200) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_apohmohon;
       public         postgres    false            ?            1259    27449    tbl_apohmohonlog    TABLE     I  CREATE TABLE public.tbl_apohmohonlog (
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    tglmohon date NOT NULL,
    dari character(10) DEFAULT ''::bpchar NOT NULL,
    ke character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character(50) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_apohmohonlog;
       public         postgres    false            ?            1259    27459    tbl_apohmove    TABLE     ?  CREATE TABLE public.tbl_apohmove (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    movedate date NOT NULL,
    dari character(10) DEFAULT ''::bpchar NOT NULL,
    ke character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character(50) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    diterima character(120) DEFAULT ''::bpchar NOT NULL
);
     DROP TABLE public.tbl_apohmove;
       public         postgres    false            ?            1259    27472    tbl_apohmovelog    TABLE     ?  CREATE TABLE public.tbl_apohmovelog (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    movedate date NOT NULL,
    dari character(10) DEFAULT ''::bpchar NOT NULL,
    ke character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character(50) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    diterima character(120) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_apohmovelog;
       public         postgres    false            ?            1259    27485    tbl_apohpakai    TABLE       CREATE TABLE public.tbl_apohpakai (
    resepno character(16) NOT NULL,
    antrino numeric(10,0) NOT NULL,
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    jenispas numeric(1,0) NOT NULL,
    pro character(50) NOT NULL,
    tglresep date NOT NULL,
    jamentry character(12) NOT NULL,
    kodokter character(10) NOT NULL,
    gudang character(10) NOT NULL,
    counter numeric(4,0) NOT NULL,
    bayar money NOT NULL,
    posting money NOT NULL,
    username character(14) NOT NULL,
    shipt numeric(1,0) NOT NULL
);
 !   DROP TABLE public.tbl_apohpakai;
       public         postgres    false            ?            1259    27488 
   tbl_apohpo    TABLE     ?  CREATE TABLE public.tbl_apohpo (
    po_no character(16) DEFAULT ''::bpchar NOT NULL,
    po_date date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    ship_via character(10) DEFAULT ''::bpchar NOT NULL,
    ship_date date NOT NULL,
    ref_no character(20) DEFAULT ''::bpchar NOT NULL,
    kurs character(10) DEFAULT ''::bpchar NOT NULL,
    kursrate numeric(8,2) DEFAULT 1 NOT NULL,
    counter integer DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    optype money DEFAULT 1 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    icgroup character(4) DEFAULT ''::bpchar NOT NULL,
    cntpo numeric(18,0) DEFAULT 0 NOT NULL,
    jenisbeli numeric(18,0) DEFAULT 0 NOT NULL,
    username character(10) DEFAULT ''::bpchar NOT NULL,
    dibuatoleh character(40) DEFAULT ''::bpchar NOT NULL,
    diajukanoleh character(40) DEFAULT ''::bpchar NOT NULL,
    disetujuioleh character(40) DEFAULT ''::bpchar NOT NULL,
    disetujuitgl date NOT NULL,
    disetujuijam character(10) DEFAULT ''::bpchar NOT NULL,
    ownerlevel numeric(18,0) DEFAULT 0 NOT NULL,
    ajukan money DEFAULT 0 NOT NULL,
    totalrp numeric(18,0) DEFAULT 0 NOT NULL,
    setuju money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_apohpo;
       public         postgres    false            ?            1259    27550    tbl_apohproduksi    TABLE     ?  CREATE TABLE public.tbl_apohproduksi (
    moveno character(16) DEFAULT ''::bpchar NOT NULL,
    mohonno character(16) DEFAULT ''::bpchar NOT NULL,
    "TGLPRODUKSI" date NOT NULL,
    "GUDANG" character(10) DEFAULT ''::bpchar NOT NULL,
    "QTYJADI" numeric(18,2) DEFAULT 0 NOT NULL,
    "KODEOBAT" character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character(50) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    diterima character(120) DEFAULT ''::bpchar NOT NULL,
    "HNA" numeric(18,2) DEFAULT 0 NOT NULL,
    hnappn numeric(18,2) DEFAULT 0 NOT NULL,
    "HPP" numeric(18,2) DEFAULT 0 NOT NULL,
    "OLDQTY" numeric(18,2) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_apohproduksi;
       public         postgres    false            ?            1259    27568    tbl_apohresep    TABLE     F  CREATE TABLE public.tbl_apohresep (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    antrino numeric(10,0) DEFAULT 0 NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    jenisjual numeric(1,0) DEFAULT 0 NOT NULL,
    jenispas numeric(1,0) DEFAULT 0 NOT NULL,
    pro character(200) DEFAULT ''::bpchar NOT NULL,
    tglresep date NOT NULL,
    jam character(8) DEFAULT ''::bpchar NOT NULL,
    jamdaftar character(8) DEFAULT ''::bpchar NOT NULL,
    jamserah character(8) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    jasalain numeric(12,2) DEFAULT 0 NOT NULL,
    jaminan money DEFAULT 0 NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    keluar character(1) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    selesai money DEFAULT 0 NOT NULL,
    ambil money DEFAULT 0 NOT NULL,
    typebayar numeric(1,0) DEFAULT 0 NOT NULL,
    kodepel character(10) DEFAULT ''::bpchar NOT NULL,
    drluar character(20) DEFAULT ''::bpchar NOT NULL,
    luar money DEFAULT 0 NOT NULL,
    nosp character(20) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    prosenjamin numeric(6,2) DEFAULT 0 NOT NULL,
    kontribusi numeric(5,2) DEFAULT 0 NOT NULL,
    kontribusirp numeric(12,2) DEFAULT 0 NOT NULL,
    useredit character(14) DEFAULT ''::bpchar NOT NULL,
    tgledit date NOT NULL,
    userbatal character(14) DEFAULT ''::bpchar NOT NULL,
    tglbatal date NOT NULL,
    jamedit character(10) DEFAULT ''::bpchar NOT NULL,
    jambatal character(10) DEFAULT ''::bpchar NOT NULL,
    batal money DEFAULT 0 NOT NULL,
    alasanbatal character(40) DEFAULT ''::bpchar NOT NULL,
    pajak money DEFAULT 0 NOT NULL,
    fakturpajak character(20) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_apohresep;
       public         postgres    false            ?            1259    27617    tbl_apohreturbeli    TABLE     ?  CREATE TABLE public.tbl_apohreturbeli (
    retur_no character(16) DEFAULT ''::bpchar NOT NULL,
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    retur_date date,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(20) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.tbl_apohreturbeli;
       public         postgres    false            ?            1259    27645    tbl_apohreturjual    TABLE     ?  CREATE TABLE public.tbl_apohreturjual (
    returno character(16) DEFAULT ''::bpchar NOT NULL,
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglretur date NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(18,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    prosen numeric(18,0) DEFAULT 0 NOT NULL,
    totalnet numeric(18,0) DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL
);
 %   DROP TABLE public.tbl_apohreturjual;
       public         postgres    false            ?            1259    27660    tbl_apohterima    TABLE     ?  CREATE TABLE public.tbl_apohterima (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    terima_date date NOT NULL,
    due_date date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(50) DEFAULT ''::bpchar NOT NULL,
    sj_no character(20) DEFAULT ''::bpchar NOT NULL,
    term character(4) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    kurs character(10) DEFAULT ''::bpchar NOT NULL,
    kursrate numeric(8,2) DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    cntterima numeric(4,0) DEFAULT 0 NOT NULL,
    luar money DEFAULT 0 NOT NULL,
    diskontotal numeric(18,0) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    vatrp numeric(18,0) DEFAULT 0 NOT NULL,
    jenisbeli numeric(18,0) DEFAULT 0 NOT NULL,
    tgltukar date NOT NULL,
    tukar money DEFAULT 0 NOT NULL,
    rbayar date NOT NULL,
    materai numeric(18,0) DEFAULT 0 NOT NULL,
    ongkir numeric(18,0) DEFAULT 0 NOT NULL,
    bkemasan numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_apohterima;
       public         postgres    false            ?            1259    27711    tbl_apohterima12    TABLE     Y  CREATE TABLE public.tbl_apohterima12 (
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    terima_date date NOT NULL,
    due_date date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(20) DEFAULT ''::bpchar NOT NULL,
    sj_no character(20) DEFAULT ''::bpchar NOT NULL,
    term character(4) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    kurs character(10) DEFAULT ''::bpchar NOT NULL,
    kursrate numeric(8,2) DEFAULT 0 NOT NULL,
    counter numeric(4,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    cntterima numeric(4,0) DEFAULT 0 NOT NULL,
    luar money DEFAULT 0 NOT NULL,
    diskontotal numeric(18,0) DEFAULT 0 NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    vatrp numeric(18,0) DEFAULT 0 NOT NULL,
    jenisbeli numeric(18,0) DEFAULT 0 NOT NULL,
    tgltukar date NOT NULL,
    tukar money DEFAULT 0 NOT NULL,
    rbayar date NOT NULL,
    materai numeric(18,0) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_apohterima12;
       public         postgres    false            ?            1259    27766    tbl_apojasa    TABLE     ?  CREATE TABLE public.tbl_apojasa (
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    tglresep date NOT NULL,
    qtyembal numeric(10,0) DEFAULT 0 NOT NULL,
    hargaembal numeric(12,2) DEFAULT 0 NOT NULL,
    totalembal numeric(12,2) DEFAULT 0 NOT NULL,
    qtykapsul numeric(12,2) DEFAULT 0 NOT NULL,
    hargakapsul numeric(12,2) DEFAULT 0 NOT NULL,
    totalkapsul numeric(12,2) DEFAULT 0 NOT NULL,
    jasaresep numeric(12,2) DEFAULT 0 NOT NULL,
    jasalain numeric(12,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_apojasa;
       public         postgres    false            ?            1259    27778    tbl_apokurs    TABLE     f   CREATE TABLE public.tbl_apokurs (
    kurs character(10) NOT NULL,
    rate numeric(10,2) NOT NULL
);
    DROP TABLE public.tbl_apokurs;
       public         postgres    false                        1259    27781    tbl_apomargin    TABLE     ?   CREATE TABLE public.tbl_apomargin (
    kelas character(1) NOT NULL,
    keterangan character(30) NOT NULL,
    margin1 numeric(6,2) NOT NULL,
    margin2 numeric(6,2) NOT NULL
);
 !   DROP TABLE public.tbl_apomargin;
       public         postgres    false                       1259    27784    tbl_apomims    TABLE       CREATE TABLE public.tbl_apomims (
    kodemims character(10) NOT NULL,
    genericname character(40) NOT NULL,
    komposisi character(100) NOT NULL,
    indikasi character(100) NOT NULL,
    kontraindikasi character(100) NOT NULL,
    interaksi character(100) NOT NULL
);
    DROP TABLE public.tbl_apomims;
       public         postgres    false                       1259    27789    tbl_apoobat    TABLE     ?  CREATE TABLE public.tbl_apoobat (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    namaobat character varying(120) DEFAULT ''::character varying NOT NULL,
    namageneric character varying(120) DEFAULT ''::character varying NOT NULL,
    pabrik character(10) DEFAULT ''::bpchar NOT NULL,
    icgroup character(4) DEFAULT ''::bpchar NOT NULL,
    golongan character(10) DEFAULT ''::bpchar NOT NULL,
    jenis character(10) DEFAULT ''::bpchar NOT NULL,
    groupharga character(10) DEFAULT ''::bpchar NOT NULL,
    jenisobat character(10) DEFAULT ''::bpchar NOT NULL,
    kemasan character(50) DEFAULT ''::bpchar NOT NULL,
    satuan1 character(30) DEFAULT ''::bpchar NOT NULL,
    satuan2 character(30) DEFAULT ''::bpchar NOT NULL,
    faktorsat2 character(1) DEFAULT ''::bpchar NOT NULL,
    satuan2qty numeric(18,0) DEFAULT 0 NOT NULL,
    satuan3 character(30) DEFAULT ''::bpchar NOT NULL,
    faktorsat3 character(10) DEFAULT ''::bpchar NOT NULL,
    satuan3qty numeric(18,0) DEFAULT 0 NOT NULL,
    hargabeli numeric(18,0) DEFAULT 0 NOT NULL,
    hargabeliluar numeric(18,0) DEFAULT 0 NOT NULL,
    hargabelippn numeric(18,0) DEFAULT 0 NOT NULL,
    hargajual numeric(18,0) DEFAULT 0 NOT NULL,
    hargajualrekanan numeric(18,0) DEFAULT 0 NOT NULL,
    hargajualluar numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL,
    minstock numeric(18,0) DEFAULT 0 NOT NULL,
    maxstock numeric(18,0) DEFAULT 0 NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    hargatype numeric(18,0) DEFAULT 0 NOT NULL,
    discc character(5) DEFAULT ''::bpchar NOT NULL,
    discp character(5) DEFAULT ''::bpchar NOT NULL,
    notax money DEFAULT 0 NOT NULL,
    depkesjenis numeric(18,0) DEFAULT 0 NOT NULL,
    leadtime numeric(18,0) DEFAULT 0 NOT NULL,
    reorder numeric(18,0) DEFAULT 0 NOT NULL,
    jenisstock character(1) DEFAULT ''::bpchar NOT NULL,
    useredit character varying(100) DEFAULT ''::character varying NOT NULL,
    tgledit date NOT NULL,
    userbuat character varying(100) DEFAULT ''::character varying NOT NULL,
    tglbuat date NOT NULL,
    hppawal numeric(18,0) DEFAULT 0 NOT NULL,
    minimum money DEFAULT 0 NOT NULL,
    kodepareto character(2) DEFAULT ''::bpchar NOT NULL,
    hppfinal numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_apoobat;
       public         postgres    false                       1259    27838    tbl_apopareto    TABLE     ?   CREATE TABLE public.tbl_apopareto (
    kodepareto character(2) DEFAULT ''::bpchar,
    keterangan character(30) DEFAULT ''::bpchar,
    satuan character(10) DEFAULT ''::bpchar
);
 !   DROP TABLE public.tbl_apopareto;
       public         postgres    false                       1259    27866    tbl_apoposting    TABLE       CREATE TABLE public.tbl_apoposting (
    resepno character(16) DEFAULT ''''::bpchar NOT NULL,
    tglresep date NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    namapas character(50) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    posdebet numeric(14,2) DEFAULT 0 NOT NULL,
    poscredit numeric(14,2) DEFAULT 0 NOT NULL,
    dicoverrp numeric(14,2) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    keyresep character(16) DEFAULT ''::bpchar NOT NULL,
    langsung money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    kodepel character(10) DEFAULT ''::bpchar NOT NULL,
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    jpk numeric(18,0) DEFAULT 0 NOT NULL,
    kirimdata money DEFAULT 0 NOT NULL,
    diskonrs numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_apoposting;
       public         postgres    false                       1259    27891    tbl_aporesepdr    TABLE     ?  CREATE TABLE public.tbl_aporesepdr (
    noreg character(12) NOT NULL,
    kodeobat character(10) NOT NULL,
    qty numeric(10,2) NOT NULL,
    oldqty numeric(10,2) NOT NULL,
    satuan character(10) NOT NULL,
    discount character(32) NOT NULL,
    discrp numeric(14,2) NOT NULL,
    price numeric(14,2) NOT NULL,
    totalrp numeric(14,2) NOT NULL,
    counter character(4) NOT NULL,
    keyresep character(16) NOT NULL,
    resepcount numeric(10,0) NOT NULL
);
 "   DROP TABLE public.tbl_aporesepdr;
       public         postgres    false                       1259    27894    tbl_aporesepdrd    TABLE     ?  CREATE TABLE public.tbl_aporesepdrd (
    noreg character(12) NOT NULL,
    kodeobat character(10) NOT NULL,
    qty numeric(10,2) NOT NULL,
    oldqty numeric(10,2) NOT NULL,
    satuan character(10) NOT NULL,
    discount character(32) NOT NULL,
    discrp numeric(14,2) NOT NULL,
    price numeric(14,2) NOT NULL,
    totalrp numeric(14,2) NOT NULL,
    counter character(4) NOT NULL,
    keyresep character(16) NOT NULL,
    resepcount numeric(10,0) NOT NULL
);
 #   DROP TABLE public.tbl_aporesepdrd;
       public         postgres    false                       1259    27897    tbl_aposesuai    TABLE     4  CREATE TABLE public.tbl_aposesuai (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    tglso date NOT NULL,
    saldo numeric(10,0) DEFAULT 0 NOT NULL,
    hasilso numeric(8,0) DEFAULT 0 NOT NULL,
    sesuai numeric(10,0) DEFAULT 0 NOT NULL,
    kogudang character(30) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT NULL::bpchar,
    tglentry date,
    jamentry character(10) DEFAULT NULL::bpchar,
    hna numeric(18,2) DEFAULT 0 NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_aposesuai;
       public         postgres    false            	           1259    27933    tbl_aposetup    TABLE     ?  CREATE TABLE public.tbl_aposetup (
    apocode character(10) DEFAULT ''::bpchar NOT NULL,
    aponame character(40) DEFAULT ''::bpchar NOT NULL,
    apogroup character(20) DEFAULT ''::bpchar NOT NULL,
    profitp numeric(6,2) DEFAULT 0 NOT NULL,
    profitj numeric(6,2) DEFAULT 0 NOT NULL,
    darirp numeric(18,0) DEFAULT 0 NOT NULL,
    sampairp numeric(18,0) DEFAULT 0 NOT NULL,
    flak money DEFAULT 0 NOT NULL
);
     DROP TABLE public.tbl_aposetup;
       public         postgres    false            
           1259    27946    tbl_aposhipping    TABLE       CREATE TABLE public.tbl_aposhipping (
    shipingcode character(10) NOT NULL,
    namaexpedisi character(40) NOT NULL,
    alamat1 character(40) NOT NULL,
    alamat2 character(40) NOT NULL,
    phone character(40) NOT NULL,
    contact character(40) NOT NULL
);
 #   DROP TABLE public.tbl_aposhipping;
       public         postgres    false                       1259    27949 	   tbl_aposo    TABLE     h  CREATE TABLE public.tbl_aposo (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    tanggalso date,
    saldoakhir numeric(18,0) DEFAULT 0 NOT NULL,
    hasilso numeric(18,0) DEFAULT 0 NOT NULL,
    sesuai numeric(18,0) DEFAULT 0 NOT NULL,
    username character(20) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_aposo;
       public         postgres    false                       1259    27958    tbl_apostock    TABLE     n  CREATE TABLE public.tbl_apostock (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    saldoawal numeric(10,2) DEFAULT 0 NOT NULL,
    terima numeric(10,2) DEFAULT 0 NOT NULL,
    keluar numeric(10,2) DEFAULT 0 NOT NULL,
    hasilso numeric(10,2) DEFAULT 0 NOT NULL,
    sesuai numeric(10,2) DEFAULT 0 NOT NULL,
    saldoakhir numeric(10,2) DEFAULT 0 NOT NULL,
    tglso date NOT NULL,
    periodedate date NOT NULL,
    awaltemp numeric(10,2) DEFAULT 0 NOT NULL,
    terimatemp numeric(10,2) DEFAULT 0 NOT NULL,
    keluartemp numeric(10,2) DEFAULT 0 NOT NULL,
    akhirtemp numeric(10,2) DEFAULT 0 NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL,
    tidakterpakai money DEFAULT 0 NOT NULL,
    kogudang character(20) DEFAULT ''::bpchar NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL,
    maksimumstock numeric(18,0) DEFAULT 0 NOT NULL,
    minimumstock numeric(18,0) DEFAULT 0 NOT NULL,
    jual numeric(18,0) DEFAULT 0 NOT NULL,
    lead1 date NOT NULL,
    lead2 date NOT NULL,
    lead numeric(18,0) DEFAULT 0 NOT NULL,
    lasttr date NOT NULL
);
     DROP TABLE public.tbl_apostock;
       public         postgres    false                       1259    27990    tbl_apostock1    TABLE     ?  CREATE TABLE public.tbl_apostock1 (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    exp_date date NOT NULL,
    awal numeric(18,0) DEFAULT 0 NOT NULL,
    terima numeric(18,0) DEFAULT 0 NOT NULL,
    keluar numeric(18,0) DEFAULT 0 NOT NULL,
    akhir numeric(18,0) DEFAULT 0 NOT NULL,
    stockperiode date NOT NULL,
    habis money DEFAULT 0 NOT NULL,
    stockkey character(30) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_apostock1;
       public         postgres    false                       1259    28027    tbl_apovendor    TABLE     ~  CREATE TABLE public.tbl_apovendor (
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    vendor_name character(40) DEFAULT ''::bpchar NOT NULL,
    alamat1 character(40) DEFAULT ''::bpchar NOT NULL,
    alamat2 character(40) DEFAULT ''::bpchar NOT NULL,
    alamat3 character(40) DEFAULT ''::bpchar NOT NULL,
    phone character(30) DEFAULT ''::bpchar NOT NULL,
    fax character(30) DEFAULT ''::bpchar NOT NULL,
    email character(30) DEFAULT ''::bpchar NOT NULL,
    contact character(40) DEFAULT ''::bpchar NOT NULL,
    saldopiutang numeric(12,2) DEFAULT 0 NOT NULL,
    pertanggal date NOT NULL,
    tgltmp date NOT NULL,
    saldoawaltmp numeric(14,2) DEFAULT 0 NOT NULL,
    hutangtmp numeric(14,2) DEFAULT 0 NOT NULL,
    bayartmp numeric(14,2) DEFAULT 0 NOT NULL,
    saldoakhirtmp numeric(14,2) DEFAULT 0 NOT NULL,
    ap_account character(14) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_apovendor;
       public         postgres    false                       1259    28047    tbl_apovendorlink    TABLE     u   CREATE TABLE public.tbl_apovendorlink (
    vendor_id character(10) NOT NULL,
    kodeobat character(10) NOT NULL
);
 %   DROP TABLE public.tbl_apovendorlink;
       public         postgres    false                       1259    28050    tbl_askesgol    TABLE       CREATE TABLE public.tbl_askesgol (
    askesgol character varying(3) NOT NULL,
    namagol character varying(50) DEFAULT NULL::character varying,
    askeskelas character varying(1) DEFAULT NULL::character varying,
    tarif numeric(18,0) DEFAULT NULL::numeric
);
     DROP TABLE public.tbl_askesgol;
       public         postgres    false                       1259    28056    tbl_askesnotarif    TABLE     ?   CREATE TABLE public.tbl_askesnotarif (
    kodetarif character varying(16) DEFAULT NULL::character varying,
    tindakan character varying(100) DEFAULT NULL::character varying,
    kodepos character varying(5) DEFAULT NULL::character varying
);
 $   DROP TABLE public.tbl_askesnotarif;
       public         postgres    false                       1259    28062    tbl_askespaketd    TABLE     ?   CREATE TABLE public.tbl_askespaketd (
    paketaskes character(10) NOT NULL,
    kodetarif character(10) NOT NULL,
    askeskey character(15) NOT NULL
);
 #   DROP TABLE public.tbl_askespaketd;
       public         postgres    false                       1259    28070    tbl_bangsal    TABLE     -  CREATE TABLE public.tbl_bangsal (
    bangsalid character(10) DEFAULT ''::bpchar NOT NULL,
    nama_bangsal character varying(20) DEFAULT ''::character varying NOT NULL,
    lokasi character varying(20) DEFAULT ''::character varying NOT NULL,
    depkesid character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_bangsal;
       public         postgres    false                       1259    28080    tbl_bank    TABLE     j   CREATE TABLE public.tbl_bank (
    kodebank character(3) NOT NULL,
    namabank character(30) NOT NULL
);
    DROP TABLE public.tbl_bank;
       public         postgres    false                       1259    28085    tbl_barangtitip    TABLE     ?  CREATE TABLE public.tbl_barangtitip (
    kodefix character(10) DEFAULT ''::bpchar NOT NULL,
    serialno character(25) DEFAULT ''::bpchar NOT NULL,
    namafix character(100) DEFAULT ''::bpchar NOT NULL,
    fixid character(5) DEFAULT ''::bpchar NOT NULL,
    tglaku date NOT NULL,
    tglpakai date NOT NULL,
    jumlah numeric(18,0) DEFAULT 0 NOT NULL,
    lokasi character(40) DEFAULT ''::bpchar NOT NULL,
    pemakai character(30) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_barangtitip;
       public         postgres    false                       1259    28095    tbl_bayilahir    TABLE       CREATE TABLE public.tbl_bayilahir (
    keyrekmed character(16) DEFAULT ''::bpchar NOT NULL,
    penolong character(10) DEFAULT ''::bpchar NOT NULL,
    persalinan character varying(200) DEFAULT ''::character varying NOT NULL,
    rekmedbayi character(10) DEFAULT ''::bpchar NOT NULL,
    rekmedibu character(10) DEFAULT ''::bpchar NOT NULL,
    bb numeric(18,2) DEFAULT 0 NOT NULL,
    tb numeric(18,2) DEFAULT 0 NOT NULL,
    nmayah character varying(200) DEFAULT ''::character varying NOT NULL,
    tanggal date NOT NULL
);
 !   DROP TABLE public.tbl_bayilahir;
       public         postgres    false                       1259    28108    tbl_bedahobat    TABLE     P  CREATE TABLE public.tbl_bedahobat (
    nooperasi character(16) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(12,2) DEFAULT 0 NOT NULL,
    oldqty numeric(12,2) DEFAULT 0 NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    harga numeric(12,2) DEFAULT 0 NOT NULL,
    totalharga numeric(12,2) DEFAULT 0 NOT NULL,
    keyoperasi character(20) DEFAULT ''::bpchar NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_bedahobat;
       public         postgres    false                       1259    28122    tbl_bedahobath    TABLE     y  CREATE TABLE public.tbl_bedahobath (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tgloperasi date NOT NULL,
    urutbk numeric(3,0) DEFAULT 0 NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    nooperasi character(16) DEFAULT ''::bpchar NOT NULL,
    coverrp numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_bedahobath;
       public         postgres    false                       1259    28136    tbl_catatan    TABLE        CREATE TABLE public.tbl_catatan (
    c_id character(16) DEFAULT ''::bpchar NOT NULL,
    note1 character(80) DEFAULT ''::bpchar NOT NULL,
    note2 character(80) DEFAULT ''::bpchar NOT NULL,
    note3 character(80) DEFAULT ''::bpchar NOT NULL,
    note4 character(80) DEFAULT ''::bpchar NOT NULL,
    note5 character(80) DEFAULT ''::bpchar NOT NULL,
    note6 character(80) DEFAULT ''::bpchar NOT NULL,
    note7 character(80) DEFAULT ''::bpchar NOT NULL,
    note8 character(80) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_catatan;
       public         postgres    false                       1259    28153    tbl_dap    TABLE       CREATE TABLE public.tbl_dap (
    ap_id character(16) DEFAULT ''::bpchar NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    terima_no character(16) DEFAULT ''::bpchar NOT NULL,
    invoice_no character(50) DEFAULT ''::bpchar NOT NULL,
    notukar character(14) DEFAULT ''::bpchar NOT NULL,
    tglinvoice date NOT NULL,
    due_date date NOT NULL,
    totalhutang numeric(18,0) DEFAULT 0 NOT NULL,
    dibayar numeric(18,0) DEFAULT 0 NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    keyid character(50) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_dap;
       public         postgres    false                       1259    28165 
   tbl_darirj    TABLE     F  CREATE TABLE public.tbl_darirj (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    noreginap character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglmasuk date NOT NULL,
    jam character(10) NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    koderuang character(10) DEFAULT ''::bpchar NOT NULL,
    kodekamar character(12) DEFAULT ''::bpchar NOT NULL,
    noinap character(16) DEFAULT ''::bpchar NOT NULL,
    okbiaya numeric(1,0) DEFAULT 0 NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_darirj;
       public         postgres    false                       1259    28179 
   tbl_dbayar    TABLE     3  CREATE TABLE public.tbl_dbayar (
    bayarno character(16) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    keterangan character(500) DEFAULT ''::bpchar NOT NULL,
    jumlah numeric(14,2) DEFAULT 0 NOT NULL,
    bayarkey character(20) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_dbayar;
       public         postgres    false                        1259    28190 
   tbl_dbedah    TABLE     ?  CREATE TABLE public.tbl_dbedah (
    nooperasi character(16) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    jenis numeric(1,0) DEFAULT 0 NOT NULL,
    tarifrs numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdroperasi numeric(12,2) DEFAULT 0 NOT NULL,
    tarifasdroperasi numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdranestasi numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdrasanestasi numeric(12,2) DEFAULT 0 NOT NULL,
    tarifasoperasi numeric(12,2) DEFAULT 0 NOT NULL,
    droperasi2 numeric(12,2) DEFAULT 0 NOT NULL,
    dranakrp numeric(12,2) DEFAULT 0 NOT NULL,
    old1 numeric(12,2) DEFAULT 0 NOT NULL,
    old2 numeric(12,2) DEFAULT 0 NOT NULL,
    old3 numeric(12,2) DEFAULT 0 NOT NULL,
    old4 numeric(12,2) DEFAULT 0 NOT NULL,
    old5 numeric(12,2) DEFAULT 0 NOT NULL,
    old6 numeric(12,2) DEFAULT 0 NOT NULL,
    old7 numeric(10,2) DEFAULT 0 NOT NULL,
    old8 numeric(10,2) DEFAULT 0 NOT NULL,
    persen numeric(6,2) DEFAULT 0 NOT NULL,
    bedahkey character(20) DEFAULT ''::bpchar NOT NULL,
    jpk numeric(12,2) DEFAULT 0 NOT NULL,
    coverrp numeric(12,2) DEFAULT 0 NOT NULL,
    penyulit numeric(1,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_dbedah;
       public         postgres    false            !           1259    28217    tbl_dbedahdetail    TABLE     ?  CREATE TABLE public.tbl_dbedahdetail (
    nooperasi character(16) DEFAULT ''::bpchar NOT NULL,
    bedahkey character(20) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    bedahidkey character(12) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    tarifrp numeric(12,2) DEFAULT 0 NOT NULL,
    feedr numeric(6,2) DEFAULT 0 NOT NULL,
    feedrrp numeric(12,2) DEFAULT 0 NOT NULL,
    diskon numeric(12,2) DEFAULT 0 NOT NULL,
    diskonrp numeric(12,2) DEFAULT 0 NOT NULL,
    coverrp numeric(12,2) DEFAULT 0 NOT NULL,
    operasikey character(23) DEFAULT ''::bpchar NOT NULL,
    ok money DEFAULT '$0.00'::money NOT NULL,
    cito numeric(10,2) DEFAULT 0 NOT NULL,
    citorp numeric(12,2) DEFAULT 0 NOT NULL,
    basetarif numeric(12,2) DEFAULT 0 NOT NULL,
    citook money DEFAULT 0 NOT NULL,
    qtyjam numeric(10,2) DEFAULT 0 NOT NULL,
    penyulitrp numeric(12,2) DEFAULT 0 NOT NULL,
    jpk numeric(18,0) DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_dbedahdetail;
       public         postgres    false            "           1259    28243    tbl_dbedahdiagnosa    TABLE     ?  CREATE TABLE public.tbl_dbedahdiagnosa (
    bedahkey character(20) NOT NULL,
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    tgloperasi date NOT NULL,
    kodetarif character(10) NOT NULL,
    dokter1 character(10) NOT NULL,
    dokter2 character(10) NOT NULL,
    dokter3 character(10) NOT NULL,
    dokter4 character(10) NOT NULL,
    diagnosaawal text NOT NULL,
    diagnosaakhir text NOT NULL,
    cnt numeric(4,0) NOT NULL
);
 &   DROP TABLE public.tbl_dbedahdiagnosa;
       public         postgres    false            #           1259    28249    tbl_dbedahphoto    TABLE     ?   CREATE TABLE public.tbl_dbedahphoto (
    bedahkey character(20) NOT NULL,
    ketfoto character(40) NOT NULL,
    lokasiphoto character(100) NOT NULL,
    namaphoto character(24) NOT NULL,
    filename character(100) NOT NULL
);
 #   DROP TABLE public.tbl_dbedahphoto;
       public         postgres    false            $           1259    28252 
   tbl_depkes    TABLE     ?   CREATE TABLE public.tbl_depkes (
    "DEPKESID" character varying(10) NOT NULL,
    "DEPKESKET" character varying(150) NOT NULL,
    "DEPKESGROUP" character varying(5) NOT NULL,
    "GROUPID" character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.tbl_depkes;
       public         postgres    false            %           1259    28256    tbl_depkesicd    TABLE       CREATE TABLE public.tbl_depkesicd (
    "NODTD" character varying(10) NOT NULL,
    "NODTC" character varying(250) NOT NULL,
    "PENYAKIT" character varying(250) NOT NULL,
    "SURVEI" integer DEFAULT 1 NOT NULL,
    "IGR" character varying(1) DEFAULT NULL::character varying
);
 !   DROP TABLE public.tbl_depkesicd;
       public         postgres    false            &           1259    28266    tbl_depo    TABLE     ?  CREATE TABLE public.tbl_depo (
    depocode character(10) NOT NULL,
    keterangan character(40) DEFAULT ''::bpchar NOT NULL,
    muncul money DEFAULT 0 NOT NULL,
    depokey character(14) DEFAULT ''::bpchar NOT NULL,
    konekpos character(10) DEFAULT ''::bpchar NOT NULL,
    leadmin numeric(18,0) DEFAULT 0 NOT NULL,
    leadmax numeric(18,0) DEFAULT 0 NOT NULL,
    "Prosen" numeric(18,0) DEFAULT 0 NOT NULL,
    jedahari numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_depo;
       public         postgres    false            '           1259    28282    tbl_dfaktur    TABLE     c  CREATE TABLE public.tbl_dfaktur (
    notukar character(14) DEFAULT ''::bpchar NOT NULL,
    nobapb character(16) DEFAULT ''::bpchar NOT NULL,
    tglbapb date NOT NULL,
    faktur character varying(35) DEFAULT ''::character varying NOT NULL,
    total numeric(9,0) DEFAULT 0 NOT NULL,
    keytukar character(23) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    bank character(10) DEFAULT ''::bpchar NOT NULL,
    rekening character(30) DEFAULT ''::bpchar NOT NULL,
    cek character(30) DEFAULT ''::bpchar NOT NULL,
    ket character varying(200) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_dfaktur;
       public         postgres    false            (           1259    28297    tbl_dgizimaster    TABLE     W  CREATE TABLE public.tbl_dgizimaster (
    kode character(10) DEFAULT ''::bpchar NOT NULL,
    komponen character varying(150) DEFAULT ''::character varying NOT NULL,
    keyk character varying(20) DEFAULT ''::character varying NOT NULL,
    "Waktusaji" numeric(5,0) DEFAULT 0 NOT NULL,
    kodekand character(5) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_dgizimaster;
       public         postgres    false            )           1259    28305    tbl_dgizitr    TABLE     ?  CREATE TABLE public.tbl_dgizitr (
    kodetr character(16) DEFAULT ''::bpchar NOT NULL,
    makanpagi character(10) DEFAULT ''::bpchar NOT NULL,
    dietpagi character(5) DEFAULT ''::bpchar NOT NULL,
    tp1 character varying(20) DEFAULT ''::character varying NOT NULL,
    tp2 character varying(20) DEFAULT ''::character varying NOT NULL,
    tp3 character varying(20) DEFAULT ''::character varying NOT NULL,
    makansiang character(10) DEFAULT ''::bpchar NOT NULL,
    dietsiang character(5) DEFAULT ''::bpchar NOT NULL,
    ts1 character varying(20) DEFAULT ''::character varying NOT NULL,
    ts2 character varying(20) DEFAULT ''::character varying NOT NULL,
    ts3 character varying(20) DEFAULT ''::character varying NOT NULL,
    makanmalam character(10) DEFAULT ''::bpchar NOT NULL,
    dietmalam character(5) DEFAULT ''::bpchar NOT NULL,
    tm1 character varying(20) DEFAULT ''::character varying NOT NULL,
    tm2 character varying(20) DEFAULT ''::character varying NOT NULL,
    tm3 character varying(20) DEFAULT ''::character varying NOT NULL,
    harga1 numeric(18,2) DEFAULT 0 NOT NULL,
    harga2 numeric(18,2) DEFAULT 0 NOT NULL,
    harga3 numeric(18,2) DEFAULT 0 NOT NULL,
    harga4 numeric(18,2) DEFAULT 0 NOT NULL,
    selingan character(10) DEFAULT ''::bpchar NOT NULL,
    lain1 character varying(400) DEFAULT ''::character varying NOT NULL,
    lain2 character varying(400) DEFAULT ''::character varying NOT NULL,
    lain3 character varying(400) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_dgizitr;
       public         postgres    false            *           1259    28336    tbl_dhasillabnew    TABLE     U  CREATE TABLE public.tbl_dhasillabnew (
    labkey character(20) DEFAULT ''::bpchar NOT NULL,
    kodegol character(10) DEFAULT ''::bpchar NOT NULL,
    kodelab character(13) DEFAULT ''::bpchar NOT NULL,
    pemeriksaan character(40) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    jperiksa numeric(1,0) DEFAULT 0 NOT NULL,
    normal1 numeric(10,2) DEFAULT 0 NOT NULL,
    normal2 numeric(10,2) DEFAULT 0 NOT NULL,
    hasiln numeric(10,2) DEFAULT 0 NOT NULL,
    hasilc character(200) DEFAULT ''::bpchar NOT NULL,
    normalc character(50) DEFAULT ''::bpchar NOT NULL,
    tandai money DEFAULT 0 NOT NULL,
    labsokey character(33) DEFAULT ''::bpchar NOT NULL,
    keterangan character(50) DEFAULT ''::bpchar NOT NULL,
    desi money DEFAULT 0 NOT NULL,
    nilaiket character(30) DEFAULT ''::bpchar NOT NULL
);
 $   DROP TABLE public.tbl_dhasillabnew;
       public         postgres    false            +           1259    28357    tbl_diagnosa    TABLE     ?   CREATE TABLE public.tbl_diagnosa (
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    adiag1 character(40) NOT NULL,
    adiag2 character(40) NOT NULL,
    adiag3 character(40) NOT NULL,
    adiag4 character(40) NOT NULL
);
     DROP TABLE public.tbl_diagnosa;
       public         postgres    false            ,           1259    28360    tbl_diagnosis    TABLE     ?  CREATE TABLE public.tbl_diagnosis (
    noreg character varying(12) DEFAULT ''::character varying NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    tglkeluar date NOT NULL,
    diagnosamasuk character(300) DEFAULT ''::bpchar NOT NULL,
    diagnosakeluar character(300) DEFAULT ''::bpchar NOT NULL,
    icd1 character varying(10) DEFAULT ''::character varying NOT NULL,
    icd2 character varying(10) DEFAULT ''::character varying NOT NULL,
    icd3 character varying(10) DEFAULT ''::character varying NOT NULL,
    sudahok money DEFAULT 0 NOT NULL,
    alergi character(300) DEFAULT ''::bpchar NOT NULL,
    diagnosakerja character(300) DEFAULT ''::bpchar NOT NULL,
    drkirim character(10) DEFAULT ''::bpchar NOT NULL,
    drrawat character(10) DEFAULT ''::bpchar NOT NULL,
    drkonsul character(10) DEFAULT ''::bpchar NOT NULL,
    drkonsul1 character(10) DEFAULT ''::bpchar NOT NULL,
    drkonsul2 character(10) DEFAULT ''::bpchar NOT NULL,
    drkonsul3 character(10) DEFAULT ''::bpchar NOT NULL,
    kelas character(10) DEFAULT ''::bpchar NOT NULL,
    anamnesis character(300) DEFAULT ''::bpchar NOT NULL,
    hasilradlab character(300) DEFAULT ''::bpchar NOT NULL,
    terapiberi character(300) DEFAULT ''::bpchar NOT NULL,
    tindakanberi character(300) DEFAULT ''::bpchar NOT NULL,
    terapilanjut character(300) DEFAULT ''::bpchar NOT NULL,
    catatan character(100) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_diagnosis;
       public         postgres    false            -           1259    28389 	   tbl_dinap    TABLE     ?  CREATE TABLE public.tbl_dinap (
    noinap character(16) DEFAULT ''::bpchar NOT NULL,
    pos character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    kodokter2 character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    tarifrs numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdr numeric(12,2) DEFAULT 0 NOT NULL,
    jasalain numeric(12,2) DEFAULT 0 NOT NULL,
    diskon numeric(6,2) DEFAULT 0 NOT NULL,
    diskonrp numeric(10,2) DEFAULT 0 NOT NULL,
    ambiljasa money DEFAULT 0 NOT NULL,
    periodeambil1 date,
    periodeambil2 date,
    prosendr numeric(6,2) DEFAULT 0 NOT NULL,
    inapkey character(20) DEFAULT ''::bpchar NOT NULL,
    kodokter3 character(10) DEFAULT ''::bpchar NOT NULL,
    coverrp numeric(10,0) DEFAULT 0 NOT NULL,
    paket character(10) DEFAULT NULL::bpchar,
    "JPK" numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_dinap;
       public         postgres    false            .           1259    28409    tbl_djasadr    TABLE     ?  CREATE TABLE public.tbl_djasadr (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    ambil money DEFAULT 0 NOT NULL,
    tgltransaksi date NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    totaltr numeric(11,2) DEFAULT 0 NOT NULL,
    totaljasa numeric(11,2) DEFAULT 0 NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    notr character(16) DEFAULT ''::bpchar NOT NULL,
    pos character(2) DEFAULT ''::bpchar NOT NULL,
    poskey character(20) DEFAULT ''::bpchar NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    mket character(20) DEFAULT ''::bpchar NOT NULL,
    koreksi money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_djasadr;
       public         postgres    false            /           1259    28425    tbl_dlab    TABLE     ?  CREATE TABLE public.tbl_dlab (
    nolaborat character(16) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    jenis numeric(18,0) DEFAULT 0 NOT NULL,
    tarifrs numeric(18,0) DEFAULT 0 NOT NULL,
    tarifdr numeric(18,0) DEFAULT 0 NOT NULL,
    oldtarifrs numeric(18,0) DEFAULT 0 NOT NULL,
    oldtarifdr numeric(18,0) DEFAULT 0 NOT NULL,
    diskon numeric(18,0) DEFAULT 0 NOT NULL,
    diskonrp numeric(18,0) DEFAULT 0 NOT NULL,
    persen numeric(18,0) DEFAULT 0 NOT NULL,
    labkey character(20) DEFAULT ''::bpchar NOT NULL,
    coverrp numeric(18,0) DEFAULT 0 NOT NULL,
    paketid character varying(50) DEFAULT ''::character varying NOT NULL,
    jpk numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_dlab;
       public         postgres    false            0           1259    28444 
   tbl_dlab01    TABLE     ?   CREATE TABLE public.tbl_dlab01 (
    kodetarif character(15) DEFAULT NULL::bpchar,
    labkey character(20) DEFAULT NULL::bpchar,
    hasil01 text,
    hasil02 text,
    hasil03 text,
    hasil04 text
);
    DROP TABLE public.tbl_dlab01;
       public         postgres    false            1           1259    28452 
   tbl_dlab02    TABLE     ?  CREATE TABLE public.tbl_dlab02 (
    kodetarif character(15) DEFAULT NULL::bpchar,
    labkey character(20) DEFAULT NULL::bpchar,
    h1 character(35) DEFAULT NULL::bpchar,
    h2 character(15) DEFAULT NULL::bpchar,
    h3 character(15) DEFAULT NULL::bpchar,
    h4 character(15) DEFAULT NULL::bpchar,
    h5 character(12) DEFAULT NULL::bpchar,
    h6 character(10) DEFAULT NULL::bpchar,
    h7 character(10) DEFAULT NULL::bpchar,
    h8 character(10) DEFAULT NULL::bpchar,
    h9 character(10) DEFAULT NULL::bpchar,
    h10 character(10) DEFAULT NULL::bpchar,
    h11 character(10) DEFAULT NULL::bpchar,
    h12 character(20) DEFAULT NULL::bpchar,
    h13 character(10) DEFAULT NULL::bpchar,
    h14 character(10) DEFAULT NULL::bpchar,
    h15 character(10) DEFAULT NULL::bpchar,
    h16 character(10) DEFAULT NULL::bpchar,
    h17 character(10) DEFAULT NULL::bpchar,
    h18 character(20) DEFAULT NULL::bpchar,
    h19 character(10) DEFAULT NULL::bpchar,
    h20 character(10) DEFAULT NULL::bpchar,
    h21 text,
    h22 character(10) DEFAULT NULL::bpchar,
    h23 character(10) DEFAULT NULL::bpchar,
    h24 character(10) DEFAULT NULL::bpchar,
    h25 character(10) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_dlab02;
       public         postgres    false            2           1259    28484 
   tbl_dlab03    TABLE     ?  CREATE TABLE public.tbl_dlab03 (
    kodetarif character(15) DEFAULT NULL::bpchar,
    labkey character(20) DEFAULT NULL::bpchar,
    h1 character(10) DEFAULT NULL::bpchar,
    h2 character(10) DEFAULT NULL::bpchar,
    h3 character(10) DEFAULT NULL::bpchar,
    h4 character(10) DEFAULT NULL::bpchar,
    h5 character(10) DEFAULT NULL::bpchar,
    h6 character(10) DEFAULT NULL::bpchar,
    h7 character(10) DEFAULT NULL::bpchar,
    h8 character(10) DEFAULT NULL::bpchar,
    h9 character(16) DEFAULT NULL::bpchar,
    h10 character(10) DEFAULT NULL::bpchar,
    h11 character(10) DEFAULT NULL::bpchar,
    h12 text,
    h13 character(10) DEFAULT NULL::bpchar,
    h14 character(10) DEFAULT NULL::bpchar,
    h15 text,
    h16 text,
    h17 text
);
    DROP TABLE public.tbl_dlab03;
       public         postgres    false            3           1259    28506 
   tbl_dlab04    TABLE     ?  CREATE TABLE public.tbl_dlab04 (
    kodetarif character(15) DEFAULT NULL::bpchar,
    labkey character(20) DEFAULT NULL::bpchar,
    h1 character(10) DEFAULT NULL::bpchar,
    h2 character(10) DEFAULT NULL::bpchar,
    h3 character(20) DEFAULT NULL::bpchar,
    h4 character(20) DEFAULT NULL::bpchar,
    h5 character(20) DEFAULT NULL::bpchar,
    h6 character(10) DEFAULT NULL::bpchar,
    h7 character(10) DEFAULT NULL::bpchar,
    h8 character(10) DEFAULT NULL::bpchar,
    h9 character(16) DEFAULT NULL::bpchar,
    h10 character(20) DEFAULT NULL::bpchar,
    h11 character(10) DEFAULT NULL::bpchar,
    h12 character(10) DEFAULT NULL::bpchar,
    h13 character(10) DEFAULT NULL::bpchar,
    h14 character(10) DEFAULT NULL::bpchar,
    h15 character(10) DEFAULT NULL::bpchar,
    h16 character(10) DEFAULT NULL::bpchar,
    h17 character(10) DEFAULT NULL::bpchar,
    h18 character(20) DEFAULT NULL::bpchar,
    h19 character(10) DEFAULT NULL::bpchar,
    h20 character(10) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_dlab04;
       public         postgres    false            4           1259    28531    tbl_dlabmohon    TABLE     ?   CREATE TABLE public.tbl_dlabmohon (
    nomohon character(16) NOT NULL,
    kodetarif character(10) NOT NULL,
    nomohonkey character(20) NOT NULL
);
 !   DROP TABLE public.tbl_dlabmohon;
       public         postgres    false            5           1259    28534    tbl_dlogistik    TABLE     ?  CREATE TABLE public.tbl_dlogistik (
    logno character(16) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(12,2) DEFAULT 0 NOT NULL,
    oldqty numeric(12,2) DEFAULT 0 NOT NULL,
    logkey character(26) DEFAULT ''::bpchar NOT NULL,
    harga numeric(18,0) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_dlogistik;
       public         postgres    false            6           1259    28546 
   tbl_dmedis    TABLE       CREATE TABLE public.tbl_dmedis (
    noradio character(16) DEFAULT NULL::bpchar,
    kodetarif character(10) DEFAULT NULL::bpchar,
    jenis numeric(1,0) DEFAULT NULL::numeric,
    tarifrs numeric(12,2) DEFAULT NULL::numeric,
    tarifdr numeric(12,2) DEFAULT NULL::numeric,
    oldtarifrs numeric(12,2) DEFAULT NULL::numeric,
    oldtarifdr numeric(12,2) DEFAULT NULL::numeric,
    diskon numeric(4,0) DEFAULT NULL::numeric,
    diskonrp numeric(10,2) DEFAULT NULL::numeric,
    persen numeric(6,2) DEFAULT NULL::numeric,
    radiokey character(20) NOT NULL,
    radiomohonkey character(20) DEFAULT NULL::bpchar,
    nofoto character(15) DEFAULT NULL::bpchar,
    coverrp numeric(12,2) DEFAULT NULL::numeric,
    jpk numeric(12,2) DEFAULT NULL::numeric,
    qty numeric(4,0) DEFAULT 0
);
    DROP TABLE public.tbl_dmedis;
       public         postgres    false            7           1259    28566 
   tbl_dokter    TABLE     n  CREATE TABLE public.tbl_dokter (
    kodokter character varying(10) NOT NULL,
    nadokter character varying(50) NOT NULL,
    tglmasuk date,
    tgllahir date,
    alamat1 character varying(50) DEFAULT NULL::character varying,
    alamat2 character varying(50) DEFAULT NULL::character varying,
    phone character varying(20) DEFAULT NULL::character varying,
    hp character varying(20) DEFAULT NULL::character varying,
    email character varying(20) DEFAULT NULL::character varying,
    alumnus character varying(50) DEFAULT NULL::character varying,
    status character varying(5) DEFAULT NULL::character varying,
    specialis character varying(20) DEFAULT NULL::character varying,
    urutdr numeric(3,0) DEFAULT 0 NOT NULL,
    pphc character varying(10) DEFAULT NULL::character varying,
    pph integer DEFAULT 0 NOT NULL,
    ckey character(3) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_dokter;
       public         postgres    false            :           1259    35129 	   tbl_dpoli    TABLE     ]  CREATE TABLE public.tbl_dpoli (
    nopoli character(16) DEFAULT ''::bpchar NOT NULL,
    pos character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(5,2) DEFAULT 0 NOT NULL,
    tarifrs numeric(12,2) DEFAULT 0 NOT NULL,
    discrs numeric(5,2) DEFAULT 0 NOT NULL,
    rsnet numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdr numeric(12,2) DEFAULT 0 NOT NULL,
    discdr numeric(5,2) DEFAULT 0 NOT NULL,
    drnet numeric(12,2) DEFAULT 0 NOT NULL,
    obatnet numeric(12,2) DEFAULT 0 NOT NULL,
    polinet numeric(12,2) DEFAULT 0 NOT NULL,
    paramedis numeric(18,0) DEFAULT 0 NOT NULL,
    coverrp numeric(18,0) DEFAULT 0 NOT NULL,
    ambiljasa money DEFAULT 0 NOT NULL,
    periodeambil1 date NOT NULL,
    periodeambil2 date NOT NULL,
    policounter character(20) DEFAULT ''::bpchar NOT NULL,
    prosendr numeric(18,0) DEFAULT 0 NOT NULL,
    lobat money DEFAULT 0 NOT NULL,
    bahan numeric(18,0) DEFAULT 0 NOT NULL,
    diskpr numeric(18,0) DEFAULT 0 NOT NULL,
    diskrp numeric(18,0) DEFAULT 0 NOT NULL,
    paketid character(10) DEFAULT ''::bpchar NOT NULL,
    jpk numeric(18,0) DEFAULT 0 NOT NULL,
    kwt money DEFAULT 0 NOT NULL,
    kettindak character(80) DEFAULT ''::bpchar NOT NULL,
    koperawat character(30) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_dpoli;
       public         postgres    false            ;           1259    35161 
   tbl_dradio    TABLE       CREATE TABLE public.tbl_dradio (
    noradio character(16) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    jenis numeric(1,0) DEFAULT 0 NOT NULL,
    tarifrs numeric(12,2) DEFAULT 0 NOT NULL,
    tarifdr numeric(12,2) DEFAULT 0 NOT NULL,
    oldtarifrs numeric(12,2) DEFAULT 0 NOT NULL,
    oldtarifdr numeric(12,2) DEFAULT 0 NOT NULL,
    diskon numeric(4,0) DEFAULT 0 NOT NULL,
    diskonrp numeric(18,0) DEFAULT 0 NOT NULL,
    persen numeric(6,2) DEFAULT 0 NOT NULL,
    radiokey character(20) DEFAULT ''::bpchar NOT NULL,
    radiomohonkey character(20) DEFAULT ''::bpchar NOT NULL,
    nofoto character varying(15) DEFAULT ''::character varying NOT NULL,
    coverrp numeric(12,2) DEFAULT 0 NOT NULL,
    jpk numeric(12,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_dradio;
       public         postgres    false            <           1259    35179    tbl_dradiomohon    TABLE     ?   CREATE TABLE public.tbl_dradiomohon (
    radiomohon character(16) NOT NULL,
    kodetarif character(10) NOT NULL,
    radiomohonkey character(20) NOT NULL
);
 #   DROP TABLE public.tbl_dradiomohon;
       public         postgres    false            =           1259    35184    tbl_dreport    TABLE     ?  CREATE TABLE public.tbl_dreport (
    reportcode character varying(5) DEFAULT NULL::character varying,
    reportket character varying(100) DEFAULT NULL::character varying,
    reportname character varying(30) DEFAULT 0,
    rindex numeric(3,0) DEFAULT 0,
    belumbisa money DEFAULT 0,
    rtype character varying(10) DEFAULT ''::character varying,
    grindex numeric(2,0) DEFAULT 0,
    rparam character(10) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_dreport;
       public         postgres    false            >           1259    35195    tbl_drpengirim    TABLE     ?  CREATE TABLE public.tbl_drpengirim (
    kodokter character(10) NOT NULL,
    nadokter character(40) NOT NULL,
    alamat1 character(100) NOT NULL,
    alamat2 character(100) NOT NULL,
    phone character(20) NOT NULL,
    hp character(20) NOT NULL,
    komisi numeric(6,2) NOT NULL,
    komisirp numeric(10,2) NOT NULL,
    sistemkomisi numeric(1,0) NOT NULL,
    pph numeric(5,2) NOT NULL
);
 "   DROP TABLE public.tbl_drpengirim;
       public         postgres    false            ?           1259    35198 
   tbl_drpoli    TABLE     {   CREATE TABLE public.tbl_drpoli (
    kodokter character varying(10) NOT NULL,
    kodepos character varying(5) NOT NULL
);
    DROP TABLE public.tbl_drpoli;
       public         postgres    false            @           1259    35201 
   tbl_eresep    TABLE     ?  CREATE TABLE public.tbl_eresep (
    "NOREG" character(12) DEFAULT ''::bpchar NOT NULL,
    "KODEOBAT" character(10) DEFAULT ''::bpchar NOT NULL,
    "NAMAOBAT" character(100) DEFAULT ''::bpchar NOT NULL,
    "SATUAN" character(10) DEFAULT ''::bpchar NOT NULL,
    "QTY" numeric(18,0) DEFAULT 0 NOT NULL,
    "HARGA" numeric(18,0) DEFAULT 0 NOT NULL,
    "TOTALHARGA" numeric(18,0) DEFAULT 0 NOT NULL,
    aturanpakai character(50) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_eresep;
       public         postgres    false            A           1259    35212 	   tbl_fixed    TABLE        CREATE TABLE public.tbl_fixed (
    fixid character(5) DEFAULT ''::bpchar NOT NULL,
    fixname character(50) DEFAULT ''::bpchar NOT NULL,
    fixcode character(2) DEFAULT ''::bpchar NOT NULL,
    bulansusut numeric(6,2) DEFAULT 0 NOT NULL,
    fixrate numeric(6,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_fixed;
       public         postgres    false            B           1259    35220    tbl_fixedasset    TABLE     ?  CREATE TABLE public.tbl_fixedasset (
    kodefix character(10) DEFAULT ''::bpchar NOT NULL,
    serialno character(25) DEFAULT ''::bpchar NOT NULL,
    namafix character(100) DEFAULT ''::bpchar NOT NULL,
    fixid character(5) DEFAULT ''::bpchar NOT NULL,
    tglaku date NOT NULL,
    tglpakai date NOT NULL,
    tglkalibrasi date NOT NULL,
    jumlah numeric(18,0) DEFAULT 0 NOT NULL,
    nilaiaktiva numeric(18,0) DEFAULT 0 NOT NULL,
    lokasi character(40) DEFAULT ''::bpchar NOT NULL,
    pemakai character(30) DEFAULT ''::bpchar NOT NULL,
    umurth numeric(18,0) DEFAULT 0 NOT NULL,
    umurbl numeric(18,0) DEFAULT 0 NOT NULL,
    bulansusut character(50) DEFAULT ''::bpchar NOT NULL,
    accountak character(14) DEFAULT ''::bpchar NOT NULL,
    accountsusut character(14) DEFAULT ''::bpchar NOT NULL,
    accountbiaya character(14) DEFAULT ''::bpchar NOT NULL,
    account character(14) DEFAULT ''::bpchar NOT NULL,
    vat money DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_fixedasset;
       public         postgres    false            C           1259    35239    tbl_fixsusut    TABLE     k  CREATE TABLE public.tbl_fixsusut (
    kodefix character(10) DEFAULT ''::bpchar NOT NULL,
    kodesusut character(16) DEFAULT ''::bpchar NOT NULL,
    tglsusut date NOT NULL,
    blsusut character(6) DEFAULT ''::bpchar NOT NULL,
    prosensusut numeric(18,0) DEFAULT 0 NOT NULL,
    susutrp numeric(18,0) DEFAULT 0 NOT NULL,
    susut money DEFAULT 0 NOT NULL
);
     DROP TABLE public.tbl_fixsusut;
       public         postgres    false            E           1259    35263    tbl_gizidiet    TABLE     ?   CREATE TABLE public.tbl_gizidiet (
    kodediet character(5) DEFAULT ''::bpchar NOT NULL,
    namadiet character varying(150) DEFAULT ''::character varying NOT NULL,
    keterangan character varying(150) DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.tbl_gizidiet;
       public         postgres    false            F           1259    35269    tbl_gizidistribusi    TABLE     x  CREATE TABLE public.tbl_gizidistribusi (
    kodedistribusi character(18) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    oldqty numeric(10,2) NOT NULL,
    pakai money DEFAULT 0 NOT NULL,
    pasien numeric(8,0) DEFAULT 0 NOT NULL,
    kode character(8) DEFAULT ''::bpchar NOT NULL,
    tanggal date NOT NULL,
    diit numeric(10,0) DEFAULT 0 NOT NULL,
    vip numeric(10,0) DEFAULT 0 NOT NULL,
    pasiendiit numeric(10,0) DEFAULT 0 NOT NULL,
    pasienvip numeric(10,0) DEFAULT 0 NOT NULL
);
 &   DROP TABLE public.tbl_gizidistribusi;
       public         postgres    false            G           1259    35283    tbl_gizigroup    TABLE     ?   CREATE TABLE public.tbl_gizigroup (
    kodegroup character(5) DEFAULT ''::bpchar NOT NULL,
    namagroup character(150) DEFAULT ''::bpchar NOT NULL,
    keterangan character(250) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_gizigroup;
       public         postgres    false            H           1259    35289    tbl_gizihitung    TABLE     ?   CREATE TABLE public.tbl_gizihitung (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    qty numeric(18,2) DEFAULT 0 NOT NULL,
    faktor character(1) DEFAULT ''::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_gizihitung;
       public         postgres    false            I           1259    35296    tbl_gizikandungan    TABLE     ?   CREATE TABLE public.tbl_gizikandungan (
    kode character(5) DEFAULT ''::bpchar NOT NULL,
    keterangan character varying(50) DEFAULT ''::character varying NOT NULL
);
 %   DROP TABLE public.tbl_gizikandungan;
       public         postgres    false            J           1259    35301    tbl_glinterface    TABLE     ?  CREATE TABLE public.tbl_glinterface (
    ac_obatrj character varying(14) DEFAULT NULL::character varying,
    ac_obatri character varying(14) DEFAULT NULL::character varying,
    ac_obatbebas character varying(14) DEFAULT NULL::character varying,
    ac_hppobatrj character varying(14) DEFAULT NULL::character varying,
    ac_hppobatri character varying(14) DEFAULT NULL::character varying,
    ac_hppobatbebas character varying(14) DEFAULT NULL::character varying,
    dep_far1 character varying(10) DEFAULT NULL::character varying,
    ac_hpplokal character varying(14) DEFAULT NULL::character varying,
    ac_hppkulit character varying(14) DEFAULT NULL::character varying,
    ac_persediaanlokal character varying(14) DEFAULT NULL::character varying,
    ac_persediaankulit character varying(14) DEFAULT NULL::character varying,
    ac_penjualankulit character varying(14) DEFAULT NULL::character varying,
    ac_penjualanlokal character varying(14) DEFAULT NULL::character varying,
    ac_pendapatanadm character varying(14) DEFAULT NULL::character varying,
    ppnmasukan character(14) DEFAULT NULL::bpchar,
    ppnkeluaran character(14) DEFAULT NULL::bpchar,
    kasirke character(14) DEFAULT NULL::bpchar,
    kasirdari character(14) DEFAULT NULL::bpchar,
    diskonbeli character(14) DEFAULT NULL::bpchar,
    ac_bkirim character(14) DEFAULT NULL::bpchar,
    ac_bkemasan character(14) DEFAULT NULL::bpchar,
    bhpvoc character(14) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_glinterface;
       public         postgres    false            K           1259    35326    tbl_hap    TABLE     (  CREATE TABLE public.tbl_hap (
    ap_id character(16) DEFAULT ''::bpchar NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    pay_date date NOT NULL,
    cek_no character(30) DEFAULT ''::bpchar NOT NULL,
    ket character(80) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    totalbayar numeric(18,0) DEFAULT 0 NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    vat money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hap;
       public         postgres    false            L           1259    35339 
   tbl_harpas    TABLE     (  CREATE TABLE public.tbl_harpas (
    arno character(16) DEFAULT ''::bpchar NOT NULL,
    ardate date NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    totalterima numeric(14,2) DEFAULT 0 NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    cek_no character(30) DEFAULT ''::bpchar NOT NULL,
    keterangan character(100) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    usernama character(14) DEFAULT ''::bpchar NOT NULL,
    vat money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_harpas;
       public         postgres    false            M           1259    35352 	   tbl_hasil    TABLE     ?  CREATE TABLE public.tbl_hasil (
    order_id character varying(16) DEFAULT NULL::character varying,
    nopemeriksaan character(16) DEFAULT NULL::bpchar,
    kodelab character(10) DEFAULT NULL::bpchar,
    hasil character varying(10) DEFAULT NULL::character varying,
    parameter1 character varying(10) DEFAULT NULL::character varying,
    parameter2 character varying(10) DEFAULT NULL::character varying
);
    DROP TABLE public.tbl_hasil;
       public         postgres    false            N           1259    35361    tbl_hasilcall    TABLE     	  CREATE TABLE public.tbl_hasilcall (
    id_trans numeric(11,0) NOT NULL,
    nocall character(24) NOT NULL,
    rekmed character(16) NOT NULL,
    tglcall date,
    hasilcall text,
    tglrencana date,
    tglrealisasi date,
    cabangrencana character(3) DEFAULT NULL::bpchar,
    cabangrealisasi character(3) DEFAULT NULL::bpchar,
    dokterrencana character(100) DEFAULT NULL::bpchar,
    dokterrealisasi character(100) DEFAULT NULL::bpchar,
    datang money,
    totaltransaksi numeric(18,2) DEFAULT NULL::numeric
);
 !   DROP TABLE public.tbl_hasilcall;
       public         postgres    false            O           1259    35374 
   tbl_hbayar    TABLE     ?  CREATE TABLE public.tbl_hbayar (
    bayarno character(16) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    jmbayar numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character(200) DEFAULT ''::bpchar NOT NULL,
    jenisbayar numeric(10,0) DEFAULT 0 NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(10,0) DEFAULT 0 NOT NULL,
    depid character(10) DEFAULT ''::bpchar NOT NULL,
    cnturut numeric(18,0) DEFAULT 0 NOT NULL,
    nokasbon character(16) DEFAULT ''::bpchar NOT NULL,
    "NOCEK" character(50) DEFAULT ''::bpchar NOT NULL,
    vat money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hbayar;
       public         postgres    false            P           1259    35390 
   tbl_hbedah    TABLE     ?  CREATE TABLE public.tbl_hbedah (
    nooperasi character(16) NOT NULL,
    tgloperasi date NOT NULL,
    iam character(10) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    droperator character(10) DEFAULT ''::bpchar NOT NULL,
    asdroperator character(10) DEFAULT ''::bpchar NOT NULL,
    dranestasi character(10) DEFAULT ''::bpchar NOT NULL,
    asdranestasi character(10) DEFAULT ''::bpchar NOT NULL,
    asoperasi character(10) DEFAULT ''::bpchar NOT NULL,
    drpengirim character(10) DEFAULT ''''::bpchar NOT NULL,
    dranak character(10) DEFAULT ''::bpchar NOT NULL,
    drtambah character(10) DEFAULT ''::bpchar NOT NULL,
    asal character(10) DEFAULT ''::bpchar NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    jam character(10) DEFAULT ''''::bpchar NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    cntbedah numeric(4,0) DEFAULT 0 NOT NULL,
    nojadwal character(16) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    ship character(1) DEFAULT ''::bpchar NOT NULL,
    penyulit numeric(1,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hbedah;
       public         postgres    false            Q           1259    35417    tbl_hbedahjadwal    TABLE       CREATE TABLE public.tbl_hbedahjadwal (
    nojadwal character(16) DEFAULT ''::bpchar NOT NULL,
    tgloperasi date,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    droperator character(10) DEFAULT ''::bpchar NOT NULL,
    asdroperator character(10) DEFAULT ''::bpchar NOT NULL,
    dranestasi character(10) DEFAULT ''::bpchar NOT NULL,
    asdranestasi character(10) DEFAULT ''::bpchar NOT NULL,
    asoperasi character(10) DEFAULT ''::bpchar NOT NULL,
    drpendamping character(10) DEFAULT ''::bpchar NOT NULL,
    drpengirim character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    jam character(12) DEFAULT ''::bpchar NOT NULL,
    keluar money DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.tbl_hbedahjadwal;
       public         postgres    false            R           1259    35433    tbl_hfaktur    TABLE     c  CREATE TABLE public.tbl_hfaktur (
    notukar character(14) DEFAULT ''::bpchar NOT NULL,
    tanggal date NOT NULL,
    total numeric(9,0) DEFAULT 0 NOT NULL,
    tglbayar date NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt integer DEFAULT 0 NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    counter numeric(18,0) DEFAULT 0 NOT NULL,
    jenis numeric(5,0) DEFAULT 0 NOT NULL,
    diambil date NOT NULL,
    jatuhtempo date NOT NULL,
    tempo money DEFAULT 0 NOT NULL,
    keterangan character(200) DEFAULT ''::bpchar NOT NULL,
    ppn money DEFAULT 0 NOT NULL,
    ppnrp numeric(18,0) DEFAULT 0 NOT NULL,
    materai numeric(18,0) DEFAULT 0 NOT NULL,
    biayalain numeric(18,0) DEFAULT 0 NOT NULL,
    manual money DEFAULT 0 NOT NULL,
    totalsemua numeric(18,0) DEFAULT 0 NOT NULL,
    tglcetak date NOT NULL
);
    DROP TABLE public.tbl_hfaktur;
       public         postgres    false            S           1259    35453    tbl_hgizimaster    TABLE     ?  CREATE TABLE public.tbl_hgizimaster (
    kode character(10) DEFAULT ''::bpchar NOT NULL,
    namamenu character varying(150) DEFAULT ''::character varying NOT NULL,
    waktusaji numeric(8,0) DEFAULT 0 NOT NULL,
    diet character varying(5) DEFAULT ''::character varying NOT NULL,
    harga numeric(18,2) DEFAULT 0 NOT NULL,
    counter numeric(18,0) DEFAULT 0 NOT NULL,
    kodegroup character(5) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_hgizimaster;
       public         postgres    false            T           1259    35463    tbl_hgizitr    TABLE     Z  CREATE TABLE public.tbl_hgizitr (
    kodetr character(16) DEFAULT ''::bpchar NOT NULL,
    tanggal date NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    namapas character varying(150) DEFAULT ''::character varying NOT NULL,
    ruangan character varying(25) DEFAULT ''::character varying NOT NULL,
    kelas character varying(25) DEFAULT ''::character varying NOT NULL,
    username character varying(10) DEFAULT ''::character varying NOT NULL,
    shipt numeric(10,0) DEFAULT 0 NOT NULL,
    createby character varying(10) DEFAULT ''::character varying NOT NULL,
    jambuat character(10) DEFAULT ''::bpchar NOT NULL,
    editby character(10) DEFAULT ''::bpchar NOT NULL,
    jamedit character(10) DEFAULT ''::bpchar NOT NULL,
    bangsal character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_hgizitr;
       public         postgres    false            U           1259    35479 	   tbl_hinap    TABLE     ?  CREATE TABLE public.tbl_hinap (
    noinap character(16) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglperiksa date,
    asal character(10) DEFAULT ''::bpchar NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    jam character(10) DEFAULT ''::bpchar NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    cntinap numeric(4,0) DEFAULT 0 NOT NULL,
    paket money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hinap;
       public         postgres    false            V           1259    35497    tbl_hjasadr    TABLE       CREATE TABLE public.tbl_hjasadr (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    dari date NOT NULL,
    sampai date NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    totaljasa numeric(11,2) DEFAULT 0 NOT NULL,
    fee_tambah numeric(11,2) DEFAULT 0 NOT NULL,
    total_gros numeric(11,2) DEFAULT 0 NOT NULL,
    dasarpajak numeric(11,2) DEFAULT 0 NOT NULL,
    pajakpr numeric(3,2) DEFAULT 0 NOT NULL,
    pajakrp numeric(11,2) DEFAULT 0 NOT NULL,
    total_setelahpajak numeric(11,2) DEFAULT 0 NOT NULL,
    kasbon numeric(11,2) DEFAULT 0 NOT NULL,
    potlain numeric(3,2) DEFAULT 0 NOT NULL,
    totalpotlain numeric(11,2) DEFAULT 0 NOT NULL,
    totalnet numeric(11,2) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hjasadr;
       public         postgres    false            W           1259    35514    tbl_hlab    TABLE     r  CREATE TABLE public.tbl_hlab (
    nolaborat character varying(16) DEFAULT ''::character varying NOT NULL,
    tgllab date NOT NULL,
    noreg character varying(12) DEFAULT ''::character varying NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    drperiksa character varying(10) DEFAULT ''::character varying NOT NULL,
    drpengirim character varying(10) DEFAULT ''::character varying NOT NULL,
    kodepetugas character varying(10) DEFAULT ''::character varying NOT NULL,
    uanglab numeric(18,0) DEFAULT 0 NOT NULL,
    asal character varying(10) DEFAULT ''::character varying NOT NULL,
    kelas character varying(1) DEFAULT ''::character varying NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    username character varying(14) DEFAULT ''::character varying NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    jam character varying(10) DEFAULT ''::character varying NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    cntlab numeric(18,0) DEFAULT 0 NOT NULL,
    tglselesai date NOT NULL,
    jamselesai character varying(10) DEFAULT ''::character varying NOT NULL,
    ambil money DEFAULT 0 NOT NULL,
    diambiloleh character varying(100) DEFAULT ''::character varying NOT NULL,
    nokwitansi character varying(14) DEFAULT ''::character varying NOT NULL,
    tglambil date NOT NULL,
    jamambil character varying(10) DEFAULT ''::character varying NOT NULL,
    jpas numeric(18,0) DEFAULT 0 NOT NULL,
    rujuk numeric(18,0) DEFAULT 0 NOT NULL,
    namapas character varying(250) DEFAULT ''::character varying NOT NULL,
    tgllahir date NOT NULL,
    umurbl numeric(18,0) DEFAULT 0 NOT NULL,
    umurth numeric(18,0) DEFAULT 0 NOT NULL,
    umurhr numeric(18,0) DEFAULT 0 NOT NULL,
    jkel numeric(18,0) DEFAULT 0 NOT NULL,
    jenisperiksa numeric(18,0) DEFAULT 0 NOT NULL,
    pengluar character varying(20) DEFAULT ''::character varying NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    langsung money DEFAULT 0 NOT NULL,
    tglsampel date NOT NULL,
    jamsampel character varying(10) DEFAULT ''::character varying NOT NULL,
    sampeloleh character varying(250) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_hlab;
       public         postgres    false            X           1259    35555    tbl_hlabhasil    TABLE     ?  CREATE TABLE public.tbl_hlabhasil (
    labkey character(20) DEFAULT ''::bpchar NOT NULL,
    nolaborat character(16) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    tglperiksa date NOT NULL,
    okprint money DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_hlabhasil;
       public         postgres    false            Y           1259    35567    tbl_hlabmohon    TABLE     i  CREATE TABLE public.tbl_hlabmohon (
    nomohon character(16) NOT NULL,
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    "tglPERIKSA" date NOT NULL,
    jam character(12) NOT NULL,
    dokter_pengirim character(10) NOT NULL,
    selesai money NOT NULL,
    cnt_mohon numeric(4,0) NOT NULL,
    pesandr character varying(300) NOT NULL
);
 !   DROP TABLE public.tbl_hlabmohon;
       public         postgres    false            Z           1259    35570    tbl_hlabnotes    TABLE     ?   CREATE TABLE public.tbl_hlabnotes (
    nolaborat character(16) DEFAULT ''::bpchar NOT NULL,
    catatan character(254) DEFAULT ''::bpchar NOT NULL,
    tglselesai date NOT NULL,
    jamselesai character(8) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_hlabnotes;
       public         postgres    false            [           1259    35578    tbl_hlogistik    TABLE       CREATE TABLE public.tbl_hlogistik (
    logno character(16) DEFAULT ''::bpchar NOT NULL,
    logdate date NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character varying(50) DEFAULT ''::character varying NOT NULL,
    posting money DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_hlogistik;
       public         postgres    false            \           1259    35585    tbl_hmaslab    TABLE     ?   CREATE TABLE public.tbl_hmaslab (
    kodegol character(10) NOT NULL,
    namagol character(40) NOT NULL,
    counter numeric(10,0) NOT NULL
);
    DROP TABLE public.tbl_hmaslab;
       public         postgres    false            ]           1259    35588 
   tbl_hmedis    TABLE     ?  CREATE TABLE public.tbl_hmedis (
    noradio character(16) DEFAULT ''::bpchar NOT NULL,
    radiomohon character(16) DEFAULT ''::bpchar,
    tglradio date,
    noreg character(12) DEFAULT ''::bpchar,
    radiotype numeric(1,0) DEFAULT 0,
    rekmed character(10) DEFAULT ''::bpchar,
    drperiksa character(10) DEFAULT ''::bpchar,
    drpengirim character(10) DEFAULT ''::bpchar,
    asal character(10) DEFAULT ''::bpchar,
    kelas character(1) DEFAULT ''::bpchar,
    kodepetugas character(5) DEFAULT ''::bpchar,
    username character(14) DEFAULT ''::bpchar,
    shipt numeric(1,0) DEFAULT 0,
    jam character(10) DEFAULT ''::bpchar,
    bayar money DEFAULT 0,
    keluar money DEFAULT 0,
    posting money DEFAULT 0,
    ambiljasa1 money DEFAULT 0,
    ambiljasa2 money DEFAULT 0,
    cnt_radio numeric(4,0) DEFAULT 0,
    insentif numeric(10,2) DEFAULT 0,
    nokwitansi character(14) DEFAULT ''::bpchar,
    tglselesai date,
    tglambil date,
    jamselesai character(10) DEFAULT ''::bpchar,
    jamambil character(10) DEFAULT ''::bpchar,
    diambiloleh character(40) DEFAULT ''::bpchar,
    namapas character(50) DEFAULT ''::bpchar,
    jpas numeric(1,0) DEFAULT 0,
    rujuk numeric(1,0) DEFAULT 0,
    umurth numeric(3,0) DEFAULT 0,
    umurbl numeric(2,0) DEFAULT 0,
    umurhr numeric(2,0) DEFAULT 0,
    tgllahir date,
    jkel numeric(1,0) DEFAULT 0,
    jenisperiksa numeric(1,0) DEFAULT 0,
    langsung money DEFAULT 0,
    drluar character(50) DEFAULT ''::bpchar,
    kodepos character(5) DEFAULT ''::bpchar
);
    DROP TABLE public.tbl_hmedis;
       public         postgres    false            ^           1259    35628    tbl_honordokter    TABLE     ?  CREATE TABLE public.tbl_honordokter (
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    keytransaksi character(20) DEFAULT ''::bpchar NOT NULL,
    tgltransaksi date,
    noreg character(12) DEFAULT NULL::bpchar,
    rekmed character(10) DEFAULT NULL::bpchar,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    totaltr numeric(18,0) DEFAULT 0 NOT NULL,
    totalhonor numeric(18,0) NOT NULL,
    prosenhonor numeric(7,2) NOT NULL,
    jenistransaksi integer DEFAULT 1 NOT NULL
);
 #   DROP TABLE public.tbl_honordokter;
       public         postgres    false            `           1259    35648 	   tbl_hpoli    TABLE     ?  CREATE TABLE public.tbl_hpoli (
    nopoli character(16) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    tglperiksa date NOT NULL,
    jam character(10) DEFAULT ''::bpchar NOT NULL,
    totalpoli numeric(10,0) DEFAULT 0 NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt smallint DEFAULT 0 NOT NULL,
    plcounter numeric(6,0) DEFAULT 0 NOT NULL,
    noradio character(16) DEFAULT ''::bpchar NOT NULL,
    nolaborat character(16) DEFAULT ''::bpchar NOT NULL,
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    alkesno character(16) DEFAULT ''::bpchar NOT NULL,
    nomorjurnal character varying(20) DEFAULT ''::character varying NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    "Jurnal" money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hpoli;
       public         postgres    false            a           1259    35671    tbl_hpp    TABLE     ]  CREATE TABLE public.tbl_hpp (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qtybeli numeric(18,0) DEFAULT 0 NOT NULL,
    hargabeli numeric(18,0) DEFAULT 0 NOT NULL,
    saldoakhir numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,0) DEFAULT 0 NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    saldoawal numeric(18,0) DEFAULT 0 NOT NULL,
    terima_no character(26) DEFAULT ''::bpchar NOT NULL,
    tanggal date NOT NULL,
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    urut numeric(18,0) DEFAULT 0 NOT NULL,
    totalrp numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_hpp;
       public         postgres    false            b           1259    35685 
   tbl_hradio    TABLE     l  CREATE TABLE public.tbl_hradio (
    noradio character(16) DEFAULT ''::bpchar NOT NULL,
    radiomohon character(16) DEFAULT ''::bpchar NOT NULL,
    tglradio date NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    radiotype numeric(1,0) DEFAULT 0 NOT NULL,
    drperiksa character(10) DEFAULT ''::bpchar NOT NULL,
    drpengirim character(10) DEFAULT ''::bpchar NOT NULL,
    asal character(10) DEFAULT ''::bpchar NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    kodepetugas character(10) DEFAULT ''::bpchar NOT NULL,
    username character varying(14) DEFAULT ''::character varying NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    jam character(13) DEFAULT ''::bpchar NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    posting money DEFAULT 0 NOT NULL,
    ambiljasa1 money DEFAULT 0 NOT NULL,
    ambiljasa2 money DEFAULT 0 NOT NULL,
    cnt_radio numeric(4,0) DEFAULT 0 NOT NULL,
    insentif numeric(18,0) DEFAULT 0 NOT NULL,
    nokwitansi character varying(14) DEFAULT ''::character varying NOT NULL,
    tglselesai date NOT NULL,
    tglambil date NOT NULL,
    jamselesai character(10) DEFAULT ''::bpchar NOT NULL,
    jamambil character(10) DEFAULT ''::bpchar NOT NULL,
    diambiloleh character varying(100) DEFAULT ''::character varying NOT NULL,
    namapas character varying(150) DEFAULT ''::character varying NOT NULL,
    jpas integer DEFAULT 0 NOT NULL,
    rujuk integer DEFAULT 0 NOT NULL,
    umurth integer DEFAULT 0 NOT NULL,
    umurbl integer DEFAULT 0 NOT NULL,
    umurhr integer DEFAULT 0 NOT NULL,
    tgllahir date NOT NULL,
    jkel integer DEFAULT 0 NOT NULL,
    jenisperiksa integer DEFAULT 0 NOT NULL,
    langsung money DEFAULT 0 NOT NULL,
    drluar character varying(50) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_hradio;
       public         postgres    false            c           1259    35725    tbl_hradiomohon    TABLE     ?  CREATE TABLE public.tbl_hradiomohon (
    radiomohon character(16) NOT NULL,
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    tglradio date NOT NULL,
    jam character(12) NOT NULL,
    dokter_pengirim character(10) DEFAULT ''::bpchar NOT NULL,
    selesai money DEFAULT 0 NOT NULL,
    cnt_mohon numeric(4,0) NOT NULL,
    pesandr character varying(300) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE public.tbl_hradiomohon;
       public         postgres    false            d           1259    35733    tbl_hrdjabatan    TABLE       CREATE TABLE public.tbl_hrdjabatan (
    nopeg character varying(9) NOT NULL,
    kdjabatan character varying(10) NOT NULL,
    jnsjabatan integer NOT NULL,
    dari date NOT NULL,
    sampai date NOT NULL,
    eselon character varying(30) DEFAULT NULL::character varying
);
 "   DROP TABLE public.tbl_hrdjabatan;
       public         postgres    false            e           1259    35737    tbl_hrdkeluarga    TABLE     ?   CREATE TABLE public.tbl_hrdkeluarga (
    nopeg character varying(9) NOT NULL,
    nama character varying(80) DEFAULT NULL::character varying,
    tgllahir date,
    sex integer
);
 #   DROP TABLE public.tbl_hrdkeluarga;
       public         postgres    false            f           1259    35741    tbl_hrdpangkat    TABLE       CREATE TABLE public.tbl_hrdpangkat (
    nopeg character varying(9) NOT NULL,
    kdgolongan character varying(10) NOT NULL,
    kdpangkat character varying(10) DEFAULT NULL::character varying,
    tmtsk date,
    keterangan character varying(50) DEFAULT NULL::character varying
);
 "   DROP TABLE public.tbl_hrdpangkat;
       public         postgres    false            g           1259    35746    tbl_hrdpegawai    TABLE     ?  CREATE TABLE public.tbl_hrdpegawai (
    nopeg character varying(9) NOT NULL,
    nama character varying(50) NOT NULL,
    sex integer NOT NULL,
    tmplahir character varying(30) DEFAULT NULL::character varying,
    tgllahir date,
    kdagama character varying(10) DEFAULT NULL::character varying,
    kdstsnikah character varying(10) DEFAULT NULL::character varying,
    nmpsg character varying(30) DEFAULT NULL::character varying,
    tmplahirpsg character varying(30) DEFAULT NULL::character varying,
    tgllhrpsg date,
    tglnikah date,
    krjpsg character varying(30) DEFAULT NULL::character varying,
    karisu character varying(8) DEFAULT NULL::character varying,
    tmtpegawai date,
    kddidik character varying(10) DEFAULT NULL::character varying,
    tmtdidik date,
    kdstspeg character varying(10) DEFAULT NULL::character varying,
    kdjnspeg character varying(10) DEFAULT NULL::character varying,
    karpeg character varying(20) DEFAULT NULL::character varying,
    kdgolongan character varying(10) DEFAULT NULL::character varying,
    tmgolongan date,
    kdstskerja character varying(10) DEFAULT NULL::character varying,
    kdunitkrj character varying(10) DEFAULT NULL::character varying,
    kdrs character varying(10) DEFAULT NULL::character varying,
    noskpnmpt character varying(30) DEFAULT NULL::character varying,
    tglskpnmpt date,
    kdsatgas character varying(10) DEFAULT NULL::character varying,
    kdkabupaten character varying(10) DEFAULT NULL::character varying,
    kdpropinsi character varying(10) DEFAULT NULL::character varying,
    darah character varying(2) DEFAULT NULL::character varying,
    ayah character varying(50) DEFAULT NULL::character varying,
    ibu character varying(50) DEFAULT NULL::character varying,
    telp character varying(15) DEFAULT NULL::character varying,
    tglkeluar date,
    alasan character varying(200) DEFAULT NULL::character varying,
    alamat character varying(250) DEFAULT NULL::character varying
);
 "   DROP TABLE public.tbl_hrdpegawai;
       public         postgres    false            h           1259    35777    tbl_hrdpelatihan    TABLE     ?  CREATE TABLE public.tbl_hrdpelatihan (
    nopeg character varying(9) NOT NULL,
    kdpelatihan character varying(10) DEFAULT NULL::character varying,
    jnpelatihan numeric(10,0) DEFAULT NULL::numeric,
    tahun numeric(10,0) DEFAULT NULL::numeric,
    lama numeric(4,0) DEFAULT NULL::numeric,
    kdprovider character varying(10) DEFAULT NULL::character varying,
    penyelenggara character varying(50) DEFAULT NULL::character varying
);
 $   DROP TABLE public.tbl_hrdpelatihan;
       public         postgres    false            i           1259    35786    tbl_hrdpendidikan    TABLE     :  CREATE TABLE public.tbl_hrdpendidikan (
    nopeg character varying(9) NOT NULL,
    kddidik character varying(10) DEFAULT NULL::character varying,
    tahunlulus integer,
    jurusan character varying(30) DEFAULT NULL::character varying,
    penyelenggara character varying(50) DEFAULT NULL::character varying
);
 %   DROP TABLE public.tbl_hrdpendidikan;
       public         postgres    false            j           1259    35792    tbl_hrdpenghargaan    TABLE     8  CREATE TABLE public.tbl_hrdpenghargaan (
    nopeg character varying(9) NOT NULL,
    kdpenghargaan character varying(10) DEFAULT NULL::character varying,
    nosrt character varying(30) DEFAULT NULL::character varying,
    tglsrt date,
    penyelenggara character varying(50) DEFAULT NULL::character varying
);
 &   DROP TABLE public.tbl_hrdpenghargaan;
       public         postgres    false            l           1259    35801    tbl_hresult    TABLE     ?  CREATE TABLE public.tbl_hresult (
    id character varying(50) DEFAULT NULL::character varying,
    pid character varying(50) DEFAULT NULL::character varying,
    apid character varying(50) DEFAULT NULL::character varying,
    pname character varying(100) DEFAULT NULL::character varying,
    ono character varying(50) DEFAULT NULL::character varying,
    lno character varying(50) DEFAULT NULL::character varying,
    request_dt character varying(50) DEFAULT NULL::character varying,
    source_cd character varying(10) DEFAULT NULL::character varying,
    source_nm character varying(45) DEFAULT NULL::character varying,
    clinician_cd character varying(10) DEFAULT NULL::character varying,
    clinician_nm character varying(120) DEFAULT NULL::character varying,
    priority character(1) DEFAULT NULL::bpchar,
    order_testid character varying(50) DEFAULT NULL::character varying,
    order_testnm character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.tbl_hresult;
       public         postgres    false            m           1259    35821 	   tbl_icdtr    TABLE     ?   CREATE TABLE public.tbl_icdtr (
    noreg character varying(12) NOT NULL,
    rekmed character varying(10) NOT NULL,
    nodtd character varying(10) NOT NULL,
    siid character varying(10) NOT NULL
);
    DROP TABLE public.tbl_icdtr;
       public         postgres    false            n           1259    35824 
   tbl_icdwho    TABLE     ?   CREATE TABLE public.tbl_icdwho (
    icdcode character varying(10) NOT NULL,
    icdname character varying(250) NOT NULL,
    category numeric(18,0) NOT NULL,
    nodtd character varying(250) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.tbl_icdwho;
       public         postgres    false            o           1259    35833    tbl_jurnald    TABLE     ?  CREATE TABLE public.tbl_jurnald (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    debet numeric(16,2) DEFAULT 0 NOT NULL,
    credit numeric(16,2) DEFAULT 0 NOT NULL,
    depid character(10) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT '()'::bpchar,
    jurnalkey character(20) DEFAULT ''::bpchar,
    dketerangan character(100) DEFAULT ''::bpchar
);
    DROP TABLE public.tbl_jurnald;
       public         postgres    false            p           1259    35844    tbl_jurnaldd    TABLE     ?  CREATE TABLE public.tbl_jurnaldd (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    debet numeric(16,2) DEFAULT 0 NOT NULL,
    credit numeric(16,2) DEFAULT 0 NOT NULL,
    depid character(10) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT '("")'::bpchar,
    jurnalkey character(20) DEFAULT ''::bpchar,
    dketerangan character(100) DEFAULT ''::bpchar
);
     DROP TABLE public.tbl_jurnaldd;
       public         postgres    false            q           1259    35855    tbl_jurnalh    TABLE     ?  CREATE TABLE public.tbl_jurnalh (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    tgljurnal date NOT NULL,
    keterangan character(150) DEFAULT ''::bpchar NOT NULL,
    tutup money DEFAULT 0 NOT NULL,
    sourceid character(2) DEFAULT ''::bpchar NOT NULL,
    user_name character(40) DEFAULT NULL::bpchar,
    urutjurnal numeric(18,0) DEFAULT 0 NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    vat2 money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_jurnalh;
       public         postgres    false            r           1259    35868 	   tbl_kamar    TABLE     P  CREATE TABLE public.tbl_kamar (
    koderuang character varying(10) DEFAULT ''::character varying NOT NULL,
    kodekamar character varying(12) DEFAULT ''::character varying NOT NULL,
    namakamar character varying(30) DEFAULT ''::character varying NOT NULL,
    penuh money DEFAULT 0 NOT NULL,
    dipesan money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_kamar;
       public         postgres    false            u           1259    35894 
   tbl_kasbon    TABLE     O  CREATE TABLE public.tbl_kasbon (
    "NOKASBON" character(16) DEFAULT NULL::bpchar,
    "NAMAKASBON" character(50) DEFAULT NULL::bpchar,
    accountno character(14) DEFAULT NULL::bpchar,
    accountnocost character(14) DEFAULT NULL::bpchar,
    tglkasbon date,
    nilaikasbon numeric(18,0) DEFAULT NULL::numeric,
    ketkasbon character(250) DEFAULT NULL::bpchar,
    username character(14) DEFAULT NULL::bpchar,
    shipt numeric(1,0) DEFAULT NULL::numeric,
    nocek character(50) DEFAULT NULL::bpchar,
    "DEPID" character(10) DEFAULT ''::bpchar,
    proses money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_kasbon;
       public         postgres    false            v           1259    35908 	   tbl_kasir    TABLE     ?  CREATE TABLE public.tbl_kasir (
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    tglbayar date NOT NULL,
    jambayar character(8) DEFAULT ''::bpchar NOT NULL,
    adm numeric(14,2) DEFAULT 0 NOT NULL,
    totalpoli numeric(14,2) DEFAULT 0 NOT NULL,
    totallab numeric(14,2) DEFAULT 0 NOT NULL,
    totalradio numeric(14,2) DEFAULT 0 NOT NULL,
    totalbedah numeric(14,2) DEFAULT 0 NOT NULL,
    totalinap numeric(14,2) DEFAULT 0 NOT NULL,
    totalresep numeric(14,2) DEFAULT 0 NOT NULL,
    uangmuka numeric(14,2) DEFAULT 0 NOT NULL,
    umuka numeric(18,0) DEFAULT 0 NOT NULL,
    admcredit numeric(14,2) DEFAULT 0 NOT NULL,
    totalsemua numeric(14,2) DEFAULT 0 NOT NULL,
    jenisbayar numeric(1,0) DEFAULT 0 NOT NULL,
    lain numeric(13,2) DEFAULT 0 NOT NULL,
    bayarcash numeric(14,2) DEFAULT 0 NOT NULL,
    bayarcard numeric(14,2) DEFAULT 0 NOT NULL,
    totalbayar numeric(14,2) DEFAULT 0 NOT NULL,
    kembali numeric(14,2) DEFAULT 0 NOT NULL,
    dibayaroleh character varying(120) DEFAULT ''::character varying NOT NULL,
    posbayar character varying(50) DEFAULT ''::character varying NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    kasirtype numeric(1,0) DEFAULT 0 NOT NULL,
    kodokter character varying(10) DEFAULT ''::character varying NOT NULL,
    prosenksr numeric(3,0) DEFAULT 0 NOT NULL,
    lainket character varying(50) DEFAULT ''::character varying NOT NULL,
    namapasien character varying(150) DEFAULT ''::character varying NOT NULL,
    nomutasi character(16) DEFAULT ''::bpchar NOT NULL,
    diskon numeric(6,2) DEFAULT 0 NOT NULL,
    diskonrp numeric(12,2) DEFAULT 0 NOT NULL,
    diskonby character(50) DEFAULT ''::bpchar NOT NULL,
    bankcode character(10) DEFAULT ''::bpchar NOT NULL,
    aprove money DEFAULT 0 NOT NULL,
    totalmedis numeric(14,2) DEFAULT 0 NOT NULL,
    retur numeric(18,0) DEFAULT 0 NOT NULL,
    kasir money DEFAULT 0 NOT NULL,
    pajak money DEFAULT 0 NOT NULL,
    voucherrp numeric(18,0) DEFAULT 0 NOT NULL,
    promoid character(16) DEFAULT ''::bpchar NOT NULL,
    promoid2 character(16) DEFAULT ''::bpchar NOT NULL,
    fakturpajak character(8) DEFAULT ''::bpchar NOT NULL,
    resepno character(16) DEFAULT ''::bpchar NOT NULL,
    refund money DEFAULT 0 NOT NULL,
    kwtvoucher character(14) DEFAULT ''::bpchar NOT NULL,
    selisihrp numeric(18,0) DEFAULT 0 NOT NULL,
    validsel money DEFAULT 0 NOT NULL,
    novoucher character(20) DEFAULT ''::bpchar NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    hadiah1 character(10) DEFAULT ''::bpchar NOT NULL,
    hadiah2 character(10) DEFAULT ''::bpchar NOT NULL,
    qtyhad1 numeric(18,0) DEFAULT 0 NOT NULL,
    qtyhad2 numeric(18,0) DEFAULT 0 NOT NULL,
    promoremark character(50) DEFAULT ''::bpchar NOT NULL,
    adapromo integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_kasir;
       public         postgres    false            w           1259    35973 
   tbl_kasir1    TABLE       CREATE TABLE public.tbl_kasir1 (
    nokwitansi character(14) NOT NULL,
    noreg character(12) NOT NULL,
    rekmed character varying(10) NOT NULL,
    tglbayar date NOT NULL,
    jambayar character(8) NOT NULL,
    adm numeric(14,2) NOT NULL,
    totalpoli numeric(14,2) NOT NULL,
    totallab numeric(14,2) NOT NULL,
    totalradio numeric(14,2) NOT NULL,
    totalbedah numeric(14,2) NOT NULL,
    totalinap numeric(14,2) NOT NULL,
    totalresep numeric(14,2) NOT NULL,
    uangmuka numeric(14,2) NOT NULL,
    admcredit numeric(14,2) NOT NULL,
    totalsemua numeric(14,2) NOT NULL,
    jenisbayar numeric(1,0) NOT NULL,
    lain numeric(13,2) NOT NULL,
    bayarcash numeric(14,2) NOT NULL,
    bayarcard numeric(14,2) NOT NULL,
    totalbayar numeric(14,2) NOT NULL,
    kembali numeric(14,2) NOT NULL,
    dibayaroleh character varying(120) NOT NULL,
    posbayar character varying(50) NOT NULL,
    username character(14) NOT NULL,
    shipt numeric(1,0) NOT NULL,
    kasirtype numeric(1,0) NOT NULL,
    kodokter character varying(10) NOT NULL,
    prosenksr numeric(3,0) NOT NULL,
    lainket character varying(50) NOT NULL,
    namapasien character varying(150) NOT NULL,
    nomutasi character(16) NOT NULL,
    diskon numeric(6,2) NOT NULL,
    diskonrp numeric(12,2) NOT NULL,
    diskonby character(50) NOT NULL,
    bankcode character(10) NOT NULL,
    aprove money NOT NULL,
    totalmedis numeric(14,2) NOT NULL,
    retur numeric(18,0) NOT NULL,
    kasir money NOT NULL,
    pajak money NOT NULL,
    voucherrp numeric(18,0) NOT NULL,
    promoid character(16) NOT NULL,
    promoid2 character(16) NOT NULL,
    fakturpajak character(8) NOT NULL,
    resepno character(16) NOT NULL,
    refund money NOT NULL,
    kwtvoucher character(14) NOT NULL,
    selisihrp numeric(18,0) NOT NULL
);
    DROP TABLE public.tbl_kasir1;
       public         postgres    false            x           1259    35979    tbl_kasirhapus    TABLE     ?  CREATE TABLE public.tbl_kasirhapus (
    nokwitansi character(16) DEFAULT ' '::bpchar NOT NULL,
    noreg character(12) DEFAULT ' '::bpchar NOT NULL,
    rekmed character(10) DEFAULT ' '::bpchar NOT NULL,
    tglbayar date NOT NULL,
    username character(15) DEFAULT ' '::bpchar NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    posbayar character(15) DEFAULT ' '::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_kasirhapus;
       public         postgres    false            y           1259    35988    tbl_kasmasuk    TABLE     (  CREATE TABLE public.tbl_kasmasuk (
    notr character(16) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    tglkas date NOT NULL,
    keterangan character(200) DEFAULT ''::bpchar NOT NULL,
    nilairp numeric(18,2) DEFAULT 0 NOT NULL,
    penerima character(20) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(8,0) DEFAULT 0 NOT NULL,
    accountpos character(14) DEFAULT ''::bpchar,
    vat money DEFAULT 0 NOT NULL
);
     DROP TABLE public.tbl_kasmasuk;
       public         postgres    false            z           1259    36003 	   tbl_kelas    TABLE     n  CREATE TABLE public.tbl_kelas (
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    namakelas character varying(20) DEFAULT ''::character varying NOT NULL,
    margin1 money DEFAULT 0 NOT NULL,
    margin2 money DEFAULT 0 NOT NULL,
    rate numeric(18,0) DEFAULT 0 NOT NULL,
    jumlahtt numeric(18,0) DEFAULT 0 NOT NULL,
    jumlahpas numeric(18,0) DEFAULT 0 NOT NULL,
    hari numeric(18,0) DEFAULT 0 NOT NULL,
    ttpakai numeric(18,0) DEFAULT 0 NOT NULL,
    jumlahpaskel numeric(18,0) DEFAULT 0 NOT NULL,
    los numeric(18,0) DEFAULT 0 NOT NULL,
    toi numeric(18,0) DEFAULT 0 NOT NULL,
    bto numeric(18,0) DEFAULT 0 NOT NULL,
    gdr numeric(18,0) DEFAULT 0 NOT NULL,
    ndr numeric(18,0) DEFAULT 0 NOT NULL,
    jpasmati numeric(18,0) DEFAULT 0 NOT NULL,
    jpasmati48 numeric(18,0) DEFAULT 0 NOT NULL,
    depkesid character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_kelas;
       public         postgres    false            {           1259    36024    tbl_laborathmaslab    TABLE     ?   CREATE TABLE public.tbl_laborathmaslab (
    kodegol character(10) NOT NULL,
    namagol character(40) NOT NULL,
    counter numeric(10,0) NOT NULL
);
 &   DROP TABLE public.tbl_laborathmaslab;
       public         postgres    false            |           1259    36027    tbl_laboratmashasil    TABLE       CREATE TABLE public.tbl_laboratmashasil (
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    kodelab character(13) DEFAULT ''::bpchar NOT NULL,
    nmperiksa character(40) DEFAULT ''::bpchar NOT NULL,
    satuan character(20) DEFAULT ''::bpchar NOT NULL,
    nilainormalp1 numeric(10,4) DEFAULT 0 NOT NULL,
    nilainormalw1 numeric(10,4) DEFAULT 0 NOT NULL,
    nilainormalp2 numeric(10,4) DEFAULT 0 NOT NULL,
    nilainormalw2 numeric(10,4) DEFAULT 0 NOT NULL,
    nilainormala1 numeric(10,4) DEFAULT 0 NOT NULL,
    nilainormala2 numeric(10,2) DEFAULT 0 NOT NULL,
    nilainormalc character(30) DEFAULT ''::bpchar NOT NULL,
    desi money DEFAULT 0 NOT NULL,
    lowdiag character(30) DEFAULT ''::bpchar NOT NULL,
    highdiag character(30) DEFAULT ''::bpchar NOT NULL
);
 '   DROP TABLE public.tbl_laboratmashasil;
       public         postgres    false            }           1259    36044    tbl_logbarang    TABLE     ?  CREATE TABLE public.tbl_logbarang (
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    namaobat character varying(120) DEFAULT ''::character varying NOT NULL,
    namageneric character varying(120) DEFAULT ''::character varying NOT NULL,
    pabrik character(10) DEFAULT ''::bpchar NOT NULL,
    icgroup character(4) DEFAULT ''::bpchar NOT NULL,
    golongan character(10) DEFAULT ''::bpchar NOT NULL,
    jenis character(10) DEFAULT ''::bpchar NOT NULL,
    groupharga character(10) DEFAULT ''::bpchar NOT NULL,
    jenisobat character(10) DEFAULT ''::bpchar NOT NULL,
    kemasan character(50) DEFAULT ''::bpchar NOT NULL,
    satuan1 character(30) DEFAULT ''::bpchar NOT NULL,
    satuan2 character(30) DEFAULT ''::bpchar NOT NULL,
    faktorsat2 character(1) DEFAULT ''::bpchar NOT NULL,
    satuan2qty numeric(18,0) DEFAULT 0 NOT NULL,
    satuan3 character(30) DEFAULT ''::bpchar NOT NULL,
    faktorsat3 character(10) DEFAULT ''::bpchar NOT NULL,
    satuan3qty numeric(18,0) DEFAULT 0 NOT NULL,
    hargabeli numeric(18,0) DEFAULT 0 NOT NULL,
    hargabeliluar numeric(18,0) DEFAULT 0 NOT NULL,
    hargabelippn numeric(18,0) DEFAULT 0 NOT NULL,
    hargajual numeric(18,0) DEFAULT 0 NOT NULL,
    hargajualrekanan numeric(18,0) DEFAULT 0 NOT NULL,
    hargajualluar numeric(18,0) DEFAULT 0 NOT NULL,
    hpp numeric(18,2) DEFAULT 0 NOT NULL,
    minstock numeric(18,0) DEFAULT 0 NOT NULL,
    maxstock numeric(18,0) DEFAULT 0 NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    hargatype numeric(18,0) DEFAULT 0 NOT NULL,
    discc character(5) DEFAULT ''::bpchar NOT NULL,
    discp character(5) DEFAULT ''::bpchar NOT NULL,
    notax money DEFAULT 0 NOT NULL,
    depkesjenis numeric(18,0) DEFAULT 0 NOT NULL,
    leadtime numeric(18,0) DEFAULT 0 NOT NULL,
    reorder numeric(18,0) DEFAULT 0 NOT NULL,
    jenisstock character(1) DEFAULT ''::bpchar NOT NULL,
    useredit character varying(100) DEFAULT ''::character varying NOT NULL,
    tgledit date NOT NULL,
    userbuat character varying(100) DEFAULT ''::character varying NOT NULL,
    tglbuat date NOT NULL,
    hppawal numeric(18,0) DEFAULT 0 NOT NULL,
    minimum money DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_logbarang;
       public         postgres    false            ~           1259    36091 	   tbl_login    TABLE     ?  CREATE TABLE public.tbl_login (
    kodeusr character(4) DEFAULT NULL::bpchar,
    namauser character(14) DEFAULT NULL::bpchar,
    namalengkap character(30) DEFAULT NULL::bpchar,
    pasword character(10) DEFAULT NULL::bpchar,
    level numeric(1,0) DEFAULT NULL::numeric,
    hapustr money DEFAULT 0 NOT NULL,
    edittr money,
    addtr money,
    bagian character(15) DEFAULT NULL::bpchar,
    conect money,
    supervisor money,
    setup01 money,
    setup02 money,
    setup03 money,
    setup04 money,
    setup05 money,
    setup06 money,
    setup07 money,
    setup08 money,
    setup09 money,
    setup10 money,
    setup11 money,
    setup12 money,
    setup13 money,
    setup14 money,
    rs01 money,
    rs02 money,
    rs03 money,
    rs04 money,
    rs05 money,
    rs06 money,
    rs07 money,
    rs08 money,
    rs09 money,
    rs10 money,
    rs11 money,
    rs12 money,
    rs13 money,
    rs14 money,
    rs15 money,
    rs16 money,
    rs17 money,
    rs18 money,
    rs19 money,
    rs20 money,
    apo01 money,
    apo02 money,
    apo03 money,
    apo04 money,
    apo05 money,
    apo06 money,
    apo07 money,
    apo08 money,
    apo09 money,
    apo10 money,
    apo11 money,
    apo12 money,
    apo13 money,
    apo14 money,
    apo15 money,
    apo16 money,
    apo17 money,
    apo18 money,
    apo19 money,
    apo20 money,
    kasir01 money,
    kasir02 money,
    kasir03 money,
    kasir04 money,
    kasir05 money,
    kasir06 money,
    kasir07 money,
    kasir08 money,
    kasir09 money,
    kasir10 money,
    ac01 money,
    ac02 money,
    ac03 money,
    ac04 money,
    ac05 money,
    ac06 money,
    ac07 money,
    ac08 money,
    ac09 money,
    ac10 money,
    lap01 money,
    lap02 money,
    lap03 money,
    lap04 money,
    lap05 money,
    lap06 money,
    lap07 money,
    lap08 money,
    lap09 money,
    lap10 money,
    withshipt money,
    okobat money,
    awas money,
    lap11 money,
    lap12 money,
    lap13 money,
    canceltr money
);
    DROP TABLE public.tbl_login;
       public         postgres    false                       1259    36101    tbl_logindata    TABLE     A  CREATE TABLE public.tbl_logindata (
    username character varying(20) DEFAULT NULL::character varying,
    shipt character varying(2) DEFAULT NULL::character varying,
    tanggal date,
    modul character varying(50) DEFAULT NULL::character varying,
    aksi character varying(50) DEFAULT NULL::character varying,
    trno character varying(50) DEFAULT NULL::character varying,
    ket character varying(100) DEFAULT NULL::character varying,
    jam character varying(10) DEFAULT NULL::character varying,
    namauser character varying(100) DEFAULT NULL::character varying
);
 !   DROP TABLE public.tbl_logindata;
       public         postgres    false            ?           1259    36112    tbl_marketplace    TABLE     ?  CREATE TABLE public.tbl_marketplace (
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    tindakan character(100) DEFAULT ''::bpchar NOT NULL,
    hargaklinik numeric(18,0) DEFAULT 0 NOT NULL,
    diskon numeric(18,0) DEFAULT 0 NOT NULL,
    diskonrp numeric(18,0) DEFAULT 0 NOT NULL,
    hargamarket numeric(18,0) DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.tbl_marketplace;
       public         postgres    false            ?           1259    36122    tbl_masterbhp    TABLE     ?  CREATE TABLE public.tbl_masterbhp (
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    satuan character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(18,0) DEFAULT 0 NOT NULL,
    harga numeric(18,0) DEFAULT 0 NOT NULL,
    totalharga numeric(18,0) DEFAULT 0 NOT NULL,
    tarifkey character(14) DEFAULT ''::bpchar NOT NULL,
    namaobat character(60) DEFAULT ''::bpchar NOT NULL
);
 !   DROP TABLE public.tbl_masterbhp;
       public         postgres    false            ?           1259    36133    tbl_modalkasir    TABLE     ?   CREATE TABLE public.tbl_modalkasir (
    namauser character(10) NOT NULL,
    tglkasir date NOT NULL,
    shipt numeric(1,0) NOT NULL,
    kasirkey character(21) NOT NULL,
    modalrp numeric(14,2) NOT NULL
);
 "   DROP TABLE public.tbl_modalkasir;
       public         postgres    false            ?           1259    36136    tbl_mutasikas    TABLE     ?  CREATE TABLE public.tbl_mutasikas (
    nomutasi character(16) DEFAULT ''::bpchar NOT NULL,
    acdari character(14) DEFAULT ''::bpchar NOT NULL,
    acke character(14) DEFAULT ''::bpchar NOT NULL,
    keterangan character(250) DEFAULT ''::bpchar NOT NULL,
    tglmutasi date NOT NULL,
    kasaktualrp numeric(18,2) DEFAULT 0 NOT NULL,
    mutasirp numeric(18,2) DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(10,0) DEFAULT 0 NOT NULL,
    bankcode character(10) DEFAULT ''::bpchar NOT NULL,
    etype numeric(18,0) DEFAULT 0 NOT NULL,
    vat money DEFAULT 0 NOT NULL,
    jenis integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_mutasikas;
       public         postgres    false            ?           1259    36153    tbl_namapos    TABLE     q  CREATE TABLE public.tbl_namapos (
    kodepos character(5) NOT NULL,
    namapost character(50) NOT NULL,
    ifilter character(1) NOT NULL,
    muncul money NOT NULL,
    daccountno character(14) NOT NULL,
    caccountno character(14) NOT NULL,
    nourut numeric(4,0) NOT NULL,
    cost_account character(14) NOT NULL,
    darijam character(10) NOT NULL,
    sampaijam character(10) NOT NULL,
    settime money NOT NULL,
    depid character(10) NOT NULL,
    depokey character(10) NOT NULL,
    multi money NOT NULL,
    urutrskey character(20) NOT NULL,
    keylaporan numeric(1,0) NOT NULL,
    laporan money NOT NULL
);
    DROP TABLE public.tbl_namapos;
       public         postgres    false            ?           1259    36156 
   tbl_namers    TABLE     z  CREATE TABLE public.tbl_namers (
    koders character(3) DEFAULT NULL::bpchar,
    namars character(40) DEFAULT NULL::bpchar,
    alamat1 character(99) DEFAULT NULL::bpchar,
    alamat2 character(100) DEFAULT NULL::bpchar,
    kota character(40) DEFAULT NULL::bpchar,
    phone character(40) DEFAULT NULL::bpchar,
    fax character(40) DEFAULT NULL::bpchar,
    owner character(40) DEFAULT NULL::bpchar,
    brand_id character(3) DEFAULT NULL::bpchar,
    kyds character(15) DEFAULT NULL::bpchar,
    locon money,
    loop numeric(1,0) DEFAULT NULL::numeric,
    pejabat1 character(30) DEFAULT NULL::bpchar,
    jabatan1 character(30) DEFAULT NULL::bpchar,
    ketbank character(250) DEFAULT NULL::bpchar,
    ketbank2 character(254) DEFAULT NULL::bpchar,
    ketbank3 character(254) DEFAULT NULL::bpchar,
    cabang numeric(1,0) DEFAULT NULL::numeric,
    pejabat2 character(30) DEFAULT NULL::bpchar,
    jabatan2 character(30) DEFAULT NULL::bpchar,
    jabatan3 character(30) DEFAULT NULL::bpchar,
    pejabat3 character(30) DEFAULT NULL::bpchar,
    jabatan4 character(30) DEFAULT NULL::bpchar,
    pejabat4 character(30) DEFAULT NULL::bpchar,
    namaapotik character(50) DEFAULT NULL::bpchar,
    apoteker character(100) DEFAULT NULL::bpchar,
    jabatan character(50) DEFAULT NULL::bpchar,
    noijin character(40) DEFAULT NULL::bpchar,
    npwp character(40) DEFAULT ''::bpchar,
    pkp character(40) DEFAULT ''::bpchar,
    pkptgl date,
    qupdate text DEFAULT ''::text NOT NULL,
    ictype numeric(18,0) DEFAULT 0 NOT NULL,
    textpromo text DEFAULT ''::text NOT NULL,
    promotext2 text DEFAULT ''::text,
    promotext3 text DEFAULT ''::text
);
    DROP TABLE public.tbl_namers;
       public         postgres    false            ?           1259    36196    tbl_nosokomial    TABLE     ?   CREATE TABLE public.tbl_nosokomial (
    kodenosok character(5) DEFAULT ''::bpchar NOT NULL,
    keterangan character varying(250) DEFAULT ''::character varying NOT NULL
);
 "   DROP TABLE public.tbl_nosokomial;
       public         postgres    false            ?           1259    36207 	   tbl_pajak    TABLE     ?   CREATE TABLE public.tbl_pajak (
    kodetax character(10) NOT NULL,
    namatax character(30) NOT NULL,
    prosentase numeric(5,2) NOT NULL
);
    DROP TABLE public.tbl_pajak;
       public         postgres    false            ?           1259    36210    tbl_pap    TABLE     ?	  CREATE TABLE public.tbl_pap (
    noreg character(16) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglposting date NOT NULL,
    tgljatuhtempo date NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    bayarcash numeric(12,2) DEFAULT 0 NOT NULL,
    adm numeric(12,2) DEFAULT 0 NOT NULL,
    drumum numeric(12,2) DEFAULT 0 NOT NULL,
    drsp numeric(12,2) DEFAULT 0 NOT NULL,
    drgigi numeric(12,2) DEFAULT 0 NOT NULL,
    tindakan numeric(12,2) DEFAULT 0 NOT NULL,
    totalpoli numeric(12,2) DEFAULT 0 NOT NULL,
    totalradio numeric(12,2) DEFAULT 0 NOT NULL,
    totallab numeric(12,2) DEFAULT 0 NOT NULL,
    totalbedah numeric(12,2) DEFAULT 0 NOT NULL,
    totalresep numeric(12,2) DEFAULT 0 NOT NULL,
    jumlahhutang numeric(12,2) DEFAULT 0 NOT NULL,
    jumlahbayar numeric(12,2) DEFAULT 0 NOT NULL,
    asal character(4) DEFAULT ''::bpchar NOT NULL,
    diagnosa character(50) DEFAULT ''::bpchar NOT NULL,
    lunas money DEFAULT 0 NOT NULL,
    pilih money DEFAULT 0 NOT NULL,
    prosenjamin numeric(3,0) DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    invoiceno character(16) DEFAULT ''::bpchar NOT NULL,
    aprove money DEFAULT 0 NOT NULL,
    suratjaminan money DEFAULT 0 NOT NULL,
    kartu money DEFAULT 0 NOT NULL,
    dokument money DEFAULT 0 NOT NULL,
    koders character(3) DEFAULT ''::bpchar NOT NULL,
    namapas character(50) DEFAULT ''::bpchar NOT NULL,
    nik character(50) DEFAULT ''::bpchar NOT NULL,
    nopolis character(30) DEFAULT ''::bpchar NOT NULL,
    pemegangpolis character(50) DEFAULT ''::bpchar NOT NULL,
    cabang numeric(1,0) DEFAULT 0 NOT NULL,
    selisihobat numeric(12,2) DEFAULT 0 NOT NULL,
    tanggalbayar date NOT NULL,
    agunan character(150) DEFAULT ''::bpchar NOT NULL,
    diskon numeric(4,0) DEFAULT 0 NOT NULL,
    diskontotal numeric(12,2) DEFAULT 0 NOT NULL,
    totalmedis numeric(12,2) DEFAULT 0 NOT NULL,
    jpk numeric(12,2) DEFAULT 0 NOT NULL,
    alone money DEFAULT 0 NOT NULL,
    cust_id2 character(5) DEFAULT ''::bpchar NOT NULL,
    nilaiklaim2 numeric(18,0) DEFAULT 0 NOT NULL,
    cust_id3 character(5) DEFAULT ''::bpchar NOT NULL,
    nilaiklaim3 numeric(18,0) DEFAULT 0 NOT NULL,
    invoice2 character(16) DEFAULT ''::bpchar NOT NULL,
    invoice3 character(16) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_pap;
       public         postgres    false            ?           1259    36266    tbl_papinvoice    TABLE     m  CREATE TABLE public.tbl_papinvoice (
    invoiceno character(16) DEFAULT ''::bpchar NOT NULL,
    invoicedate date NOT NULL,
    dariperiode date NOT NULL,
    sampaiperiode date NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    jumlahrp numeric(14,2) DEFAULT 0 NOT NULL,
    jenis numeric(1,0) DEFAULT 0 NOT NULL,
    diskon numeric(4,2) DEFAULT 0 NOT NULL,
    diskonrp numeric(14,2) DEFAULT 0 NOT NULL,
    totalnetrp numeric(14,2) DEFAULT 0 NOT NULL,
    totalbayarrp numeric(14,2) DEFAULT 0 NOT NULL,
    keterangan character(254) DEFAULT ''::bpchar NOT NULL,
    lunas money DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_papinvoice;
       public         postgres    false            ?           1259    36279 
   tbl_pasien    TABLE     N  CREATE TABLE public.tbl_pasien (
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    oldrekmed character(14) DEFAULT ''::bpchar NOT NULL,
    rekmedbeta character(16) DEFAULT ''::bpchar NOT NULL,
    nokartu character(15) DEFAULT ''::bpchar NOT NULL,
    noidentitas character(30) DEFAULT ''::bpchar NOT NULL,
    namapas character(80) DEFAULT ''::bpchar NOT NULL,
    preposisi character(10) DEFAULT ''::bpchar NOT NULL,
    jkel character(1) DEFAULT ''::bpchar NOT NULL,
    tgllahir date NOT NULL,
    umur character(30) DEFAULT ''::bpchar NOT NULL,
    tempatlahir character(40) DEFAULT ''::bpchar NOT NULL,
    alamat1 character(200) DEFAULT ''::bpchar NOT NULL,
    alamat2 character(200) DEFAULT ''::bpchar NOT NULL,
    phone character(20) DEFAULT ''::bpchar NOT NULL,
    pendidikan character(4) DEFAULT ''::bpchar NOT NULL,
    agama character(4) DEFAULT ''::bpchar NOT NULL,
    pekerjaan character(4) DEFAULT ''::bpchar NOT NULL,
    status character(4) DEFAULT ''::bpchar NOT NULL,
    goldarah character(3) DEFAULT ''::bpchar NOT NULL,
    wilayah character(5) DEFAULT ''::bpchar NOT NULL,
    penanggungjawab character(30) DEFAULT ''::bpchar NOT NULL,
    alamatp1 character(200) DEFAULT ''::bpchar NOT NULL,
    alamatp2 character(200) DEFAULT ''::bpchar NOT NULL,
    pekerjaanp character(20) DEFAULT ''::bpchar NOT NULL,
    phonep character(20) DEFAULT ''::bpchar NOT NULL,
    idpjawab character(10) DEFAULT ''::bpchar NOT NULL,
    orhub character(30) DEFAULT ''::bpchar NOT NULL,
    hubungan character(20) DEFAULT ''::bpchar NOT NULL,
    phonehub character(20) DEFAULT ''::bpchar NOT NULL,
    alamathub character(200) DEFAULT ''::bpchar NOT NULL,
    ada money DEFAULT 0 NOT NULL,
    lastnoreg character(12) DEFAULT ''::bpchar NOT NULL,
    lastpesan character(14) DEFAULT ''::bpchar NOT NULL,
    okpesan money DEFAULT 0 NOT NULL,
    lokasirm character(20) DEFAULT ''::bpchar NOT NULL,
    rakno character(20) DEFAULT ''::bpchar NOT NULL,
    blokir money DEFAULT 0 NOT NULL,
    ketblokir character(30) DEFAULT ''::bpchar NOT NULL,
    tinggibadan numeric(7,2) DEFAULT 0 NOT NULL,
    beratbadan numeric(7,2) DEFAULT 0 NOT NULL,
    alergi character(50) DEFAULT ''::bpchar NOT NULL,
    tglcetak date NOT NULL,
    rt character(10) DEFAULT ''::bpchar NOT NULL,
    rw character(10) DEFAULT ''::bpchar NOT NULL,
    handphone character(15) DEFAULT ''::bpchar NOT NULL,
    blok character(10) DEFAULT ''::bpchar NOT NULL,
    kelurahan character(20) DEFAULT ''::bpchar NOT NULL,
    kecamatan character(15) DEFAULT ''::bpchar NOT NULL,
    kabupaten character(10) DEFAULT ''::bpchar NOT NULL,
    pos character(10) DEFAULT ''::bpchar NOT NULL,
    namaibu character(120) DEFAULT ''::bpchar NOT NULL,
    namaayah character(120) DEFAULT ''::bpchar NOT NULL,
    namasuami character(120) DEFAULT ''::bpchar NOT NULL,
    suku character(25) DEFAULT ''::bpchar NOT NULL,
    jenispas character(4) DEFAULT ''::bpchar NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    nocard character(25) DEFAULT ''::bpchar NOT NULL,
    nik character(20) DEFAULT ''::bpchar NOT NULL,
    bagian character(20) DEFAULT ''::bpchar NOT NULL,
    karyawan character(40) DEFAULT ''::bpchar NOT NULL,
    namadepan character(50) DEFAULT ''::bpchar NOT NULL,
    namabelakang character(50) DEFAULT ''::bpchar NOT NULL,
    suf money,
    dawal date,
    dakhir date,
    kirimdata money DEFAULT 0 NOT NULL,
    alamatkirim character(250) DEFAULT ''::bpchar NOT NULL,
    twit character(50) DEFAULT ''::bpchar NOT NULL,
    fb character(50) DEFAULT ''::bpchar NOT NULL,
    email character(50) DEFAULT ''::bpchar NOT NULL,
    namakeluarga character(50) DEFAULT ''::bpchar NOT NULL,
    namapanggilan character(50) DEFAULT ''::bpchar NOT NULL,
    hphub character(30) DEFAULT ''::bpchar NOT NULL,
    jkelhub integer DEFAULT 0 NOT NULL,
    twithub character(50) DEFAULT ''::bpchar NOT NULL,
    fbhub character(50) DEFAULT ''::bpchar NOT NULL,
    emailhub character(50) DEFAULT ''::bpchar NOT NULL,
    lastvisit date NOT NULL,
    pekerhub character(4) DEFAULT ''::bpchar NOT NULL,
    hutang numeric(18,0) DEFAULT 0 NOT NULL,
    tglhutang date NOT NULL,
    nobukti character(14) DEFAULT ''::bpchar NOT NULL,
    tglupdate date NOT NULL,
    editpasien money DEFAULT 0 NOT NULL,
    idpas character(10) DEFAULT ''::bpchar NOT NULL,
    tglkembali date NOT NULL,
    hoby character(30) DEFAULT ''::bpchar NOT NULL,
    edital money DEFAULT 0 NOT NULL,
    hpbaru character(20) DEFAULT ''::bpchar,
    updatehp money DEFAULT 0,
    hplama character(20) DEFAULT ''::bpchar,
    ketedit character(60) DEFAULT 0,
    alamatbaru character(200) DEFAULT ''::bpchar
);
    DROP TABLE public.tbl_pasien;
       public         postgres    false            ?           1259    36371    tbl_pasien1    TABLE     7
  CREATE TABLE public.tbl_pasien1 (
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    oldrekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    memberid character varying(30) DEFAULT ''::character varying NOT NULL,
    namapas character varying(50) DEFAULT ''::character varying NOT NULL,
    preposisi character varying(3) DEFAULT ''::character varying NOT NULL,
    jkel character varying(1) DEFAULT ''::character varying NOT NULL,
    tgllahir date,
    umur character varying(30) DEFAULT ''::character varying NOT NULL,
    tempatlahir character varying(20) DEFAULT ''::character varying NOT NULL,
    noidentitas character varying(50) DEFAULT ''''::character varying NOT NULL,
    alamat1 character varying(100) DEFAULT ''::character varying NOT NULL,
    alamat2 character varying(100) DEFAULT ''::character varying NOT NULL,
    phone character varying(30) DEFAULT ''::character varying,
    hp character varying(30) DEFAULT ''::character varying NOT NULL,
    pendidikan character varying(5) DEFAULT ''::character varying NOT NULL,
    agama character varying(5) DEFAULT ''::character varying NOT NULL,
    pekerjaan character varying(5) DEFAULT ''''::character varying NOT NULL,
    status character varying(5) DEFAULT ''::character varying NOT NULL,
    wilayah character varying(5) DEFAULT ''::character varying NOT NULL,
    suku character varying(5) DEFAULT ''::character varying NOT NULL,
    penanggungjawab character varying(30) DEFAULT ''::character varying NOT NULL,
    alamatp1 character varying(100) DEFAULT ''::character varying NOT NULL,
    phonep character varying(30) DEFAULT ''::character varying NOT NULL,
    pekerjaanp character varying(30) DEFAULT ''::character varying NOT NULL,
    idpjawab character varying(30) DEFAULT ''::character varying NOT NULL,
    orhub character varying(30) DEFAULT ''::character varying NOT NULL,
    hubungan character varying(30) DEFAULT ''''::character varying NOT NULL,
    phonehub character varying(30) DEFAULT ''::character varying NOT NULL,
    alamathub character varying(100) DEFAULT ''::character varying NOT NULL,
    noasuransi character varying(50) DEFAULT ''::character varying NOT NULL,
    noreginap character varying(7) DEFAULT ''::character varying NOT NULL,
    cust_id character varying(5) DEFAULT ''::character varying NOT NULL,
    namauser character varying(14) DEFAULT ''::character varying NOT NULL,
    lokasirm character varying(20) DEFAULT ''::character varying NOT NULL,
    rakno character(10) DEFAULT ''::bpchar NOT NULL,
    alergi character(100) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_pasien1;
       public         postgres    false            ?           1259    36414    tbl_penjamin    TABLE     ?	  CREATE TABLE public.tbl_penjamin (
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    cust_nama character(100) DEFAULT ''::bpchar NOT NULL,
    provider character(5) DEFAULT ''::bpchar NOT NULL,
    cust_alamat1 character(240) DEFAULT ''::bpchar NOT NULL,
    cust_alamat2 character(249) DEFAULT ''::bpchar NOT NULL,
    cust_phone character(50) DEFAULT ''::bpchar NOT NULL,
    cust_email character(20) DEFAULT ''::bpchar NOT NULL,
    cust_contact character(100) DEFAULT ''::bpchar NOT NULL,
    admrj numeric(9,2) DEFAULT 0 NOT NULL,
    adminap numeric(4,2) DEFAULT 0 NOT NULL,
    farmasitype numeric(1,0) DEFAULT 0 NOT NULL,
    farmasirj numeric(4,2) DEFAULT 0 NOT NULL,
    farmasiinap numeric(4,2) DEFAULT 0 NOT NULL,
    irj money DEFAULT 0 NOT NULL,
    saldo_awal numeric(13,2) DEFAULT 0 NOT NULL,
    pertanggal date NOT NULL,
    arterm character(5) DEFAULT ''::bpchar NOT NULL,
    awaltmp numeric(13,2) DEFAULT 0 NOT NULL,
    hutangtmp numeric(13,2) DEFAULT 0 NOT NULL,
    bayartmp numeric(13,2) DEFAULT 0 NOT NULL,
    akhirtmp numeric(13,2) DEFAULT 0 NOT NULL,
    tgltmp date NOT NULL,
    cnt_urut numeric(5,0) DEFAULT 0 NOT NULL,
    urutmcu numeric(6,0) DEFAULT 0 NOT NULL,
    alamatklaim character(254) DEFAULT ''::bpchar NOT NULL,
    riprosen numeric(8,2) DEFAULT 0 NOT NULL,
    rjprosen numeric(8,2) DEFAULT 0 NOT NULL,
    dicover money DEFAULT 0 NOT NULL,
    bayarselisihobat money DEFAULT 0 NOT NULL,
    docrpt character(30) DEFAULT ''::bpchar NOT NULL,
    docrpti character(30) DEFAULT ''::bpchar NOT NULL,
    docinv character(30) DEFAULT ''::bpchar NOT NULL,
    discrj numeric(8,2) DEFAULT 0 NOT NULL,
    discri numeric(8,2) DEFAULT 0 NOT NULL,
    markuplus numeric(8,2) DEFAULT 0 NOT NULL,
    hargaobat numeric(1,0) DEFAULT 0 NOT NULL,
    ar_account character(14) DEFAULT ''::bpchar NOT NULL,
    admri numeric(12,0) DEFAULT 0 NOT NULL,
    diskonlab numeric(4,0) DEFAULT 0 NOT NULL,
    diskonradio numeric(4,0) DEFAULT 0 NOT NULL,
    diskonadm numeric(4,0) DEFAULT 0 NOT NULL,
    adaselisihri money DEFAULT 0 NOT NULL,
    admrizero money DEFAULT 0 NOT NULL,
    keterangan character(240) DEFAULT ''::bpchar NOT NULL,
    fax character(45) DEFAULT ''::bpchar NOT NULL,
    gunaselisih numeric(1,0) DEFAULT 0 NOT NULL,
    askes money DEFAULT 0 NOT NULL,
    admselisih numeric(4,0) DEFAULT 0 NOT NULL,
    pribadipr numeric(4,0) DEFAULT 0 NOT NULL,
    penjaminpr numeric(4,0) DEFAULT 0 NOT NULL,
    sharetype numeric(1,0) DEFAULT 0 NOT NULL,
    aktif money DEFAULT 1 NOT NULL
);
     DROP TABLE public.tbl_penjamin;
       public         postgres    false            ?           1259    36470    tbl_penjamin2    TABLE       CREATE TABLE public.tbl_penjamin2 (
    cust_id character(5) NOT NULL,
    cust_nama character(100) DEFAULT ''::bpchar NOT NULL,
    cust_alamat1 character(40) DEFAULT ''::bpchar NOT NULL,
    cust_alamat2 character(40) DEFAULT ''::bpchar NOT NULL,
    cust_phone character(20) DEFAULT ''::bpchar NOT NULL,
    cust_email character(20) DEFAULT ''::bpchar NOT NULL,
    cust_contact character(40) DEFAULT ''::bpchar NOT NULL,
    admrj numeric(10,2) DEFAULT 0 NOT NULL,
    adminap numeric(5,2) DEFAULT 0 NOT NULL,
    farmasirj numeric(5,2) DEFAULT 0 NOT NULL,
    farmasiinap numeric(5,2) DEFAULT 0 NOT NULL,
    irj money DEFAULT 0 NOT NULL,
    provider character(5) DEFAULT ''::bpchar NOT NULL,
    saldo_awal numeric(14,2) DEFAULT 0 NOT NULL,
    pertanggal date,
    arterm character(5) DEFAULT ''::bpchar NOT NULL,
    awaltmp numeric(14,2) DEFAULT 0 NOT NULL,
    hutangtmp numeric(14,2) DEFAULT 0 NOT NULL,
    bayartmp numeric(14,2) DEFAULT 0 NOT NULL,
    akhirtmp numeric(14,2) DEFAULT 0 NOT NULL,
    tgltmp date,
    cnt_urut numeric(5,0) DEFAULT 0 NOT NULL,
    urutmcu numeric(6,0) DEFAULT 0 NOT NULL,
    alamatklaim character varying(254) DEFAULT ''::character varying NOT NULL,
    riprosen numeric(9,2) DEFAULT 0 NOT NULL,
    rjprosen numeric(9,2) DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbl_penjamin2;
       public         postgres    false            ?           1259    36519    tbl_penjamin_grant    TABLE     ?  CREATE TABLE public.tbl_penjamin_grant (
    cust_id character(5) NOT NULL,
    rekmed character(10) NOT NULL,
    jaminan money NOT NULL,
    nopolis character(50) NOT NULL,
    tglkepesertaan date NOT NULL,
    maxkamar numeric(11,2) NOT NULL,
    kelas character(1) NOT NULL,
    jaminanrp numeric(11,2) NOT NULL,
    maxobatinap numeric(11,2) NOT NULL,
    maxbedah numeric(11,2) NOT NULL,
    maxpoli numeric(11,2) NOT NULL,
    pmedis numeric(11,2) NOT NULL,
    melahirkan numeric(11,2) NOT NULL,
    maxdokter numeric(11,2) NOT NULL,
    pemegangpolis character(40) NOT NULL,
    obatok money NOT NULL,
    bedahok money NOT NULL,
    pmedisok money NOT NULL,
    dokterok money NOT NULL,
    bagian character(40) NOT NULL,
    peserta character(1) NOT NULL,
    nip character(20) NOT NULL,
    kdgroup character(5) NOT NULL,
    noform character(20) NOT NULL,
    ketlain character(30) NOT NULL
);
 &   DROP TABLE public.tbl_penjamin_grant;
       public         postgres    false            ?           1259    36522    tbl_penjamin_obat    TABLE     ?   CREATE TABLE public.tbl_penjamin_obat (
    cust_id character(5) NOT NULL,
    kodeobat character(10) NOT NULL,
    cusref character(10) NOT NULL,
    jenisref numeric(1,0) NOT NULL
);
 %   DROP TABLE public.tbl_penjamin_obat;
       public         postgres    false            ?           1259    36525    tbl_penjamin_obatok    TABLE     t   CREATE TABLE public.tbl_penjamin_obatok (
    cusref character(10) NOT NULL,
    kodeobat character(10) NOT NULL
);
 '   DROP TABLE public.tbl_penjamin_obatok;
       public         postgres    false            ?           1259    36528    tbl_penjamin_obt    TABLE     ?   CREATE TABLE public.tbl_penjamin_obt (
    cust_id character(5) NOT NULL,
    kodeobat character(10) NOT NULL,
    cusref character(10) NOT NULL,
    jenisref numeric(1,0) NOT NULL,
    doktertype numeric(1,0) NOT NULL
);
 $   DROP TABLE public.tbl_penjamin_obt;
       public         postgres    false            ?           1259    36501    tbl_penjamingrant    TABLE     ?  CREATE TABLE public.tbl_penjamingrant (
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    jaminan money DEFAULT 0 NOT NULL,
    nopolis character(30) DEFAULT ''::bpchar NOT NULL,
    nik character(50) DEFAULT ''::bpchar NOT NULL,
    tglkepesertaan date,
    tglberakhir date,
    maxkamar numeric(12,2) DEFAULT NULL::numeric,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    jaminanrp numeric(12,2) DEFAULT NULL::numeric,
    maxobatinap numeric(12,2) DEFAULT NULL::numeric,
    maxbedah numeric(12,2) DEFAULT NULL::numeric,
    maxpoli numeric(12,2) DEFAULT NULL::numeric,
    pmedis numeric(12,2) DEFAULT NULL::numeric,
    melahirkan numeric(12,2) DEFAULT NULL::numeric,
    maxdokter numeric(12,2) DEFAULT NULL::numeric,
    pemegangpolis character(40) DEFAULT ''::bpchar NOT NULL,
    obatok money,
    bedahok money,
    pmedisok money,
    dokterok money
);
 %   DROP TABLE public.tbl_penjamingrant;
       public         postgres    false            ?           1259    36531    tbl_periode    TABLE     ?   CREATE TABLE public.tbl_periode (
    apoperiode date NOT NULL,
    rsperiode date NOT NULL,
    glperiode date NOT NULL,
    fiskalperiode date NOT NULL,
    hppperiode date,
    daritgl date NOT NULL,
    sdtgl date NOT NULL,
    logperiode date
);
    DROP TABLE public.tbl_periode;
       public         postgres    false            ?           1259    36534    tbl_petugas    TABLE     ?   CREATE TABLE public.tbl_petugas (
    nokk character(10) NOT NULL,
    namapetugas character(40) NOT NULL,
    kodepos character(5) NOT NULL
);
    DROP TABLE public.tbl_petugas;
       public         postgres    false            ?           1259    36580    tbl_praktek    TABLE     \  CREATE TABLE public.tbl_praktek (
    kodokter character varying(10) NOT NULL,
    kodepos character varying(5) NOT NULL,
    hari character varying(10) NOT NULL,
    ketpraktek character varying(30) NOT NULL,
    jammulai character varying(10) NOT NULL,
    jamselesai character varying(10) NOT NULL,
    ckey character(3) DEFAULT NULL::bpchar
);
    DROP TABLE public.tbl_praktek;
       public         postgres    false            ?           1259    36584    tbl_premiumember    TABLE     ?  CREATE TABLE public.tbl_premiumember (
    memberid character(10) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    tglawal date NOT NULL,
    tglakhir date NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    nilairp numeric(18,0) DEFAULT 0 NOT NULL,
    username character(20) DEFAULT ''::bpchar NOT NULL
);
 $   DROP TABLE public.tbl_premiumember;
       public         postgres    false            ?           1259    36595    tbl_premiumembertr    TABLE     ?  CREATE TABLE public.tbl_premiumembertr (
    noreg character(12) NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    memberid character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    tgltr date NOT NULL,
    pemilik integer DEFAULT 0 NOT NULL,
    nilaitr numeric(18,0) DEFAULT 0 NOT NULL,
    baru integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public.tbl_premiumembertr;
       public         postgres    false            ?           1259    36606 	   tbl_promo    TABLE     ?  CREATE TABLE public.tbl_promo (
    kodepromo character(10) DEFAULT ''::bpchar NOT NULL,
    namapromo character(50) DEFAULT ''::bpchar NOT NULL,
    ketpromo text DEFAULT ''::text NOT NULL,
    jenispromo character(10) DEFAULT ''::bpchar NOT NULL,
    reward numeric(18,0) DEFAULT 0 NOT NULL,
    tglmulai date NOT NULL,
    tglselesai date NOT NULL,
    stpromo integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_promo;
       public         postgres    false            ?           1259    36620    tbl_promocabang    TABLE     ?   CREATE TABLE public.tbl_promocabang (
    kodepromo character(10) DEFAULT ''::bpchar NOT NULL,
    clientid character(3) DEFAULT ''::bpchar NOT NULL,
    promo money DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.tbl_promocabang;
       public         postgres    false            ?           1259    36626    tbl_promohadiah    TABLE     ?   CREATE TABLE public.tbl_promohadiah (
    kohadiah character(10) DEFAULT ''::bpchar NOT NULL,
    namahadiah character(50) DEFAULT ''::bpchar NOT NULL
);
 #   DROP TABLE public.tbl_promohadiah;
       public         postgres    false            ?           1259    36633    tbl_promojenis    TABLE     ?   CREATE TABLE public.tbl_promojenis (
    kjenis character(10) DEFAULT ''::bpchar NOT NULL,
    jenispromo character(30) DEFAULT ''::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_promojenis;
       public         postgres    false            ?           1259    36640    tbl_promotext    TABLE     ?   CREATE TABLE public.tbl_promotext (
    clientid character(3) NOT NULL,
    promotext text DEFAULT ''::text NOT NULL,
    promotext2 text DEFAULT ''::text,
    promotext3 text DEFAULT ''::text
);
 !   DROP TABLE public.tbl_promotext;
       public         postgres    false            ?           1259    36659    tbl_radioexpertbytea    TABLE     ?   CREATE TABLE public.tbl_radioexpertbytea (
    noradio character(16) NOT NULL,
    radiokey character(20) NOT NULL,
    namadicom character(100) NOT NULL
);
 (   DROP TABLE public.tbl_radioexpertbytea;
       public         postgres    false            ?           1259    36662    tbl_radionormal    TABLE     ?   CREATE TABLE public.tbl_radionormal (
    kodetarif character(10) DEFAULT NULL::bpchar,
    tindakan character varying(150) DEFAULT NULL::character varying,
    radionormal character varying(8000) DEFAULT NULL::character varying
);
 #   DROP TABLE public.tbl_radionormal;
       public         postgres    false            ?           1259    36671    tbl_rawatklaim    TABLE     	  CREATE TABLE public.tbl_rawatklaim (
    noreg character(12) DEFAULT NULL::bpchar,
    klaimke character(3) DEFAULT NULL::bpchar,
    rawat1 date,
    rawat2 date,
    nilairawat numeric(18,0) DEFAULT NULL::numeric,
    admpr numeric(18,0) DEFAULT NULL::numeric
);
 "   DROP TABLE public.tbl_rawatklaim;
       public         postgres    false            ?           1259    36678    tbl_regbook    TABLE     ?   CREATE TABLE public.tbl_regbook (
    noreg character varying(12) NOT NULL,
    posisi character varying(1) DEFAULT 'O'::character varying NOT NULL
);
    DROP TABLE public.tbl_regbook;
       public         postgres    false            ?           1259    36684 
   tbl_regist    TABLE       CREATE TABLE public.tbl_regist (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglmasuk date NOT NULL,
    jam character(10) DEFAULT ''::bpchar NOT NULL,
    jenispas character(4) DEFAULT ''::bpchar NOT NULL,
    tujuan numeric(1,0) DEFAULT 0 NOT NULL,
    koderuang character(10) DEFAULT ''::bpchar NOT NULL,
    kodekamar character(12) DEFAULT ''::bpchar NOT NULL,
    oldruang character(10) DEFAULT ''::bpchar NOT NULL,
    oldkamar character(12) DEFAULT ''::bpchar NOT NULL,
    posruang money DEFAULT 0 NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    baru money DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    tglkeluar date NOT NULL,
    jamkeluar character(8) DEFAULT ''::bpchar NOT NULL,
    tglpindah date NOT NULL,
    jampindah character(10) DEFAULT ''::bpchar NOT NULL,
    ruanglalu character(10) DEFAULT ''::bpchar NOT NULL,
    kamarlalu character(12) DEFAULT ''::bpchar NOT NULL,
    pmove money DEFAULT 0 NOT NULL,
    jjamin numeric(1,0) DEFAULT 0 NOT NULL,
    pasiendatang money DEFAULT 0 NOT NULL,
    panggilan money DEFAULT 0 NOT NULL,
    diperiksa money DEFAULT 0 NOT NULL,
    ruangkey character(15) DEFAULT ''::bpchar NOT NULL,
    ruangurut numeric(3,0) DEFAULT 0 NOT NULL,
    noregref character(12) DEFAULT ''::bpchar NOT NULL,
    jaminanrp numeric(12,2) DEFAULT 0 NOT NULL,
    pasref numeric(1,0) DEFAULT 0 NOT NULL,
    sapindah numeric(1,0) DEFAULT 0 NOT NULL,
    antrino numeric(4,0) DEFAULT 0 NOT NULL,
    drpengirim character(10) DEFAULT ''::bpchar NOT NULL,
    totalrp numeric(14,2) DEFAULT 0 NOT NULL,
    jenisinap numeric(1,0) DEFAULT 0 NOT NULL,
    paketinap character(16) DEFAULT ''::bpchar NOT NULL,
    paketlab character(16) DEFAULT ''::bpchar NOT NULL,
    paketradio character(16) DEFAULT ''::bpchar NOT NULL,
    paketbedah character(16) DEFAULT ''::bpchar NOT NULL,
    paketid character(5) DEFAULT ''::bpchar NOT NULL,
    paketobat character(16) DEFAULT ''::bpchar NOT NULL,
    apoclose money DEFAULT 0 NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(1,0) DEFAULT 0 NOT NULL,
    batal money DEFAULT 0 NOT NULL,
    batalkarena character(40) DEFAULT ''::bpchar NOT NULL,
    kelasjamin character(1) DEFAULT ''::bpchar NOT NULL,
    obat1 money DEFAULT 0 NOT NULL,
    obat2 money DEFAULT 0 NOT NULL,
    labclose money DEFAULT 0 NOT NULL,
    radclose money DEFAULT 0 NOT NULL,
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    typepas numeric(1,0) DEFAULT 0 NOT NULL,
    golpas numeric(1,0) DEFAULT 0 NOT NULL,
    kopos character(4) DEFAULT ''::bpchar NOT NULL,
    bumil numeric(10,0) DEFAULT 0 NOT NULL,
    labok money DEFAULT 0 NOT NULL,
    radiook money DEFAULT 0 NOT NULL,
    resepok money DEFAULT 0 NOT NULL,
    jamreq character(10) DEFAULT ''::bpchar NOT NULL,
    kartu money DEFAULT 0 NOT NULL,
    kelasawal character(1) DEFAULT ''::bpchar NOT NULL,
    antri2 numeric(4,0) DEFAULT 0 NOT NULL,
    antri3 numeric(4,0) DEFAULT 0 NOT NULL,
    kodepos2 character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter2 character(10) DEFAULT ''::bpchar NOT NULL,
    kodepos3 character(5) DEFAULT ''::bpchar NOT NULL,
    kodokter3 character(10) DEFAULT ''::bpchar NOT NULL,
    noreg2 character(12) DEFAULT ''::bpchar NOT NULL,
    noreg3 character(12) DEFAULT ''::bpchar NOT NULL,
    duapoli money DEFAULT 0 NOT NULL,
    golaskes character(3) DEFAULT ''::bpchar NOT NULL,
    noadm money DEFAULT 0 NOT NULL,
    verifikasi money DEFAULT 0 NOT NULL,
    shiptke numeric(18,0) DEFAULT 0 NOT NULL,
    tglserah date NOT NULL,
    kirimdata money DEFAULT 0 NOT NULL,
    nocall character(24) DEFAULT ''::bpchar NOT NULL,
    totalpromo numeric(18,0) DEFAULT 0 NOT NULL,
    norujuk character(16) DEFAULT ''::bpchar NOT NULL,
    memberid character(10) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_regist;
       public         postgres    false            ?           1259    36773    tbl_registrasi    TABLE     ?
  CREATE TABLE public.tbl_registrasi (
    noreg character varying(12) DEFAULT ''::character varying NOT NULL,
    rekmed character varying(10) DEFAULT ''::character varying NOT NULL,
    tglmasuk date NOT NULL,
    jam character varying(12) DEFAULT ''::character varying NOT NULL,
    jenispas character varying(4) DEFAULT ''::character varying NOT NULL,
    tujuan numeric(18,0) DEFAULT 2 NOT NULL,
    koderuang character varying(10) DEFAULT ''::character varying NOT NULL,
    kodekamar character varying(12) DEFAULT ''::character varying NOT NULL,
    oldruang character varying(10) DEFAULT ''::character varying NOT NULL,
    oldkamar character varying(12) DEFAULT ''::character varying NOT NULL,
    posruang money DEFAULT 0 NOT NULL,
    jenisinap integer DEFAULT 1 NOT NULL,
    kodepos character varying(5) DEFAULT ''::character varying NOT NULL,
    kelas character varying(1) DEFAULT ''::character varying NOT NULL,
    cust_id character varying(5) DEFAULT ''::character varying NOT NULL,
    kodokter character varying(10) DEFAULT ''::character varying NOT NULL,
    baru numeric(18,0) DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    tglkeluar date,
    jamkeluar character(12) DEFAULT ''::bpchar NOT NULL,
    tglpindah date,
    jampindah character varying(10) DEFAULT ''::character varying,
    ruanglalu character varying(10) DEFAULT ''::character varying,
    pmove money DEFAULT 0,
    siid numeric(18,0) DEFAULT 0 NOT NULL,
    namauser character varying(14) DEFAULT ''::character varying,
    kelasjamin character(1) DEFAULT ''::bpchar NOT NULL,
    jenisjamin integer DEFAULT 0,
    pindah money DEFAULT 0 NOT NULL,
    noregref character(12) DEFAULT ''::bpchar NOT NULL,
    pasref integer DEFAULT 0 NOT NULL,
    batal money DEFAULT 0 NOT NULL,
    batalkarena character(40) DEFAULT ''::bpchar NOT NULL,
    policlose money DEFAULT 0 NOT NULL,
    apoclose money DEFAULT 0 NOT NULL,
    radioclose money DEFAULT 0 NOT NULL,
    labclose money DEFAULT 0 NOT NULL,
    periksa money DEFAULT 0 NOT NULL,
    drpengirim character(10) DEFAULT ''::bpchar NOT NULL,
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    admrp numeric(18,0) DEFAULT 0 NOT NULL,
    tarifrs numeric(18,0) DEFAULT 0 NOT NULL,
    tarifdr numeric(18,0) DEFAULT 0 NOT NULL,
    jasa3 numeric(18,0) DEFAULT 0 NOT NULL,
    jasa4 numeric(18,0) DEFAULT 0 NOT NULL,
    jasa5 numeric(18,0) DEFAULT 0 NOT NULL,
    askes numeric(18,0) DEFAULT 0 NOT NULL,
    askesgol character varying(3) DEFAULT ''::character varying,
    jamkesmas numeric(18,0) DEFAULT 0 NOT NULL,
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    bayar money DEFAULT 0 NOT NULL,
    ssid numeric(18,0) DEFAULT 0 NOT NULL,
    tglserah date
);
 "   DROP TABLE public.tbl_registrasi;
       public         postgres    false            ?           1259    36827    tbl_rekamgambar    TABLE     ?  CREATE TABLE public.tbl_rekamgambar (
    "NOREG" character(12) NOT NULL,
    "REKMED" character(10) NOT NULL,
    "COMMENT1" character(200) DEFAULT NULL::bpchar,
    "COMMENT2" character(200) DEFAULT NULL::bpchar,
    "COMMENT3" character(200) DEFAULT NULL::bpchar,
    "COMMENT4" character(200) DEFAULT NULL::bpchar,
    "COMMENT5" character(200) DEFAULT NULL::bpchar,
    "COMMENT6" character(200) DEFAULT NULL::bpchar,
    "COMMENT7" character(200) DEFAULT NULL::bpchar,
    "COMMENT8" character(200) DEFAULT NULL::bpchar,
    "GB1" text,
    "GB2" text,
    "GB3" text,
    "GB4" text,
    "GB5" text,
    "GB6" text,
    "GB7" text,
    "GB8" text
);
 #   DROP TABLE public.tbl_rekamgambar;
       public         postgres    false            ?           1259    36841    tbl_rekammedis    TABLE     `  CREATE TABLE public.tbl_rekammedis (
    noreg character varying(12) NOT NULL,
    rekmed character varying(10) NOT NULL,
    tglperiksa date NOT NULL,
    jam character varying(12) DEFAULT ''::character varying NOT NULL,
    beratbadan character varying(10) DEFAULT ''::character varying,
    tujuan numeric(18,0) DEFAULT NULL::numeric,
    kodepos character varying(5) DEFAULT NULL::character varying,
    koderuang character varying(10) DEFAULT NULL::character varying,
    kodokter character varying(10) DEFAULT NULL::character varying,
    keluhanawal character varying(400) DEFAULT NULL::character varying,
    diagnosa character varying(300) DEFAULT ''::character varying,
    anjuran character varying(300) DEFAULT ''::character varying,
    resep character varying(300) DEFAULT ''::character varying,
    baru numeric(18,0) DEFAULT 0,
    tglkeluar date,
    jenisinap numeric(18,0) DEFAULT 0,
    tgloperasi date,
    pelayanan character varying(10) DEFAULT ''::character varying NOT NULL,
    caramasuk character varying(10) DEFAULT ''::character varying NOT NULL,
    ketmasuk character varying(30) DEFAULT NULL::character varying,
    prosedurmasuk character varying(10) DEFAULT ''::character varying NOT NULL,
    kelas character varying(10) DEFAULT ''::character varying NOT NULL,
    diagnosadepkes character varying(250) DEFAULT ''::character varying NOT NULL,
    penyebab_cidera character varying(250) DEFAULT ''::character varying NOT NULL,
    morfologi character varying(250) DEFAULT ''::character varying NOT NULL,
    operasi character varying(10) DEFAULT ''::character varying NOT NULL,
    gol_operasi character varying(10) DEFAULT ''::character varying NOT NULL,
    lokasioperasi character varying(10) DEFAULT ''::character varying NOT NULL,
    infeksi_nosok integer DEFAULT 0 NOT NULL,
    jenis_nosok character varying(10) DEFAULT ''::character varying NOT NULL,
    ketunaan character varying(30) DEFAULT ''::character varying NOT NULL,
    tranfusidarah integer DEFAULT 0 NOT NULL,
    jumlahdarah integer DEFAULT 0 NOT NULL,
    tempat_lahir integer DEFAULT 0 NOT NULL,
    antenatal integer DEFAULT 0 NOT NULL,
    caralahir character varying(10) DEFAULT ''::character varying NOT NULL,
    paborsi character varying(10) DEFAULT ''::character varying,
    masagastesi integer DEFAULT 0 NOT NULL,
    ygbantusalin character varying(10) DEFAULT ''::character varying NOT NULL,
    tgllahirsebelum date,
    tgllahirsekarang date,
    jumlahbayi integer DEFAULT 0 NOT NULL,
    jikakembar character varying(10) DEFAULT ''::character varying NOT NULL,
    keadaanlahir character varying(10) DEFAULT ''::character varying NOT NULL,
    beratbayi integer DEFAULT 0 NOT NULL,
    panjangbayi integer DEFAULT 0 NOT NULL,
    jmlahirhidup integer DEFAULT 0 NOT NULL,
    jmlahirmati integer DEFAULT 0 NOT NULL,
    jmabortus integer DEFAULT 0 NOT NULL,
    penyebabmati character varying(10) DEFAULT ''::character varying NOT NULL,
    carakeluar character varying(10) DEFAULT ''::character varying NOT NULL,
    keadaankeluar character varying(10) DEFAULT ''::character varying NOT NULL,
    carabayar character varying(10) DEFAULT ''::character varying NOT NULL,
    dirawatke numeric(18,0) DEFAULT 0 NOT NULL,
    siid numeric(18,0) DEFAULT 0 NOT NULL,
    icdutama character varying(10) DEFAULT NULL::character varying,
    icdmorfologi character varying(10) DEFAULT NULL::character varying,
    icdcidera character varying(10) DEFAULT NULL::character varying,
    tindakandr character varying(10) DEFAULT NULL::character varying,
    jmdarah character varying(10) DEFAULT NULL::character varying,
    jamkeluar character(10) DEFAULT NULL::bpchar,
    layigd character varying(10) DEFAULT NULL::character varying,
    rmmami character varying(50) DEFAULT NULL::character varying,
    asalpasien numeric(18,0) DEFAULT NULL::numeric,
    matineo numeric(18,0) DEFAULT NULL::numeric,
    tt1 numeric(18,0) DEFAULT NULL::numeric,
    tt2 numeric(18,0) DEFAULT NULL::numeric,
    ahli numeric(18,0) DEFAULT NULL::numeric,
    "KODRRAWAT" character(10) DEFAULT NULL::bpchar,
    sebabnosok numeric(1,0) DEFAULT NULL::numeric,
    kirimdata money DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_rekammedis;
       public         postgres    false            ?           1259    36913    tbl_rekammedis1    TABLE     R  CREATE TABLE public.tbl_rekammedis1 (
    noreg character varying(12) NOT NULL,
    "REKMED" character varying(10) NOT NULL,
    depkesid character varying(10) NOT NULL,
    depkesgroup character varying(5) NOT NULL,
    siid character varying(10) DEFAULT ''::character varying NOT NULL,
    jmperiksa numeric(18,0) DEFAULT 0 NOT NULL
);
 #   DROP TABLE public.tbl_rekammedis1;
       public         postgres    false            ?           1259    36918    tbl_rekammedis2    TABLE     c  CREATE TABLE public.tbl_rekammedis2 (
    noreg character varying(12) NOT NULL,
    rekmed character varying(10) NOT NULL,
    jiwa character varying(10) DEFAULT NULL::character varying,
    kb character varying(10) DEFAULT NULL::character varying,
    krumah character varying(10) DEFAULT NULL::character varying,
    rehab character varying(10) DEFAULT NULL::character varying,
    kgigi character varying(10) DEFAULT NULL::character varying,
    khusus character varying(10) DEFAULT NULL::character varying,
    imunisasi character varying(10) DEFAULT NULL::character varying,
    imunke integer NOT NULL
);
 #   DROP TABLE public.tbl_rekammedis2;
       public         postgres    false            ?           1259    36931    tbl_rekammedisRS    TABLE     ?	  CREATE TABLE public."tbl_rekammedisRS" (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglperiksa date NOT NULL,
    tglkeluar date NOT NULL,
    jam character(8) DEFAULT ''::bpchar NOT NULL,
    tujuan numeric(1,0) DEFAULT 0 NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    koderuang character(10) DEFAULT ''::bpchar NOT NULL,
    keluhanawal character(1000) DEFAULT ''::bpchar NOT NULL,
    pfisik character(1000) DEFAULT ''::bpchar NOT NULL,
    diagnosa character(1000) DEFAULT ''::bpchar NOT NULL,
    simpul character(1000) DEFAULT ''::bpchar NOT NULL,
    anjuran character(1000) DEFAULT ''::bpchar NOT NULL,
    resep character(1000) DEFAULT ''::bpchar NOT NULL,
    kodeicd character(14) DEFAULT ''::bpchar NOT NULL,
    kodeicd2 character(14) DEFAULT ''::bpchar NOT NULL,
    kodeicd3 character(14) DEFAULT ''::bpchar NOT NULL,
    keadaan_pulang character(4) DEFAULT ''::bpchar NOT NULL,
    ketpulang character(30) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    tglkonsul date NOT NULL,
    rcounter numeric(4,0) DEFAULT 0 NOT NULL,
    nadi numeric(10,2) DEFAULT 0 NOT NULL,
    nadi2 numeric(10,2) DEFAULT 0 NOT NULL,
    nafas numeric(10,2) DEFAULT 0 NOT NULL,
    tdarah numeric(10,2) DEFAULT 0 NOT NULL,
    tdarah1 numeric(10,2) DEFAULT 0 NOT NULL,
    suhu numeric(10,2) DEFAULT 0 NOT NULL,
    tinggibadan numeric(10,2) DEFAULT 0 NOT NULL,
    beratbadan numeric(10,2) DEFAULT 0 NOT NULL,
    bmi numeric(10,2) DEFAULT 0 NOT NULL,
    bmiresult character(20) DEFAULT ''::bpchar NOT NULL,
    tglkembali date NOT NULL,
    jamkembali character(10) DEFAULT ''::bpchar NOT NULL,
    nojanji character(16) DEFAULT ''::bpchar NOT NULL,
    dikonsulkepoli character(5) DEFAULT ''::bpchar NOT NULL,
    dikonsuldr character(10) DEFAULT ''::bpchar NOT NULL,
    jamdikonsul character(10) DEFAULT ''::bpchar NOT NULL,
    tgldikonsul date NOT NULL,
    noregkonsul character(12) DEFAULT ''::bpchar NOT NULL,
    surat1 character(16) DEFAULT ''::bpchar NOT NULL,
    surat2 character(16) DEFAULT ''::bpchar NOT NULL,
    surat3 character(16) DEFAULT ''::bpchar NOT NULL,
    surat4 character(16) DEFAULT ''::bpchar NOT NULL,
    alasanpulang character(100) DEFAULT ''::bpchar NOT NULL,
    clientid character(3) DEFAULT ''::bpchar NOT NULL,
    eresep money DEFAULT 0 NOT NULL,
    nadokter character(100) DEFAULT ''::bpchar NOT NULL
);
 &   DROP TABLE public."tbl_rekammedisRS";
       public         postgres    false            ?           1259    36928    tbl_rekammedisrl3    TABLE     }  CREATE TABLE public.tbl_rekammedisrl3 (
    depkesid character varying(10) NOT NULL,
    depkesket character varying(50) NOT NULL,
    n1 numeric(18,0) NOT NULL,
    n2 numeric(18,0) NOT NULL,
    n3 numeric(18,0) NOT NULL,
    n4 numeric(18,0) NOT NULL,
    n5 numeric(18,0) NOT NULL,
    n6 numeric(18,0) NOT NULL,
    n7 numeric(18,0) NOT NULL,
    n8 numeric(18,0) NOT NULL
);
 %   DROP TABLE public.tbl_rekammedisrl3;
       public         postgres    false            ?           1259    36982    tbl_rekapstock    TABLE     ?   CREATE TABLE public.tbl_rekapstock (
    gudang character(10) DEFAULT ''::bpchar NOT NULL,
    periode character(6) DEFAULT ''::bpchar NOT NULL,
    qtysedia numeric(10,0) DEFAULT 0 NOT NULL,
    nilaisedia numeric(18,0) DEFAULT 0 NOT NULL
);
 "   DROP TABLE public.tbl_rekapstock;
       public         postgres    false            ?           1259    36989    tbl_rencanad    TABLE     ?  CREATE TABLE public.tbl_rencanad (
    no_rencana character(14) DEFAULT ''::bpchar NOT NULL,
    kodeobat character(10) DEFAULT ''::bpchar NOT NULL,
    qty numeric(10,2) DEFAULT 0 NOT NULL,
    satuan character(15) DEFAULT ''::bpchar NOT NULL,
    harga numeric(18,2) DEFAULT 0 NOT NULL,
    total numeric(18,2) DEFAULT 0 NOT NULL,
    setuju money DEFAULT 0 NOT NULL,
    renkey character(24) DEFAULT ''::bpchar NOT NULL,
    keterangan character(200) DEFAULT ''::bpchar NOT NULL
);
     DROP TABLE public.tbl_rencanad;
       public         postgres    false            ?           1259    37003    tbl_rencanah    TABLE     F  CREATE TABLE public.tbl_rencanah (
    no_rencana character(14) DEFAULT ''::bpchar NOT NULL,
    tgl_rencana date NOT NULL,
    vendor_id character(10) DEFAULT ''::bpchar NOT NULL,
    keterangan character varying(200) DEFAULT ''::character varying NOT NULL,
    counter numeric(18,0) DEFAULT 0 NOT NULL,
    username character(10) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    useredit character(10) DEFAULT ''::bpchar NOT NULL,
    tgledit date NOT NULL,
    jamedit character(10) DEFAULT ''::bpchar NOT NULL,
    proses money DEFAULT 0 NOT NULL
);
     DROP TABLE public.tbl_rencanah;
       public         postgres    false            ?           1259    37017    tbl_reportgrant    TABLE        CREATE TABLE public.tbl_reportgrant (
    username character(14) DEFAULT ''::bpchar NOT NULL,
    reportket character(80) DEFAULT ''::bpchar NOT NULL,
    reportcode character(5) DEFAULT ''::bpchar NOT NULL,
    granted numeric(18,0) DEFAULT 1 NOT NULL
);
 #   DROP TABLE public.tbl_reportgrant;
       public         postgres    false            ?           1259    37024 	   tbl_rl3h2    TABLE     B  CREATE TABLE public.tbl_rl3h2 (
    a1 money DEFAULT 0 NOT NULL,
    a2 money DEFAULT 0 NOT NULL,
    a3 money DEFAULT 0 NOT NULL,
    a4 money DEFAULT 0 NOT NULL,
    a5 money DEFAULT 0 NOT NULL,
    a6 money DEFAULT 0 NOT NULL,
    a7 money DEFAULT 0 NOT NULL,
    a8 money DEFAULT 0 NOT NULL,
    a9 money DEFAULT 0 NOT NULL,
    a10 money DEFAULT 0 NOT NULL,
    a11 money DEFAULT 0 NOT NULL,
    a12 money DEFAULT 0 NOT NULL,
    b1 money DEFAULT 0 NOT NULL,
    b2 money DEFAULT 0 NOT NULL,
    b3 money DEFAULT 0 NOT NULL,
    b4 money DEFAULT 0 NOT NULL,
    b5 money DEFAULT 0 NOT NULL,
    b6 money DEFAULT 0 NOT NULL,
    b7 money DEFAULT 0 NOT NULL,
    b8 money DEFAULT 0 NOT NULL,
    b9 money DEFAULT 0 NOT NULL,
    c1 money DEFAULT 0 NOT NULL,
    c2 money DEFAULT 0 NOT NULL,
    c3 money DEFAULT 0 NOT NULL,
    c4 money DEFAULT 0 NOT NULL,
    c5 money DEFAULT 0 NOT NULL,
    c6 money DEFAULT 0 NOT NULL,
    c7 money DEFAULT 0 NOT NULL,
    c8 money DEFAULT 0 NOT NULL,
    c9 money DEFAULT 0 NOT NULL,
    c10 money DEFAULT 0 NOT NULL,
    c11 money DEFAULT 0 NOT NULL,
    c12 money DEFAULT 0 NOT NULL,
    c13 money DEFAULT 0 NOT NULL,
    c14 money DEFAULT 0 NOT NULL,
    c15 money DEFAULT 0 NOT NULL,
    d1 money DEFAULT 0 NOT NULL,
    d2 money DEFAULT 0 NOT NULL,
    d3 money DEFAULT 0 NOT NULL,
    d4 money DEFAULT 0 NOT NULL,
    d5 money DEFAULT 0 NOT NULL,
    d6 money DEFAULT 0 NOT NULL,
    e1 money DEFAULT 0 NOT NULL,
    f1 money DEFAULT 0 NOT NULL,
    f2 money DEFAULT 0 NOT NULL,
    f3 money DEFAULT 0 NOT NULL,
    f4 money DEFAULT 0 NOT NULL,
    f5 money DEFAULT 0 NOT NULL,
    g1 money DEFAULT 0 NOT NULL,
    g2 money DEFAULT 0 NOT NULL,
    g3 money DEFAULT 0 NOT NULL,
    g4 money DEFAULT 0 NOT NULL,
    g5 money DEFAULT 0 NOT NULL,
    g6 money DEFAULT 0 NOT NULL,
    g7 money DEFAULT 0 NOT NULL,
    g8 money DEFAULT 0 NOT NULL,
    g9 money DEFAULT 0 NOT NULL,
    h1 money DEFAULT 0 NOT NULL,
    h2 money DEFAULT 0 NOT NULL,
    h3 money DEFAULT 0 NOT NULL,
    i1 money DEFAULT 0 NOT NULL,
    i2 money DEFAULT 0 NOT NULL,
    i3 money DEFAULT 0 NOT NULL,
    i4 money DEFAULT 0 NOT NULL,
    i5 money DEFAULT 0 NOT NULL,
    i6 money DEFAULT 0 NOT NULL,
    i7 money DEFAULT 0 NOT NULL,
    j1 money DEFAULT 0 NOT NULL,
    j2 money DEFAULT 0 NOT NULL,
    j3 money DEFAULT 0 NOT NULL,
    j4 money DEFAULT 0 NOT NULL,
    j5 money DEFAULT 0 NOT NULL,
    j6 money DEFAULT 0 NOT NULL,
    j7 money DEFAULT 0 NOT NULL,
    j8 money DEFAULT 0 NOT NULL,
    j9 money DEFAULT 0 NOT NULL,
    j10 money DEFAULT 0 NOT NULL,
    k1 money DEFAULT 0 NOT NULL,
    k2 money DEFAULT 0 NOT NULL,
    k3 money DEFAULT 0 NOT NULL,
    k4 money DEFAULT 0 NOT NULL,
    k5 money DEFAULT 0 NOT NULL,
    k6 money DEFAULT 0 NOT NULL,
    k7 money DEFAULT 0 NOT NULL,
    l1 money DEFAULT 0 NOT NULL,
    l2 money DEFAULT 0 NOT NULL,
    l3 money DEFAULT 0 NOT NULL,
    l4 money DEFAULT 0 NOT NULL,
    l5 money DEFAULT 0 NOT NULL,
    l6 money DEFAULT 0 NOT NULL,
    m1 money DEFAULT 0 NOT NULL,
    m2 money DEFAULT 0 NOT NULL,
    m3 money DEFAULT 0 NOT NULL,
    m4 money DEFAULT 0 NOT NULL,
    m5 money DEFAULT 0 NOT NULL,
    m6 money DEFAULT 0 NOT NULL,
    m7 money DEFAULT 0 NOT NULL,
    m8 money DEFAULT 0 NOT NULL,
    m9 money DEFAULT 0 NOT NULL,
    m10 money DEFAULT 0 NOT NULL,
    n1 money DEFAULT 0 NOT NULL,
    n2 money DEFAULT 0 NOT NULL,
    n3 money DEFAULT 0 NOT NULL,
    o1 money DEFAULT 0 NOT NULL,
    p1 money DEFAULT 0 NOT NULL,
    p2 money DEFAULT 0 NOT NULL,
    p3 money DEFAULT 0 NOT NULL,
    p4 money DEFAULT 0 NOT NULL,
    p5 money DEFAULT 0 NOT NULL,
    q1 money DEFAULT 0 NOT NULL,
    r1 money DEFAULT 0 NOT NULL,
    r2 money DEFAULT 0 NOT NULL,
    s1 money DEFAULT 0 NOT NULL,
    s2 money DEFAULT 0 NOT NULL,
    t1 money DEFAULT 0 NOT NULL,
    u1 money DEFAULT 0 NOT NULL,
    v1 money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_rl3h2;
       public         postgres    false            ?           1259    37144 
   tbl_rmbook    TABLE     x   CREATE TABLE public.tbl_rmbook (
    rekmed character varying(10) NOT NULL,
    posisi character varying(1) NOT NULL
);
    DROP TABLE public.tbl_rmbook;
       public         postgres    false            ?           1259    37149    tbl_rs    TABLE     ?  CREATE TABLE public.tbl_rs (
    namars character varying(50) NOT NULL,
    alamat1 character varying(50) NOT NULL,
    alamat2 character varying(50) NOT NULL,
    kota character varying(50) NOT NULL,
    phone character varying(50) NOT NULL,
    fax character varying(50) NOT NULL,
    owner character varying(50) NOT NULL,
    rscode character varying(50) DEFAULT NULL::character varying,
    brand_id character(3) NOT NULL,
    kyds character(15) NOT NULL,
    locon money NOT NULL,
    loop numeric(1,0) NOT NULL,
    jnrs character varying(10) DEFAULT NULL::character varying,
    kelasrs character varying(10) DEFAULT NULL::character varying,
    noijin character varying(50) DEFAULT NULL::character varying,
    tglijin date,
    oleh character varying(50) DEFAULT NULL::character varying,
    sifat integer,
    namaps character varying(50) DEFAULT NULL::character varying,
    statusps character varying(50) DEFAULT NULL::character varying,
    organisasi character varying(10) DEFAULT NULL::character varying,
    jmkgigi numeric(10,0) DEFAULT NULL::numeric,
    jmugigi numeric(10,0) DEFAULT NULL::numeric,
    thp numeric(10,0) DEFAULT NULL::numeric,
    sts numeric(10,0) DEFAULT NULL::numeric,
    ey character varying(5) DEFAULT NULL::character varying
);
    DROP TABLE public.tbl_rs;
       public         postgres    false            ?           1259    37168 	   tbl_ruang    TABLE     ?  CREATE TABLE public.tbl_ruang (
    koderuang character varying(10) NOT NULL,
    namaruang character varying(50) NOT NULL,
    bangsalid character varying(10) NOT NULL,
    kelas character varying(1) NOT NULL,
    tarif numeric(10,2) DEFAULT 0,
    tarifmedis numeric(18,0) DEFAULT 0 NOT NULL,
    askes numeric(18,0) DEFAULT 0 NOT NULL,
    tarifmakan numeric(10,2) DEFAULT 0,
    jumlahkamar numeric(4,0) DEFAULT 0,
    kapasitas numeric(4,0) DEFAULT 0,
    pesan numeric(4,0) DEFAULT 0,
    isi numeric(4,0) DEFAULT 0,
    sisa numeric(4,0) DEFAULT 0,
    urutkamar numeric(4,0) DEFAULT 0,
    accountno character varying(14) DEFAULT NULL::character varying
);
    DROP TABLE public.tbl_ruang;
       public         postgres    false            ?           1259    37184    tbl_ruangpindah    TABLE     ?  CREATE TABLE public.tbl_ruangpindah (
    noreg character(12) NOT NULL,
    rekmed character(10) NOT NULL,
    daritgl date NOT NULL,
    darijam character(10) NOT NULL,
    sampaitgl date NOT NULL,
    sampaijam character(10) NOT NULL,
    dariruang character(10) NOT NULL,
    darikamar character(12) NOT NULL,
    keruang character(10) NOT NULL,
    kekamar character(12) NOT NULL,
    keterangan character(80) NOT NULL,
    keluar money NOT NULL,
    posting money NOT NULL
);
 #   DROP TABLE public.tbl_ruangpindah;
       public         postgres    false            ?           1259    37187    tbl_ruangpoli    TABLE     ?   CREATE TABLE public.tbl_ruangpoli (
    koderuang character varying(10) NOT NULL,
    namaruang character varying(50) NOT NULL
);
 !   DROP TABLE public.tbl_ruangpoli;
       public         postgres    false            ?           1259    37192    tbl_ruangtransaksi    TABLE     ^  CREATE TABLE public.tbl_ruangtransaksi (
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    koderuang character(10) DEFAULT ''::bpchar NOT NULL,
    kodekamar character(12) DEFAULT ''::bpchar NOT NULL,
    kelas character(1) DEFAULT ''::bpchar NOT NULL,
    tglmasuk date NOT NULL,
    jammasuk character(10) DEFAULT ''::bpchar NOT NULL,
    tglkeluar date NOT NULL,
    jamkeluar character(10) DEFAULT ''::bpchar NOT NULL,
    tarifhari numeric(14,2) DEFAULT 0 NOT NULL,
    jumlahhari numeric(14,2) DEFAULT 0 NOT NULL,
    tariftotal numeric(14,2) DEFAULT 0 NOT NULL,
    keluar money DEFAULT 0 NOT NULL,
    pindah money DEFAULT 0 NOT NULL,
    ruangkey character(15) DEFAULT ''::bpchar NOT NULL,
    kodokter character(10) DEFAULT ''::bpchar NOT NULL,
    askes numeric(18,0) DEFAULT 0 NOT NULL
);
 &   DROP TABLE public.tbl_ruangtransaksi;
       public         postgres    false            ?           1259    37212    tbl_rujukan    TABLE     	  CREATE TABLE public.tbl_rujukan (
    norujuk character(16) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tarif1 character(10) DEFAULT ''::bpchar NOT NULL,
    tarif2 character(10) DEFAULT ''::bpchar NOT NULL,
    tarif3 character(10) DEFAULT ''::bpchar NOT NULL,
    notes text DEFAULT ''::text NOT NULL,
    dokterperujuk character(10) DEFAULT ''::bpchar NOT NULL,
    tgldirujuk date NOT NULL,
    dokterpenerima character(10) DEFAULT ''::bpchar NOT NULL,
    tgldilayani character(10) DEFAULT ''::bpchar NOT NULL,
    nilairp numeric(18,0) DEFAULT 0 NOT NULL,
    kecabang character(3) DEFAULT ''::bpchar NOT NULL,
    keluhan text DEFAULT ''::text NOT NULL,
    diagnosa text DEFAULT ''::text NOT NULL,
    tglkun date NOT NULL
);
    DROP TABLE public.tbl_rujukan;
       public         postgres    false            ?           1259    37231    tbl_setinghms    TABLE     ?  CREATE TABLE public.tbl_setinghms (
    kodeset character(4) NOT NULL,
    keterangan character(50) NOT NULL,
    lset character(4) NOT NULL,
    accountno character(14) NOT NULL,
    accounthpp character(14) NOT NULL,
    valuerp numeric(9,2) NOT NULL,
    valuepersen numeric(4,2) NOT NULL,
    value1 numeric(1,0) NOT NULL,
    valuerp1 numeric(9,2) NOT NULL,
    minimalrp numeric(9,2) NOT NULL,
    maksimalrp numeric(9,2) NOT NULL,
    depid character(10) NOT NULL
);
 !   DROP TABLE public.tbl_setinghms;
       public         postgres    false            ?           1259    37234    tbl_setinginap    TABLE     ?   CREATE TABLE public.tbl_setinginap (
    minjampindah numeric(18,0) DEFAULT 0 NOT NULL,
    jampindah character(10) DEFAULT ''::bpchar NOT NULL
);
 "   DROP TABLE public.tbl_setinginap;
       public         postgres    false            ?           1259    37239    tbl_setting    TABLE       CREATE TABLE public.tbl_setting (
    regformat character(15) NOT NULL,
    rekmedformat character(15) NOT NULL,
    priceformat character(20) NOT NULL,
    totalformat character(20) NOT NULL,
    urutradiologi character(20) NOT NULL,
    printradiologi numeric(1,0) NOT NULL,
    rubahtarifradio numeric(1,0) NOT NULL,
    urutlaborat character(20) NOT NULL,
    printlaborat numeric(1,0) NOT NULL,
    rubahtariflab numeric(1,0) NOT NULL,
    urutbedah character(20) NOT NULL,
    printbedah numeric(1,0) NOT NULL,
    rubahtarifbedah numeric(1,0) NOT NULL,
    urutinap character(20) NOT NULL,
    printinap numeric(1,0) NOT NULL,
    rubahtarifinap numeric(1,0) NOT NULL,
    apoqty character(20) NOT NULL,
    apoprice character(20) NOT NULL,
    apototal character(20) NOT NULL,
    apoprint numeric(1,0) NOT NULL,
    apotransaksi numeric(1,0) NOT NULL,
    admpolip numeric(10,2) NOT NULL,
    admpolipsistem numeric(1,0) NOT NULL,
    admpolij numeric(19,2) NOT NULL,
    admpolijsistem numeric(1,0) NOT NULL,
    urutpoli character(20) NOT NULL,
    printpoli numeric(1,0) NOT NULL,
    rubahtarifpoli numeric(1,0) NOT NULL,
    poliautoprint numeric(1,0) NOT NULL,
    printkasir numeric(1,0) NOT NULL,
    aplikasigambar character(200) NOT NULL,
    filegambarbedah character(100) NOT NULL,
    filegambarradio character(100) NOT NULL,
    trubisnis numeric(1,0) NOT NULL,
    dospoli numeric(1,0) NOT NULL,
    vatdr character(10) NOT NULL,
    vatbeli character(10) NOT NULL,
    vatjual character(10) NOT NULL,
    reportpath character(200) NOT NULL,
    kasirradio numeric(1,0) NOT NULL,
    gunakanlcd numeric(1,0) NOT NULL,
    jaminap numeric(2,0) NOT NULL,
    jaminapgratis numeric(2,0) NOT NULL,
    tombol numeric(1,0) NOT NULL,
    otomatisrm numeric(18,0) DEFAULT NULL::numeric
);
    DROP TABLE public.tbl_setting;
       public         postgres    false            ?           1259    37246    tbl_so    TABLE     ?  CREATE TABLE public.tbl_so (
    tanggal date NOT NULL,
    proses numeric(18,0) DEFAULT 0 NOT NULL,
    kode character(10) DEFAULT ''::bpchar NOT NULL,
    username character(10) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character(100) DEFAULT ''::bpchar NOT NULL,
    tglsebelumnya date NOT NULL,
    proseslog numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_so;
       public         postgres    false            ?           1259    37255 	   tbl_soLOG    TABLE     ?  CREATE TABLE public."tbl_soLOG" (
    tanggal date NOT NULL,
    proses numeric(18,0) DEFAULT 0 NOT NULL,
    kode character(10) DEFAULT ''::bpchar NOT NULL,
    username character(10) DEFAULT ''::bpchar NOT NULL,
    shipt numeric(18,0) DEFAULT 0 NOT NULL,
    keterangan character(100) DEFAULT ''::bpchar NOT NULL,
    tglsebelumnya date NOT NULL,
    proseslog numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public."tbl_soLOG";
       public         postgres    false            ?           1259    37264    tbl_stocktempd    TABLE     ?  CREATE TABLE public.tbl_stocktempd (
    "KODEOBAT" character(10) DEFAULT ''::bpchar,
    "NAMAOBAT" character(100) DEFAULT ''::bpchar,
    "UNIT" character(10) DEFAULT ''::bpchar,
    "SALDO" numeric(18,2) DEFAULT 0,
    "HPP" numeric(18,2) DEFAULT 0,
    "TOTALHPP" numeric(18,2) DEFAULT 0,
    "UCODE" character(26) DEFAULT ''::bpchar,
    "GUDANG" character(10) DEFAULT ''::bpchar
);
 "   DROP TABLE public.tbl_stocktempd;
       public         postgres    false            ?           1259    37275    tbl_stocktemph    TABLE     ?   CREATE TABLE public.tbl_stocktemph (
    "UCODE" character(26) DEFAULT ''::bpchar,
    "DARITGL" date,
    "SAMPAITGL" date,
    "GUDANG" character(10) DEFAULT ''::bpchar,
    "TYPE" numeric(18,0) DEFAULT 0
);
 "   DROP TABLE public.tbl_stocktemph;
       public         postgres    false            ?           1259    37281 	   tbl_tarif    TABLE     ?,  CREATE TABLE public.tbl_tarif (
    kodetarif character(10) DEFAULT ''::bpchar NOT NULL,
    tindakan character varying(150) DEFAULT ''::character varying NOT NULL,
    kodepos character(5) DEFAULT ''::bpchar NOT NULL,
    pisah money DEFAULT 0 NOT NULL,
    igroup character(5) DEFAULT ''::bpchar NOT NULL,
    kodesub character(14) DEFAULT ''::bpchar NOT NULL,
    gol character(5) DEFAULT ''::bpchar NOT NULL,
    jenislab character(1) DEFAULT ''::bpchar NOT NULL,
    kodetindak character(10) DEFAULT ''::bpchar NOT NULL,
    depkesid character(10) DEFAULT ''::bpchar NOT NULL,
    cito numeric(5,2) DEFAULT 0 NOT NULL,
    oncall numeric(5,2) DEFAULT 0 NOT NULL,
    cost numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrspoli numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrspoli1 numeric(18,2) DEFAULT 0 NOT NULL,
    prosendr numeric(5,2) DEFAULT 0 NOT NULL,
    feedr numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrpoli numeric(18,2) DEFAULT 0 NOT NULL,
    obatpoli numeric(18,2) DEFAULT 0 NOT NULL,
    feemedispoli numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsa numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsb numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsc numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsd numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrse numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsf numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsg numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsh numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsi numeric(18,2) DEFAULT 0 NOT NULL,
    tarifrsj numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdra numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrb numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrc numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrd numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdre numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrf numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrg numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrh numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdri numeric(18,2) DEFAULT 0 NOT NULL,
    tarifdrj numeric(18,2) DEFAULT 0 NOT NULL,
    askespoli numeric(18,2) DEFAULT 0 NOT NULL,
    askesa numeric(18,2) DEFAULT 0 NOT NULL,
    askesb numeric(18,2) DEFAULT 0 NOT NULL,
    askesc numeric(18,2) DEFAULT 0 NOT NULL,
    askesd numeric(18,2) DEFAULT 0 NOT NULL,
    askese numeric(18,2) DEFAULT 0 NOT NULL,
    askesf numeric(18,2) DEFAULT 0 NOT NULL,
    askesg numeric(18,2) DEFAULT 0 NOT NULL,
    askesh numeric(18,2) DEFAULT 0 NOT NULL,
    askesi numeric(18,2) DEFAULT 0 NOT NULL,
    askesj numeric(18,2) DEFAULT 0 NOT NULL,
    asoprpoli numeric(18,2) DEFAULT 0 NOT NULL,
    asopra numeric(18,2) DEFAULT 0 NOT NULL,
    asoprb numeric(18,0) DEFAULT 0 NOT NULL,
    asoprc numeric(18,2) DEFAULT 0 NOT NULL,
    asoprd numeric(18,2) DEFAULT 0 NOT NULL,
    asopre numeric(18,2) DEFAULT 0 NOT NULL,
    asoprf numeric(18,2) DEFAULT 0 NOT NULL,
    asoprg numeric(18,2) DEFAULT 0 NOT NULL,
    asoprh numeric(18,2) DEFAULT 0 NOT NULL,
    asopri numeric(18,2) DEFAULT 0 NOT NULL,
    asoprj numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasipoli numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasia numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasib numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasic numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasid numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasie numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasif numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasig numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasih numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasii numeric(18,2) DEFAULT 0 NOT NULL,
    asoperasij numeric(18,2) DEFAULT 0 NOT NULL,
    anestasipoli numeric(18,2) DEFAULT 0 NOT NULL,
    anestasia numeric(18,2) DEFAULT 0 NOT NULL,
    anestasib numeric(18,2) DEFAULT 0 NOT NULL,
    anestasic numeric(18,2) DEFAULT 0 NOT NULL,
    anestasid numeric(18,2) DEFAULT 0 NOT NULL,
    anestasie numeric(18,2) DEFAULT 0 NOT NULL,
    anestasif numeric(18,2) DEFAULT 0 NOT NULL,
    anestasig numeric(18,2) DEFAULT 0 NOT NULL,
    anestasih numeric(18,2) DEFAULT 0 NOT NULL,
    anestasii numeric(18,2) DEFAULT 0 NOT NULL,
    anestasij numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasipoli numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasia numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasib numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasic numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasid numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasie numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasif numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasig numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasih numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasii numeric(18,2) DEFAULT 0 NOT NULL,
    aanestasij numeric(18,2) DEFAULT 0 NOT NULL,
    drpersen numeric(5,2) DEFAULT 0 NOT NULL,
    accountno character(10) DEFAULT ''::bpchar NOT NULL,
    idacc money DEFAULT 0 NOT NULL,
    autoobat money DEFAULT 0 NOT NULL,
    ikomisipoli numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisia numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisib numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisic numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisid numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisie numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisif numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisig numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisih numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisii numeric(18,2) DEFAULT 0 NOT NULL,
    ikomisij numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisipoli numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisia numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisib numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisc numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisid numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisie numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisif numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisig numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisih numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisii numeric(18,2) DEFAULT 0 NOT NULL,
    pkomisij numeric(18,2) DEFAULT 0 NOT NULL,
    depid character(10) DEFAULT ''::bpchar NOT NULL,
    pengirimpoli numeric(18,2) DEFAULT 0 NOT NULL,
    pengirima numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimb numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimc numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimd numeric(18,2) DEFAULT 0 NOT NULL,
    pengirime numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimf numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimg numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimh numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimi numeric(18,2) DEFAULT 0 NOT NULL,
    pengirimj numeric(18,2) DEFAULT 0 NOT NULL,
    vendorpoli numeric(18,2) DEFAULT 0 NOT NULL,
    vendora numeric(18,2) DEFAULT 0 NOT NULL,
    vendorb numeric(18,2) DEFAULT 0 NOT NULL,
    vendorc numeric(18,2) DEFAULT 0 NOT NULL,
    vendord numeric(18,2) DEFAULT 0 NOT NULL,
    vendore numeric(18,2) DEFAULT 0 NOT NULL,
    vendorf numeric(18,2) DEFAULT 0 NOT NULL,
    vendorg numeric(18,2) DEFAULT 0 NOT NULL,
    vendorh numeric(18,2) DEFAULT 0 NOT NULL,
    vendori numeric(18,2) DEFAULT 0 NOT NULL,
    vendorj numeric(18,2) DEFAULT 0 NOT NULL,
    tarjenis numeric(5,0) DEFAULT 0 NOT NULL,
    urutt numeric(18,2) DEFAULT 0 NOT NULL,
    anakpoli numeric(18,2) DEFAULT 0 NOT NULL,
    anaka numeric(18,2) DEFAULT 0 NOT NULL,
    anakb numeric(18,2) DEFAULT 0 NOT NULL,
    anakc numeric(18,2) DEFAULT 0 NOT NULL,
    anakd numeric(18,2) DEFAULT 0 NOT NULL,
    anake numeric(18,2) DEFAULT 0 NOT NULL,
    anakf numeric(18,2) DEFAULT 0 NOT NULL,
    anakg numeric(18,2) DEFAULT 0 NOT NULL,
    anakh numeric(18,2) DEFAULT 0 NOT NULL,
    anaki numeric(18,2) DEFAULT 0 NOT NULL,
    anakj numeric(18,2) DEFAULT 0 NOT NULL,
    proprpoli numeric(18,2) DEFAULT 0 NOT NULL,
    propra numeric(18,2) DEFAULT 0 NOT NULL,
    proprb numeric(18,2) DEFAULT 0 NOT NULL,
    proprc numeric(18,2) DEFAULT 0 NOT NULL,
    proprd numeric(18,2) DEFAULT 0 NOT NULL,
    propre numeric(18,2) DEFAULT 0 NOT NULL,
    proprf numeric(18,2) DEFAULT 0 NOT NULL,
    proprg numeric(18,2) DEFAULT 0 NOT NULL,
    proprh numeric(18,2) DEFAULT 0 NOT NULL,
    propri numeric(18,2) DEFAULT 0 NOT NULL,
    proprj numeric(18,2) DEFAULT 0 NOT NULL,
    praoprpoli numeric(18,2) DEFAULT 0 NOT NULL,
    praopra numeric(18,2) DEFAULT 0 NOT NULL,
    praoprb numeric(18,2) DEFAULT 0 NOT NULL,
    praoprc numeric(18,2) DEFAULT 0 NOT NULL,
    praoprd numeric(18,2) DEFAULT 0 NOT NULL,
    praopre numeric(18,2) DEFAULT 0 NOT NULL,
    praoprf numeric(18,2) DEFAULT 0 NOT NULL,
    praoprg numeric(18,2) DEFAULT 0 NOT NULL,
    praoprh numeric(18,2) DEFAULT 0 NOT NULL,
    praopri numeric(18,2) DEFAULT 0 NOT NULL,
    praoprj numeric(18,2) DEFAULT 0 NOT NULL,
    pranespoli numeric(18,2) DEFAULT 0 NOT NULL,
    pranesa numeric(18,2) DEFAULT 0 NOT NULL,
    pranesb numeric(18,2) DEFAULT 0 NOT NULL,
    pranesc numeric(18,2) DEFAULT 0 NOT NULL,
    pranesd numeric(18,2) DEFAULT 0 NOT NULL,
    pranese numeric(18,2) DEFAULT 0 NOT NULL,
    pranesf numeric(18,2) DEFAULT 0 NOT NULL,
    pranesg numeric(18,2) DEFAULT 0 NOT NULL,
    pranesi numeric(18,2) DEFAULT 0 NOT NULL,
    pranesj numeric(18,2) DEFAULT 0 NOT NULL,
    praanespoli numeric(18,2) DEFAULT 0 NOT NULL,
    praanesa numeric(18,2) DEFAULT 0 NOT NULL,
    praanesb numeric(18,2) DEFAULT 0 NOT NULL,
    praanesc numeric(18,2) DEFAULT 0 NOT NULL,
    praanesd numeric(18,2) DEFAULT 0 NOT NULL,
    praanese numeric(18,2) DEFAULT 0 NOT NULL,
    praanesf numeric(18,2) DEFAULT 0 NOT NULL,
    praanesg numeric(18,2) DEFAULT 0 NOT NULL,
    praanesh numeric(18,2) DEFAULT 0 NOT NULL,
    praanesi numeric(18,2) DEFAULT 0 NOT NULL,
    praanesj numeric(18,2) DEFAULT 0 NOT NULL,
    prmpoli numeric(18,2) DEFAULT 0 NOT NULL,
    prma numeric(18,2) DEFAULT 0 NOT NULL,
    prmb numeric(18,2) DEFAULT 0 NOT NULL,
    prmc numeric(18,2) DEFAULT 0 NOT NULL,
    prmd numeric(18,2) DEFAULT 0 NOT NULL,
    prme numeric(18,2) DEFAULT 0 NOT NULL,
    prmf numeric(18,2) DEFAULT 0 NOT NULL,
    prmg numeric(18,2) DEFAULT 0 NOT NULL,
    prmh numeric(18,2) DEFAULT 0 NOT NULL,
    prmi numeric(18,2) DEFAULT 0 NOT NULL,
    prmj numeric(18,2) DEFAULT 0 NOT NULL,
    prppoli numeric(18,2) DEFAULT 0 NOT NULL,
    prpa numeric(18,2) DEFAULT 0 NOT NULL,
    prpb numeric(18,2) DEFAULT 0 NOT NULL,
    prpc numeric(18,2) DEFAULT 0 NOT NULL,
    prpd numeric(18,2) DEFAULT 0 NOT NULL,
    prpe numeric(18,2) DEFAULT 0 NOT NULL,
    prpf numeric(18,2) DEFAULT 0 NOT NULL,
    prpg numeric(18,2) DEFAULT 0 NOT NULL,
    prph numeric(18,2) DEFAULT 0 NOT NULL,
    prpi numeric(18,2) DEFAULT 0 NOT NULL,
    prpj numeric(18,2) DEFAULT 0 NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL,
    jamkesmas numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesda numeric(18,2) DEFAULT 0 NOT NULL,
    insentifdr numeric(18,2) DEFAULT 0 NOT NULL,
    insentifmedis numeric(18,2) DEFAULT 0 NOT NULL,
    paketaskes numeric(18,2) DEFAULT 0 NOT NULL,
    paketjamkes numeric(18,2) DEFAULT 0 NOT NULL,
    askestype numeric(5,0) DEFAULT 0 NOT NULL,
    jamkesa numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesb numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesc numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesd numeric(18,2) DEFAULT 0 NOT NULL,
    jamkese numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesf numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesg numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesh numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesi numeric(18,2) DEFAULT 0 NOT NULL,
    jamkesj numeric(18,2) DEFAULT 0 NOT NULL,
    askespaket character(10) DEFAULT ''::bpchar NOT NULL,
    jamkespaket character(10) DEFAULT ''::bpchar NOT NULL,
    sharetype numeric(5,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_tarif;
       public         postgres    false            ?           1259    37530    tbl_tarifkomponent    TABLE     &  CREATE TABLE public.tbl_tarifkomponent (
    tarif1 character(50) DEFAULT ''::bpchar NOT NULL,
    tarif2 character(50) DEFAULT ''::bpchar NOT NULL,
    tarif3 character(50) DEFAULT ''::bpchar NOT NULL,
    tarif4 character(50) DEFAULT ''::bpchar NOT NULL,
    tarif5 character(50) NOT NULL
);
 &   DROP TABLE public.tbl_tarifkomponent;
       public         postgres    false            ?           1259    37542    tbl_transaksiharian    TABLE     ?  CREATE TABLE public.tbl_transaksiharian (
    tgltransaksi date NOT NULL,
    clientid character(3) DEFAULT NULL::bpchar,
    pasien_baru_kulit numeric(18,0) DEFAULT NULL::numeric,
    pasien_lama_kulit numeric(18,0) DEFAULT NULL::numeric,
    pasien_baru_gigi numeric(18,0) DEFAULT NULL::numeric,
    "Pasien_lama_gigi" numeric(18,0) DEFAULT NULL::numeric,
    pasien_baru_spa numeric(18,0) DEFAULT NULL::numeric,
    pasien_lama_spa numeric(18,0) DEFAULT NULL::numeric,
    omset_konsul numeric(18,0) DEFAULT NULL::numeric,
    omset_obatkulit numeric(18,0) DEFAULT NULL::numeric,
    omset_lokal numeric(18,0) DEFAULT NULL::numeric,
    omset_kirim numeric(18,0) DEFAULT NULL::numeric,
    omset_spa numeric(18,0) DEFAULT NULL::numeric,
    omset_gigi numeric(18,0) DEFAULT NULL::numeric,
    omset_apotik numeric(18,0) DEFAULT NULL::numeric,
    omset_adm numeric(18,0) DEFAULT NULL::numeric,
    omset_admcard numeric(18,0) DEFAULT NULL::numeric
);
 '   DROP TABLE public.tbl_transaksiharian;
       public         postgres    false            ?           1259    37563    tbl_triageugd    TABLE     A  CREATE TABLE public.tbl_triageugd (
    noreg character(12) NOT NULL,
    rekmed character(10) DEFAULT NULL::bpchar,
    tglmasuk date,
    jamdatang character varying(50) DEFAULT NULL::character varying,
    jampenanganan character varying(50) DEFAULT NULL::character varying,
    jamkeluar character varying(50) DEFAULT NULL::character varying,
    kondisidatang integer,
    kotriage integer,
    rujuk integer,
    tujuanrujuk character varying(100) DEFAULT NULL::character varying,
    keluhan character varying(150) DEFAULT NULL::character varying,
    trauma integer,
    sebabtrauma character varying(150) DEFAULT NULL::character varying,
    sakitskr character varying(150) DEFAULT NULL::character varying,
    sakitdulu character varying(150) DEFAULT NULL::character varying,
    alergi character varying(150) DEFAULT NULL::character varying,
    pengobatanlalu character varying(150) DEFAULT NULL::character varying,
    nd character varying(50) DEFAULT NULL::character varying,
    rr character varying(50) DEFAULT NULL::character varying,
    td character varying(50) DEFAULT NULL::character varying,
    tem character varying(50) DEFAULT NULL::character varying,
    spo2 character varying(50) DEFAULT NULL::character varying,
    bb character varying(50) DEFAULT NULL::character varying,
    gcs character varying(50) DEFAULT NULL::character varying,
    pupil1 character varying(50) DEFAULT NULL::character varying,
    pupil2 character varying(50) DEFAULT NULL::character varying,
    cahaya1 character varying(50) DEFAULT NULL::character varying,
    cahaya2 character varying(50) DEFAULT NULL::character varying,
    skeletal integer,
    neurologi integer,
    cardio integer,
    gltract integer,
    urinary integer,
    endokrin integer,
    extremitas integer,
    lain integer,
    ketlain character varying(150) DEFAULT NULL::character varying,
    hamil integer,
    hpht date,
    gravida integer,
    ekg integer,
    thorax integer,
    fotolain integer,
    ketfotolain character varying(50) DEFAULT NULL::character varying,
    ctscan integer,
    ketctscan character varying(150) DEFAULT NULL::character varying,
    lab integer,
    ketlab character varying(150) DEFAULT NULL::character varying,
    s character varying(150) DEFAULT NULL::character varying,
    o character varying(150) DEFAULT NULL::character varying,
    d character varying(150) DEFAULT NULL::character varying,
    p character varying(150) DEFAULT NULL::character varying,
    diagnosa character varying(10) DEFAULT NULL::character varying,
    pesanpulang character varying(150) DEFAULT NULL::character varying,
    tglobat date,
    namaobat character varying(50) DEFAULT NULL::character varying,
    dosis character varying(50) DEFAULT NULL::character varying,
    rute character varying(50) DEFAULT NULL::character varying,
    intake character varying(50) DEFAULT NULL::character varying,
    periksaoleh character varying(50) DEFAULT NULL::character varying,
    diberioleh character varying(50) DEFAULT NULL::character varying,
    tgl date,
    nadi character varying(10) DEFAULT NULL::character varying,
    rr2 character varying(10) DEFAULT NULL::character varying,
    suhu character varying(10) DEFAULT NULL::character varying,
    bp character varying(10) DEFAULT NULL::character varying,
    spo22 character varying(10) DEFAULT NULL::character varying,
    ngt integer,
    ngtno character varying(50) DEFAULT NULL::character varying,
    keteter integer,
    kateterno character varying(50) DEFAULT NULL::character varying,
    suctkateter integer,
    canula integer,
    canulano character varying(50) DEFAULT NULL::character varying,
    canulatempat character varying(100) DEFAULT NULL::character varying,
    crophal integer,
    crophalno character varying(50) DEFAULT NULL::character varying,
    masker integer,
    maskermnt character varying(50) DEFAULT NULL::character varying,
    transfer integer,
    transferke character varying(50) DEFAULT NULL::character varying,
    jamtrans character varying(10) DEFAULT NULL::character varying,
    ambul integer,
    ambultujuan character varying(50) DEFAULT NULL::character varying
);
 !   DROP TABLE public.tbl_triageugd;
       public         postgres    false            ?           1259    37633    tbl_triageugd_detail2    TABLE     ?  CREATE TABLE public.tbl_triageugd_detail2 (
    noreg character(12) DEFAULT NULL::bpchar,
    rekmed character(10) DEFAULT NULL::bpchar,
    pukul character(10) DEFAULT NULL::bpchar,
    nadi character(10) DEFAULT NULL::bpchar,
    rr character(10) DEFAULT NULL::bpchar,
    suhu character(10) DEFAULT NULL::bpchar,
    bp character(10) DEFAULT NULL::bpchar,
    "SPO2" character(10) DEFAULT NULL::bpchar
);
 )   DROP TABLE public.tbl_triageugd_detail2;
       public         postgres    false            ?           1259    37644 
   tbl_trluar    TABLE     i  CREATE TABLE public.tbl_trluar (
    nobukti character(16) DEFAULT ''::bpchar NOT NULL,
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    namapas character(100) DEFAULT ''::bpchar NOT NULL,
    tgltransaksi date,
    rupiahrp numeric(12,2) DEFAULT 0 NOT NULL,
    pos character(15) DEFAULT ''::bpchar NOT NULL,
    bayar money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_trluar;
       public         postgres    false            ?           1259    37655    tbl_uangmuka    TABLE     ?  CREATE TABLE public.tbl_uangmuka (
    nokwitansi character(14) DEFAULT ''::bpchar NOT NULL,
    noreg character(12) DEFAULT ''::bpchar NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    tglbayar date NOT NULL,
    jmbayar numeric(14,2) DEFAULT 0 NOT NULL,
    jenisbayar numeric(1,0) DEFAULT 0 NOT NULL,
    dibayaroleh character(20) DEFAULT ''::bpchar NOT NULL,
    posbayar character(20) DEFAULT ''::bpchar NOT NULL,
    username character(14) DEFAULT ''::bpchar NOT NULL,
    accountno character(14) DEFAULT ''::bpchar NOT NULL,
    ket character(200) DEFAULT ''::bpchar NOT NULL,
    closed money DEFAULT 0 NOT NULL,
    kwitansivalid character(14) DEFAULT ''::bpchar NOT NULL
);
     DROP TABLE public.tbl_uangmuka;
       public         postgres    false            ?           1259    37670 
   tbl_urutmr    TABLE     ?   CREATE TABLE public.tbl_urutmr (
    mrkey character(1) DEFAULT ''::bpchar NOT NULL,
    urut numeric(18,0) DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_urutmr;
       public         postgres    false            ?           1259    37675 
   tbl_urutrs    TABLE     ?  CREATE TABLE public.tbl_urutrs (
    kode_urut character varying(20) NOT NULL,
    hedket character varying(50) DEFAULT ''::character varying NOT NULL,
    param1 character varying(10) DEFAULT ''::character varying NOT NULL,
    param2 character varying(10) DEFAULT ''::character varying NOT NULL,
    param3 character varying(10) DEFAULT ''::character varying NOT NULL,
    param4 character varying(10) DEFAULT ''::character varying NOT NULL,
    sparator character varying(1) DEFAULT ''::character varying NOT NULL,
    nourut numeric(14,0) DEFAULT 0 NOT NULL,
    rsformat character varying(30) DEFAULT ''::character varying NOT NULL,
    lasttr character(16) DEFAULT ''::bpchar NOT NULL,
    usedby character(20) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_urutrs;
       public         postgres    false            ?           1259    37690    tbl_userlog    TABLE     ?   CREATE TABLE public.tbl_userlog (
    userid character(20) NOT NULL,
    tanggal date NOT NULL,
    modul character(30) NOT NULL,
    task character(30) NOT NULL
);
    DROP TABLE public.tbl_userlog;
       public         postgres    false            ?           1259    37693    tbl_userlogistik    TABLE     ?  CREATE TABLE public.tbl_userlogistik (
    "NAMAUSER" character(14) DEFAULT ''::bpchar NOT NULL,
    "LOG1" money DEFAULT 0,
    "LOG2" money DEFAULT 0,
    "LOG3" money DEFAULT 0,
    "LOG4" money DEFAULT 0,
    "LOG5" money DEFAULT 0,
    "LOG6" money DEFAULT 0,
    "LOG7" money DEFAULT 0,
    "LOG8" money DEFAULT 0,
    "LOG9" money DEFAULT 0,
    "LOG10" money DEFAULT 0,
    "LOG11" money DEFAULT 0,
    "LOG12" money DEFAULT 0,
    "LOG13" money DEFAULT 0,
    "LOG14" money DEFAULT 0,
    "LOG15" money DEFAULT 0,
    "LOG16" money DEFAULT 0,
    "LOG17" money DEFAULT 0,
    "LOG18" money DEFAULT 0,
    "LOG19" money DEFAULT 0,
    "LOG20" money DEFAULT 0
);
 $   DROP TABLE public.tbl_userlogistik;
       public         postgres    false            ?           1259    37719    tbl_vocd    TABLE     ?  CREATE TABLE public.tbl_vocd (
    nokir character(16) DEFAULT ''::bpchar NOT NULL,
    novoucher character(20) DEFAULT ''::bpchar NOT NULL,
    tglkirim date NOT NULL,
    tgjual date NOT NULL,
    cabangvoc character(3) DEFAULT ''::bpchar NOT NULL,
    cabangpakai character(3) DEFAULT ''::bpchar NOT NULL,
    nominal numeric(18,0) DEFAULT 0 NOT NULL,
    diskon numeric(18,0) DEFAULT 0 NOT NULL,
    rekmed character(10) DEFAULT ''::bpchar NOT NULL,
    nokwitansi character(16) DEFAULT ''::bpchar NOT NULL,
    tglpakai date NOT NULL,
    rekmedpakai character(10) DEFAULT ''::bpchar NOT NULL,
    terjual money DEFAULT 0 NOT NULL,
    terpakai money DEFAULT 0 NOT NULL
);
    DROP TABLE public.tbl_vocd;
       public         postgres    false            ?           1259    37735    tbl_voch    TABLE     ?   CREATE TABLE public.tbl_voch (
    nokir character(16) NOT NULL,
    ket text DEFAULT ''::text NOT NULL,
    tglkirim date NOT NULL,
    ongkos numeric(18,0) DEFAULT 0 NOT NULL,
    cust_id character(5) DEFAULT ''::bpchar NOT NULL
);
    DROP TABLE public.tbl_voch;
       public         postgres    false            ?           1259    37746    tbl_vocjual    TABLE     ?   CREATE TABLE public.tbl_vocjual (
    novoucher character(20) NOT NULL,
    nominal numeric(18,0) DEFAULT 0 NOT NULL,
    diskon numeric(18,0) DEFAULT 0 NOT NULL,
    nokwitansi character(14) NOT NULL
);
    DROP TABLE public.tbl_vocjual;
       public         postgres    false            ?           1259    37753    typeac    TABLE     ?   CREATE TABLE public.typeac (
    actype character(5) NOT NULL,
    typename character(30) NOT NULL,
    jenisac character(1) NOT NULL,
    keyid character(1) NOT NULL,
    pls character(1) NOT NULL,
    neracatype character(1) NOT NULL
);
    DROP TABLE public.typeac;
       public         postgres    false            ?          0    26237    BEBAS 
   TABLE DATA               ]   COPY public."BEBAS" (kodeobat, namaobat, satuan1, hargabeli, hargajual, kemasan) FROM stdin;
    public       postgres    false    196   ??      ?          0    26258    OB 
   TABLE DATA               q   COPY public."OB" (kodeobat, namaobat, namageneric, golongan, "JENIS", satuan1, hargabeli, hargajual) FROM stdin;
    public       postgres    false    199   ??      ?          0    26270    OB2 
   TABLE DATA               k   COPY public."OB2" ("KODEOBAT", namaobat, namageneric, golongan, "JENIS", hargabeli, hargajual) FROM stdin;
    public       postgres    false    200   Ҵ                0    27910    TBL_APOSESUAILOG 
   TABLE DATA               ?   COPY public."TBL_APOSESUAILOG" (kodeobat, gudang, tglso, saldo, hasilso, sesuai, kogudang, username, tglentry, jamentry, hna, hpp) FROM stdin;
    public       postgres    false    264   ??                0    28004    TBL_APOSTOCKLOG 
   TABLE DATA                 COPY public."TBL_APOSTOCKLOG" (kodeobat, gudang, saldoawal, terima, keluar, hasilso, sesuai, saldoakhir, tglso, periodedate, awaltemp, terimatemp, keluartemp, akhirtemp, rakno, tidakterpakai, kogudang, hpp, maksimumstock, minimumstock, jual, lead1, lead2, lead) FROM stdin;
    public       postgres    false    270   ?      ?          0    36651    TBL_PROVIDER 
   TABLE DATA               P   COPY public."TBL_PROVIDER" ("PROVIDER", "NAMAPROVIDER", jenisjamin) FROM stdin;
    public       postgres    false    415   )?      ?          0    37621    TBL_TRIAGEUGD_DETAIL1 
   TABLE DATA               ?   COPY public."TBL_TRIAGEUGD_DETAIL1" ("NOREG", "REKMED", "PUKUL", "NAMAOBAT", "DOSIS", "RUTE", "DR", "DIPERIKSA", "DIBERI") FROM stdin;
    public       postgres    false    452   F?      ?          0    26957    TBL_apodpolog 
   TABLE DATA               ?   COPY public."TBL_apodpolog" (po_no, kodeobat, qty_po, qty_terima, qty_retur, price_po, satuan, discount, vat, vatrp, price_net, total, counter, pokey, rencana_no, ketbeli) FROM stdin;
    public       postgres    false    228   c?      ?          0    27252    TBL_apodterimalog 
   TABLE DATA               ?   COPY public."TBL_apodterimalog" (terima_no, kodeobat, qty_terima, satuan, price, discount, discountrp, vat, vatrp, totalrp, counter, oldqty, po_no, pocounter, exp_date, terimakey, pokey, hargajual, batno, hithpp, hpp) FROM stdin;
    public       postgres    false    236   ??      ?          0    27517    TBL_apohpolog 
   TABLE DATA               (  COPY public."TBL_apohpolog" (po_no, po_date, vendor_id, ship_via, ship_date, ref_no, kurs, kursrate, counter, proses, optype, closed, pilih, icgroup, cntpo, jenisbeli, username, dibuatoleh, diajukanoleh, disetujuioleh, disetujuitgl, disetujuijam, ownerlevel, ajukan, totalrp, setuju) FROM stdin;
    public       postgres    false    245   ??      ?          0    27631    TBL_apohreturbelilog 
   TABLE DATA               ?   COPY public."TBL_apohreturbelilog" (retur_no, terima_no, retur_date, vendor_id, invoice_no, gudang, counter, proses, closed, pilih) FROM stdin;
    public       postgres    false    249   ??      ?          0    27737    TBL_apohterimalog 
   TABLE DATA                 COPY public."TBL_apohterimalog" (terima_no, terima_date, due_date, vendor_id, invoice_no, sj_no, term, gudang, kurs, kursrate, counter, proses, closed, pilih, lunas, cntterima, luar, diskontotal, ppn, vatrp, jenisbeli, tgltukar, tukar, rbayar, materai, ongkir, bkemasan) FROM stdin;
    public       postgres    false    253   ׵                0    28133    TBL_cartofacc 
   TABLE DATA               ?  COPY public."TBL_cartofacc" (accountno, acname, actype, aclevel, kasbank, possaldo, saldo01, saldo02, saldo03, saldo04, saldo05, saldo06, saldo07, saldo08, saldo09, saldo10, saldo11, saldo12, tglsaldo, rekno, tglbank, saldobank, nodekey, awaltmpdebet, awaltmpcredit, trtmpdebet, trtmpcredit, akhirtmpdebet, akhirtmpcredit, saldoawal01, saldoawal02, saldoawal03, saldoawal04, saldoawal05, saldoawal06, saldo, bg01, bg02, bg03, bg04, bg05, bg06, bg07, bg08, bg09, bg10, bg11, bg12, judulac) FROM stdin;
    public       postgres    false    283   ??      2          0    28583 
   TBL_dpaket 
   TABLE DATA               ?   COPY public."TBL_dpaket" (paketid, kodetarif, kodepos, jasars, jasadr, tarifrs, tarifdroperasi, tarifasdroperasi, tarifdranestasi, tarifdrasanestasi, tarifasoperasi, drpendamping, paketkey) FROM stdin;
    public       postgres    false    312   ?      3          0    35119    TBL_dpaketobat 
   TABLE DATA               g   COPY public."TBL_dpaketobat" (paketid, kodeobat, satuan, qty, harga, totalharga, paketkey) FROM stdin;
    public       postgres    false    313   .?      >          0    35248    TBL_formathms 
   TABLE DATA                 COPY public."TBL_formathms" (regformat, rekmedformat, priceformat, totalformat, urutradiologi, printradiologi, rubahtarifradio, urutlaborat, printlaborat, rubahtariflab, penanggungjawablab, labkasir, labanak, labumuranak, urutbedah, printbedah, rubahtarifbedah, urutinap, printinap, rubahtarifinap, apoqty, apoprice, apototal, apoprint, apotransaksi, admpolip, admpolipsistem, admpolij, admpolijsistem, urutpoli, printpoli, rubahtarifpoli, poliautoprint, printkasir, aplikasigambar, filegambarbedah, filegambarradio, trubisnis, dospoli, vatdr, vatbeli, vatjual, reportpath, kasirradio, gunakanlcd, toleransijam, jamawal, sistempindah, jaminap, jaminapgratis, tombol, max_window, defagudang, apomargin, autorekmed, resepdrumum, resepdrsp, puyer, kapsul, jasamedis, sistemharga, apomarginj, apomarginb, insentifpoli, insentifbedah, insentiflab, insentifradio, insentifinap, insentifvk, acmodel, apowarning, tanggaldata, gltype, showmember, depopoli, depougd, deporadio, depolaborat, lebarrm, cetakjasa, autoclose, kodeobatotomatis, daftarugd) FROM stdin;
    public       postgres    false    324   K?      Y          0    35638 
   TBL_hpaket 
   TABLE DATA               Y   COPY public."TBL_hpaket" (paketid, namapaket, lamahari, feepengirim, uruttr) FROM stdin;
    public       postgres    false    351   h?      e          0    35798    TBL_hreport 
   TABLE DATA               H   COPY public."TBL_hreport" (reportcode, reportdesc, ifilter) FROM stdin;
    public       postgres    false    363   ??      m          0    35876    TBL_kartukredit 
   TABLE DATA               ?   COPY public."TBL_kartukredit" (nokwitansi, nocard, nootorisasi, tanggal, jumlahbayar, admpersen, admrp, totalcardrp, kodebank, cardtype, cardkey, urut) FROM stdin;
    public       postgres    false    371   ??      n          0    35891    TBL_kartukredit1 
   TABLE DATA               ?   COPY public."TBL_kartukredit1" (nokwitansi, nocard, nootorisasi, tanggal, jumlahbayar, admpersen, admrp, totalcardrp, kodebank, cardtype, cardkey, urut) FROM stdin;
    public       postgres    false    372   ??      ?          0    36539    TBL_posinap 
   TABLE DATA               ?  COPY public."TBL_posinap" (noreg, rekmed, tglpulang, kamarrp, autotr, totalrawat, disc, discrp, diskonby, totaluangmuka, admpersen, admrp, materai, jaminpr, totaljaminan, totalnet, yangharusdibayar, selisih, jenisbayar, bayar, nokwitansi, username, shipt, resetby, resetdate, resettime, accountno, ket, konpulang, admselisihpr, admtype, admtunairp, admtunaipr, admselisihrp, dibayaroleh, admtype1, jpk) FROM stdin;
    public       postgres    false    406   ܶ      ?          0    37537    TBl_TR 
   TABLE DATA               <   COPY public."TBl_TR" (notr, "OSTATUS", "OTYPE") FROM stdin;
    public       postgres    false    449   ??      ?          0    26244    coa12 
   TABLE DATA               M   COPY public.coa12 (accountno, acname, typename, actype, aclevel) FROM stdin;
    public       postgres    false    197   ?      ?          0    26247    dtproperties 
   TABLE DATA               ^   COPY public.dtproperties (id, objectid, property, value, uvalue, lvalue, version) FROM stdin;
    public       postgres    false    198   3?                0    28065    tbL_askespaketh 
   TABLE DATA               k   COPY public."tbL_askespaketh" (paketaskes, keterangan, askesrp, jamkesmas, kodepos, urut, slc) FROM stdin;
    public       postgres    false    276   P?      ?          0    36201    tbl_OB 
   TABLE DATA               ?  COPY public."tbl_OB" (kodeobat, namaobat, namageneric, pabrik, icgroup, golongan, jenis, groupharga, jenisobat, kemasan, satuan1, satuan2, faktorsat2, satuan2qty, satuan3, faktorsat3, satuan3qty, hargabeli, hargabeliluar, hargabelippn, hargajual, hargajualrekanan, hargajualluar, hpp, minstock, maxstock, vendor_id, hargatype, discc, discp, notax, depkesjenis, leadtime, reorder, jenisstock, useredit, tgledit, userbuat, tglbuat, hppawal, minimum, kodepareto) FROM stdin;
    public       postgres    false    391   m?      ?          0    26399    tbl_ac_type 
   TABLE DATA               4   COPY public.tbl_ac_type (ackode, acgol) FROM stdin;
    public       postgres    false    207   ??      ?          0    26280    tbl_accostcentre 
   TABLE DATA               :   COPY public.tbl_accostcentre (depid, namadep) FROM stdin;
    public       postgres    false    201   ??      ?          0    26283    tbl_accountinap 
   TABLE DATA               J   COPY public.tbl_accountinap (accountno, kodetarif, bangsalid) FROM stdin;
    public       postgres    false    202   ķ      ?          0    26289    tbl_accounting 
   TABLE DATA               l   COPY public.tbl_accounting (accountno, acname, actype, aclevel, kasbank, nodekey, aktif, depid) FROM stdin;
    public       postgres    false    203   ??      ?          0    26302    tbl_accounting_BK 
   TABLE DATA               q   COPY public."tbl_accounting_BK" (accountno, acname, actype, aclevel, kasbank, nodekey, aktif, depid) FROM stdin;
    public       postgres    false    204   ??      ?          0    26359    tbl_acsaldo 
   TABLE DATA               ?   COPY public.tbl_acsaldo (tahun, accountno, saldo01, saldo02, saldo03, saldo04, saldo05, saldo06, saldo07, saldo08, saldo09, saldo10, saldo11, saldo12, bg01, bg02, bg03, bg04, bg05, bg06, bg07, bg08, bg09, bg10, bg11, bg12) FROM stdin;
    public       postgres    false    205   ?      ?          0    26388 
   tbl_actype 
   TABLE DATA               f   COPY public.tbl_actype (actype, typename, jenisac, keyid, pls, neracatype, ackode, depid) FROM stdin;
    public       postgres    false    206   8?      ?          0    26502    tbl_akdt 
   TABLE DATA               ?   COPY public.tbl_akdt (noreg, rekmed, kodokter, totaltr, jasarp, pajak, dibayarrp, lunas, tglpulang, tgldibayar, nokwitansi, nihil, diskonrp, tglalokasi) FROM stdin;
    public       postgres    false    208   U?      ?          0    26534    tbl_akdtdetail 
   TABLE DATA               ?   COPY public.tbl_akdtdetail (nobukti, tgltransaksi, kodetarif, totaltr, totaljasa, noreg, rekmed, notr, poskey, kodepos, kodokter, feepr, koreksi) FROM stdin;
    public       postgres    false    209   r?      ?          0    26554 	   tbl_akdth 
   TABLE DATA               D   COPY public.tbl_akdth (nobukti, tgltr, noreg, ok, step) FROM stdin;
    public       postgres    false    210   ??      ?          0    26564    tbl_akdtpay 
   TABLE DATA               ?   COPY public.tbl_akdtpay ("NOBAYAR", "KODOKTER", "TGLBAYAR", "PERIODE1", "PERIODE2", "ACCOUNTNO", "TOTALAKDT", rspr, "UNTUKRS", admpr, "ADM", pajakpr, "PAJAK", "KASBONRP", potlain, totalnet, "USER_NAME", "DISERAHKANOLEH") FROM stdin;
    public       postgres    false    211   ??      ?          0    26584    tbl_alkesmedik 
   TABLE DATA               f   COPY public.tbl_alkesmedik (kodetarif, kodeobat, qty_pakai, satuan, hargasat, totalharga) FROM stdin;
    public       postgres    false    212   ɸ      ?          0    26593    tbl_alkespakai 
   TABLE DATA               ?   COPY public.tbl_alkespakai (notr, "TGLPAKAI", noreg, kodepos, kodeobat, qty, oldqty, harga, totalharga, trkey, gudang) FROM stdin;
    public       postgres    false    213   ??      ?          0    26645    tbl_alkestransaksi 
   TABLE DATA               ?   COPY public.tbl_alkestransaksi (notr, kodetarif, kodeobat, qty, oldqty, satuan, harga, totalharga, tgltransaksi, gudang, posting, notrkey, dibebankan, hpp, coverrp) FROM stdin;
    public       postgres    false    214   ?      ?          0    26664    tbl_alkestransaksibk 
   TABLE DATA               ?   COPY public.tbl_alkestransaksibk (notr, kodetarif, kodeobat, qty, oldqty, satuan, harga, totalharga, tgltransaksi, gudang, posting, notrkey, dibebankan, hpp, coverrp) FROM stdin;
    public       postgres    false    215    ?      ?          0    26668 	   tbl_almed 
   TABLE DATA               x   COPY public.tbl_almed (kdperalatan, nama, jumlah, umur1, umur2, umur3, kapasitas, kondisi, izin, kalibrasi) FROM stdin;
    public       postgres    false    216   =?      ?          0    26671    tbl_antrirj 
   TABLE DATA               L   COPY public.tbl_antrirj (tglantri, noantri, kodokter, antrikey) FROM stdin;
    public       postgres    false    217   Z?      ?          0    26718 	   tbl_apoap 
   TABLE DATA               ?   COPY public.tbl_apoap (terima_no, invoice_no, vendor_id, tglinvoice, duedate, totaltagihan, totalbayar, posting, lunas, pilih, keterangan, otomatis, term, tukarfaktur, logis, otax) FROM stdin;
    public       postgres    false    218   w?      ?          0    26757    tbl_apoap12 
   TABLE DATA               ?   COPY public.tbl_apoap12 (terima_no, invoice_no, vendor_id, tglinvoice, duedate, totaltagihan, totalbayar, posting, lunas, pilih, keterangan, otomatis, term, tukarfaktur, logis) FROM stdin;
    public       postgres    false    219   ??      ?          0    26795    tbl_apodbhp 
   TABLE DATA               ?   COPY public.tbl_apodbhp (resepno, kodeobat, qty, oldqty, satuan, discount, discrp, price, hna, hpp, ongkosracik, totalrp, counter, keyresep, resepcounter, exp_date, atpakai, racikurut, selisih, hargadicover, ppn, ppnrp, ppntype, rakno) FROM stdin;
    public       postgres    false    220   ??      ?          0    26821    tbl_apodetresep 
   TABLE DATA               ?   COPY public.tbl_apodetresep (keyresep, resepno, kodeobat, qty, qtyr, oldqty, satuan, discount, discrp, hpp, price, ongkosracik, uangr, totalrp, counter, exp_date, keyresepid, selisih) FROM stdin;
    public       postgres    false    221   ι      ?          0    26861    tbl_apodmohon 
   TABLE DATA               u   COPY public.tbl_apodmohon (mohonno, kodeobat, satuan, qtymohon, harga, totalharga, keterangan, mohonkey) FROM stdin;
    public       postgres    false    222   ??      ?          0    26872    tbl_apodmohonlog 
   TABLE DATA               x   COPY public.tbl_apodmohonlog (mohonno, kodeobat, satuan, qtymohon, harga, totalharga, keterangan, mohonkey) FROM stdin;
    public       postgres    false    223   ?      ?          0    26883    tbl_apodmove 
   TABLE DATA               ?   COPY public.tbl_apodmove (moveno, kodeobat, satuan, qtymove, harga, totalharga, keterangan, mohonkey, movekey, oldqty, exp_date, hpp) FROM stdin;
    public       postgres    false    224   %?      ?          0    26898    tbl_apodmovelog 
   TABLE DATA               ?   COPY public.tbl_apodmovelog (moveno, kodeobat, satuan, qtymove, harga, totalharga, keterangan, mohonkey, movekey, oldqty, exp_date, hpp) FROM stdin;
    public       postgres    false    225   B?      ?          0    26912    tbl_apodpakai 
   TABLE DATA               ?   COPY public.tbl_apodpakai (resepno, kodeobat, qty, oldqty, satuan, discount, discrp, price, hna, hpp, ongkosracik, totalrp, counter, keyresep, resepcounter, exp_date, atpakai, racikurut) FROM stdin;
    public       postgres    false    226   _?      ?          0    26926 
   tbl_apodpo 
   TABLE DATA               ?   COPY public.tbl_apodpo (po_no, kodeobat, qty_po, qty_terima, qty_retur, price_po, satuan, discount, vat, vatrp, price_net, total, counter, pokey, rencana_no) FROM stdin;
    public       postgres    false    227   |?      ?          0    26991    tbl_apodproduksi 
   TABLE DATA               ?   COPY public.tbl_apodproduksi (moveno, kodeobat, satuan, qtymove, harga, totalharga, keterangan, mohonkey, movekey, oldqty, exp_date, hpp) FROM stdin;
    public       postgres    false    229   ??      ?          0    27050    tbl_apodresep 
   TABLE DATA                 COPY public.tbl_apodresep (resepno, kodeobat, namaobat, qty, oldqty, satuan, discount, discrp, price, hna, hpp, ongkosracik, totalrp, counter, keyresep, resepcounter, exp_date, atpakai, racikurut, selisih, hargadicover, ppn, ppnrp, ppntype, rakno) FROM stdin;
    public       postgres    false    230   ??      ?          0    27098    tbl_apodresepbk 
   TABLE DATA                 COPY public.tbl_apodresepbk (resepno, kodeobat, namaobat, qty, oldqty, satuan, discount, discrp, price, hna, hpp, ongkosracik, totalrp, counter, keyresep, resepcounter, exp_date, atpakai, racikurut, selisih, hargadicover, ppn, ppnrp, ppntype, rakno) FROM stdin;
    public       postgres    false    231   Ӻ      ?          0    27139    tbl_apodreturbeli 
   TABLE DATA               ?   COPY public.tbl_apodreturbeli (retur_no, kodeobat, qty_retur, satuan, price, discount, oldqty, totalrp, exp_date, po_no, returkey, terimakey, tax, taxrp, hpp) FROM stdin;
    public       postgres    false    232   ??      ?          0    27172    tbl_apodreturbelilog 
   TABLE DATA               ?   COPY public.tbl_apodreturbelilog (retur_no, kodeobat, qty_retur, satuan, price, discount, oldqty, totalrp, exp_date, po_no, returkey, terimakey, tax, taxrp, hpp) FROM stdin;
    public       postgres    false    233   ?      ?          0    27207    tbl_apodreturjual 
   TABLE DATA               ?   COPY public.tbl_apodreturjual (returno, kodeobat, qtyretur, oldqty, satuan, discount, price, ongkosracik, exp_date, totalrp, counter, keyresep, hpp, discountrp, ppn, ppnrp) FROM stdin;
    public       postgres    false    234   *?      ?          0    27227    tbl_apodterima 
   TABLE DATA               ?   COPY public.tbl_apodterima (terima_no, kodeobat, qty_terima, satuan, price, discount, discountrp, vat, vatrp, totalrp, counter, oldqty, po_no, pocounter, exp_date, terimakey, pokey, hargajual, batno, hithpp, hpp) FROM stdin;
    public       postgres    false    235   G?      ?          0    27307    tbl_apohbhp 
   TABLE DATA               ?  COPY public.tbl_apohbhp (resepno, antrino, noreg, rekmed, jenisjual, jenispas, pro, tglresep, jam, jamdaftar, jamserah, kodokter, gudang, counter, bayar, posting, nokwitansi, jasalain, jaminan, kelas, keluar, username, shipt, selesai, ambil, typebayar, kodepel, drluar, luar, nosp, tglbayar, prosenjamin, kontribusi, kontribusirp, useredit, tgledit, userbatal, tglbatal, jamedit, jambatal, batal, alasanbatal, asal) FROM stdin;
    public       postgres    false    237   d?      ?          0    27391 
   tbl_apohex 
   TABLE DATA               ?  COPY public.tbl_apohex (resepno, antrino, noreg, rekmed, jenisjual, jenispas, pro, tglresep, jam, jamdaftar, jamserah, kodokter, gudang, counter, bayar, posting, nokwitansi, jasalain, jaminan, kelas, keluar, username, shipt, selesai, ambil, typebayar, kodepel, drluar, luar, nosp, tglbayar, prosenjamin, kontribusi, kontribusirp, useredit, tgledit, userbatal, tglbatal, jamedit, jambatal, batal, alasanbatal, asal) FROM stdin;
    public       postgres    false    238   ??      ?          0    27439    tbl_apohmohon 
   TABLE DATA               Y   COPY public.tbl_apohmohon (mohonno, tglmohon, dari, ke, keterangan, counter) FROM stdin;
    public       postgres    false    239   ??      ?          0    27449    tbl_apohmohonlog 
   TABLE DATA               \   COPY public.tbl_apohmohonlog (mohonno, tglmohon, dari, ke, keterangan, counter) FROM stdin;
    public       postgres    false    240   ??      ?          0    27459    tbl_apohmove 
   TABLE DATA               r   COPY public.tbl_apohmove (moveno, mohonno, movedate, dari, ke, keterangan, proses, counter, diterima) FROM stdin;
    public       postgres    false    241   ػ      ?          0    27472    tbl_apohmovelog 
   TABLE DATA               u   COPY public.tbl_apohmovelog (moveno, mohonno, movedate, dari, ke, keterangan, proses, counter, diterima) FROM stdin;
    public       postgres    false    242   ??      ?          0    27485    tbl_apohpakai 
   TABLE DATA               ?   COPY public.tbl_apohpakai (resepno, antrino, noreg, rekmed, jenispas, pro, tglresep, jamentry, kodokter, gudang, counter, bayar, posting, username, shipt) FROM stdin;
    public       postgres    false    243   ?      ?          0    27488 
   tbl_apohpo 
   TABLE DATA               #  COPY public.tbl_apohpo (po_no, po_date, vendor_id, ship_via, ship_date, ref_no, kurs, kursrate, counter, proses, optype, closed, pilih, icgroup, cntpo, jenisbeli, username, dibuatoleh, diajukanoleh, disetujuioleh, disetujuitgl, disetujuijam, ownerlevel, ajukan, totalrp, setuju) FROM stdin;
    public       postgres    false    244   /?      ?          0    27550    tbl_apohproduksi 
   TABLE DATA               ?   COPY public.tbl_apohproduksi (moveno, mohonno, "TGLPRODUKSI", "GUDANG", "QTYJADI", "KODEOBAT", keterangan, proses, counter, diterima, "HNA", hnappn, "HPP", "OLDQTY") FROM stdin;
    public       postgres    false    246   L?      ?          0    27568    tbl_apohresep 
   TABLE DATA               ?  COPY public.tbl_apohresep (resepno, antrino, noreg, rekmed, jenisjual, jenispas, pro, tglresep, jam, jamdaftar, jamserah, kodokter, gudang, counter, bayar, posting, nokwitansi, jasalain, jaminan, kelas, keluar, username, shipt, selesai, ambil, typebayar, kodepel, drluar, luar, nosp, tglbayar, prosenjamin, kontribusi, kontribusirp, useredit, tgledit, userbatal, tglbatal, jamedit, jambatal, batal, alasanbatal, pajak, fakturpajak) FROM stdin;
    public       postgres    false    247   i?      ?          0    27617    tbl_apohreturbeli 
   TABLE DATA               ?   COPY public.tbl_apohreturbeli (retur_no, terima_no, retur_date, vendor_id, invoice_no, gudang, counter, proses, closed, pilih) FROM stdin;
    public       postgres    false    248   ??      ?          0    27645    tbl_apohreturjual 
   TABLE DATA               ?   COPY public.tbl_apohreturjual (returno, resepno, noreg, rekmed, tglretur, kodokter, gudang, counter, bayar, posting, prosen, totalnet, nokwitansi) FROM stdin;
    public       postgres    false    250   ??      ?          0    27660    tbl_apohterima 
   TABLE DATA                 COPY public.tbl_apohterima (terima_no, terima_date, due_date, vendor_id, invoice_no, sj_no, term, gudang, kurs, kursrate, counter, proses, closed, pilih, lunas, cntterima, luar, diskontotal, ppn, vatrp, jenisbeli, tgltukar, tukar, rbayar, materai, ongkir, bkemasan) FROM stdin;
    public       postgres    false    251   ??      ?          0    27711    tbl_apohterima12 
   TABLE DATA                 COPY public.tbl_apohterima12 (terima_no, terima_date, due_date, vendor_id, invoice_no, sj_no, term, gudang, kurs, kursrate, counter, proses, closed, pilih, lunas, cntterima, luar, diskontotal, ppn, vatrp, jenisbeli, tgltukar, tukar, rbayar, materai) FROM stdin;
    public       postgres    false    252   ݼ      ?          0    27766    tbl_apojasa 
   TABLE DATA               ?   COPY public.tbl_apojasa (resepno, tglresep, qtyembal, hargaembal, totalembal, qtykapsul, hargakapsul, totalkapsul, jasaresep, jasalain) FROM stdin;
    public       postgres    false    254   ??      ?          0    27778    tbl_apokurs 
   TABLE DATA               1   COPY public.tbl_apokurs (kurs, rate) FROM stdin;
    public       postgres    false    255   ?      ?          0    27781    tbl_apomargin 
   TABLE DATA               L   COPY public.tbl_apomargin (kelas, keterangan, margin1, margin2) FROM stdin;
    public       postgres    false    256   4?      ?          0    27784    tbl_apomims 
   TABLE DATA               l   COPY public.tbl_apomims (kodemims, genericname, komposisi, indikasi, kontraindikasi, interaksi) FROM stdin;
    public       postgres    false    257   Q?      ?          0    27789    tbl_apoobat 
   TABLE DATA               ?  COPY public.tbl_apoobat (kodeobat, namaobat, namageneric, pabrik, icgroup, golongan, jenis, groupharga, jenisobat, kemasan, satuan1, satuan2, faktorsat2, satuan2qty, satuan3, faktorsat3, satuan3qty, hargabeli, hargabeliluar, hargabelippn, hargajual, hargajualrekanan, hargajualluar, hpp, minstock, maxstock, vendor_id, hargatype, discc, discp, notax, depkesjenis, leadtime, reorder, jenisstock, useredit, tgledit, userbuat, tglbuat, hppawal, minimum, kodepareto, hppfinal) FROM stdin;
    public       postgres    false    258   n?      ?          0    27838    tbl_apopareto 
   TABLE DATA               G   COPY public.tbl_apopareto (kodepareto, keterangan, satuan) FROM stdin;
    public       postgres    false    259   ??      ?          0    27866    tbl_apoposting 
   TABLE DATA               ?   COPY public.tbl_apoposting (resepno, tglresep, noreg, rekmed, namapas, gudang, posdebet, poscredit, dicoverrp, bayar, keyresep, langsung, posting, keluar, kodepel, nokwitansi, username, shipt, jpk, kirimdata, diskonrs) FROM stdin;
    public       postgres    false    260   ??      ?          0    27891    tbl_aporesepdr 
   TABLE DATA               ?   COPY public.tbl_aporesepdr (noreg, kodeobat, qty, oldqty, satuan, discount, discrp, price, totalrp, counter, keyresep, resepcount) FROM stdin;
    public       postgres    false    261   Ž                 0    27894    tbl_aporesepdrd 
   TABLE DATA               ?   COPY public.tbl_aporesepdrd (noreg, kodeobat, qty, oldqty, satuan, discount, discrp, price, totalrp, counter, keyresep, resepcount) FROM stdin;
    public       postgres    false    262   ??                0    27897    tbl_aposesuai 
   TABLE DATA               ?   COPY public.tbl_aposesuai (kodeobat, gudang, tglso, saldo, hasilso, sesuai, kogudang, username, tglentry, jamentry, hna, hpp) FROM stdin;
    public       postgres    false    263   ??                0    27933    tbl_aposetup 
   TABLE DATA               l   COPY public.tbl_aposetup (apocode, aponame, apogroup, profitp, profitj, darirp, sampairp, flak) FROM stdin;
    public       postgres    false    265   ?                0    27946    tbl_aposhipping 
   TABLE DATA               f   COPY public.tbl_aposhipping (shipingcode, namaexpedisi, alamat1, alamat2, phone, contact) FROM stdin;
    public       postgres    false    266   9?                0    27949 	   tbl_aposo 
   TABLE DATA               g   COPY public.tbl_aposo (kodeobat, gudang, tanggalso, saldoakhir, hasilso, sesuai, username) FROM stdin;
    public       postgres    false    267   V?                0    27958    tbl_apostock 
   TABLE DATA                 COPY public.tbl_apostock (kodeobat, gudang, saldoawal, terima, keluar, hasilso, sesuai, saldoakhir, tglso, periodedate, awaltemp, terimatemp, keluartemp, akhirtemp, rakno, tidakterpakai, kogudang, hpp, maksimumstock, minimumstock, jual, lead1, lead2, lead, lasttr) FROM stdin;
    public       postgres    false    268   s?                0    27990    tbl_apostock1 
   TABLE DATA                  COPY public.tbl_apostock1 (kodeobat, gudang, exp_date, awal, terima, keluar, akhir, stockperiode, habis, stockkey) FROM stdin;
    public       postgres    false    269   ??      	          0    28027    tbl_apovendor 
   TABLE DATA               ?   COPY public.tbl_apovendor (vendor_id, vendor_name, alamat1, alamat2, alamat3, phone, fax, email, contact, saldopiutang, pertanggal, tgltmp, saldoawaltmp, hutangtmp, bayartmp, saldoakhirtmp, ap_account) FROM stdin;
    public       postgres    false    271   ??      
          0    28047    tbl_apovendorlink 
   TABLE DATA               @   COPY public.tbl_apovendorlink (vendor_id, kodeobat) FROM stdin;
    public       postgres    false    272   ʾ                0    28050    tbl_askesgol 
   TABLE DATA               L   COPY public.tbl_askesgol (askesgol, namagol, askeskelas, tarif) FROM stdin;
    public       postgres    false    273   ??                0    28056    tbl_askesnotarif 
   TABLE DATA               H   COPY public.tbl_askesnotarif (kodetarif, tindakan, kodepos) FROM stdin;
    public       postgres    false    274   ?                0    28062    tbl_askespaketd 
   TABLE DATA               J   COPY public.tbl_askespaketd (paketaskes, kodetarif, askeskey) FROM stdin;
    public       postgres    false    275   !?                0    28070    tbl_bangsal 
   TABLE DATA               P   COPY public.tbl_bangsal (bangsalid, nama_bangsal, lokasi, depkesid) FROM stdin;
    public       postgres    false    277   >?                0    28080    tbl_bank 
   TABLE DATA               6   COPY public.tbl_bank (kodebank, namabank) FROM stdin;
    public       postgres    false    278   [?                0    28085    tbl_barangtitip 
   TABLE DATA               w   COPY public.tbl_barangtitip (kodefix, serialno, namafix, fixid, tglaku, tglpakai, jumlah, lokasi, pemakai) FROM stdin;
    public       postgres    false    279   x?                0    28095    tbl_bayilahir 
   TABLE DATA               x   COPY public.tbl_bayilahir (keyrekmed, penolong, persalinan, rekmedbayi, rekmedibu, bb, tb, nmayah, tanggal) FROM stdin;
    public       postgres    false    280   ??                0    28108    tbl_bedahobat 
   TABLE DATA               ?   COPY public.tbl_bedahobat (nooperasi, noreg, rekmed, kodeobat, qty, oldqty, satuan, harga, totalharga, keyoperasi, hpp) FROM stdin;
    public       postgres    false    281   ??                0    28122    tbl_bedahobath 
   TABLE DATA               g   COPY public.tbl_bedahobath (noreg, rekmed, tgloperasi, urutbk, gudang, nooperasi, coverrp) FROM stdin;
    public       postgres    false    282   Ͽ                0    28136    tbl_catatan 
   TABLE DATA               c   COPY public.tbl_catatan (c_id, note1, note2, note3, note4, note5, note6, note7, note8) FROM stdin;
    public       postgres    false    284   ??                0    28153    tbl_dap 
   TABLE DATA               ?   COPY public.tbl_dap (ap_id, bayar, terima_no, invoice_no, notukar, tglinvoice, due_date, totalhutang, dibayar, lunas, keyid) FROM stdin;
    public       postgres    false    285   	?                0    28165 
   tbl_darirj 
   TABLE DATA               ?   COPY public.tbl_darirj (noreg, noreginap, rekmed, tglmasuk, jam, kodepos, koderuang, kodekamar, noinap, okbiaya, kodokter) FROM stdin;
    public       postgres    false    286   &?                0    28179 
   tbl_dbayar 
   TABLE DATA               V   COPY public.tbl_dbayar (bayarno, accountno, keterangan, jumlah, bayarkey) FROM stdin;
    public       postgres    false    287   C?                0    28190 
   tbl_dbedah 
   TABLE DATA                 COPY public.tbl_dbedah (nooperasi, kodetarif, jenis, tarifrs, tarifdroperasi, tarifasdroperasi, tarifdranestasi, tarifdrasanestasi, tarifasoperasi, droperasi2, dranakrp, old1, old2, old3, old4, old5, old6, old7, old8, persen, bedahkey, jpk, coverrp, penyulit) FROM stdin;
    public       postgres    false    288   `?                0    28217    tbl_dbedahdetail 
   TABLE DATA               ?   COPY public.tbl_dbedahdetail (nooperasi, bedahkey, kodetarif, bedahidkey, kodokter, tarifrp, feedr, feedrrp, diskon, diskonrp, coverrp, operasikey, ok, cito, citorp, basetarif, citook, qtyjam, penyulitrp, jpk) FROM stdin;
    public       postgres    false    289   }?                0    28243    tbl_dbedahdiagnosa 
   TABLE DATA               ?   COPY public.tbl_dbedahdiagnosa (bedahkey, noreg, rekmed, tgloperasi, kodetarif, dokter1, dokter2, dokter3, dokter4, diagnosaawal, diagnosaakhir, cnt) FROM stdin;
    public       postgres    false    290   ??                0    28249    tbl_dbedahphoto 
   TABLE DATA               ^   COPY public.tbl_dbedahphoto (bedahkey, ketfoto, lokasiphoto, namaphoto, filename) FROM stdin;
    public       postgres    false    291   ??                0    28252 
   tbl_depkes 
   TABLE DATA               W   COPY public.tbl_depkes ("DEPKESID", "DEPKESKET", "DEPKESGROUP", "GROUPID") FROM stdin;
    public       postgres    false    292   ??                0    28256    tbl_depkesicd 
   TABLE DATA               V   COPY public.tbl_depkesicd ("NODTD", "NODTC", "PENYAKIT", "SURVEI", "IGR") FROM stdin;
    public       postgres    false    293   ??                 0    28266    tbl_depo 
   TABLE DATA               y   COPY public.tbl_depo (depocode, keterangan, muncul, depokey, konekpos, leadmin, leadmax, "Prosen", jedahari) FROM stdin;
    public       postgres    false    294   ?      !          0    28282    tbl_dfaktur 
   TABLE DATA               z   COPY public.tbl_dfaktur (notukar, nobapb, tglbapb, faktur, total, keytukar, proses, bank, rekening, cek, ket) FROM stdin;
    public       postgres    false    295   +?      "          0    28297    tbl_dgizimaster 
   TABLE DATA               V   COPY public.tbl_dgizimaster (kode, komponen, keyk, "Waktusaji", kodekand) FROM stdin;
    public       postgres    false    296   H?      #          0    28305    tbl_dgizitr 
   TABLE DATA               ?   COPY public.tbl_dgizitr (kodetr, makanpagi, dietpagi, tp1, tp2, tp3, makansiang, dietsiang, ts1, ts2, ts3, makanmalam, dietmalam, tm1, tm2, tm3, harga1, harga2, harga3, harga4, selingan, lain1, lain2, lain3) FROM stdin;
    public       postgres    false    297   e?      $          0    28336    tbl_dhasillabnew 
   TABLE DATA               ?   COPY public.tbl_dhasillabnew (labkey, kodegol, kodelab, pemeriksaan, satuan, jperiksa, normal1, normal2, hasiln, hasilc, normalc, tandai, labsokey, keterangan, desi, nilaiket) FROM stdin;
    public       postgres    false    298   ??      %          0    28357    tbl_diagnosa 
   TABLE DATA               U   COPY public.tbl_diagnosa (noreg, rekmed, adiag1, adiag2, adiag3, adiag4) FROM stdin;
    public       postgres    false    299   ??      &          0    28360    tbl_diagnosis 
   TABLE DATA                 COPY public.tbl_diagnosis (noreg, rekmed, tglkeluar, diagnosamasuk, diagnosakeluar, icd1, icd2, icd3, sudahok, alergi, diagnosakerja, drkirim, drrawat, drkonsul, drkonsul1, drkonsul2, drkonsul3, kelas, anamnesis, hasilradlab, terapiberi, tindakanberi, terapilanjut, catatan) FROM stdin;
    public       postgres    false    300   ??      '          0    28389 	   tbl_dinap 
   TABLE DATA               ?   COPY public.tbl_dinap (noinap, pos, kodokter, kodokter2, kodetarif, tarifrs, tarifdr, jasalain, diskon, diskonrp, ambiljasa, periodeambil1, periodeambil2, prosendr, inapkey, kodokter3, coverrp, paket, "JPK") FROM stdin;
    public       postgres    false    301   ??      (          0    28409    tbl_djasadr 
   TABLE DATA               ?   COPY public.tbl_djasadr (nobukti, ambil, tgltransaksi, kodetarif, totaltr, totaljasa, noreg, rekmed, notr, pos, poskey, kodepos, mket, koreksi) FROM stdin;
    public       postgres    false    302   ??      )          0    28425    tbl_dlab 
   TABLE DATA               ?   COPY public.tbl_dlab (nolaborat, kodetarif, jenis, tarifrs, tarifdr, oldtarifrs, oldtarifdr, diskon, diskonrp, persen, labkey, coverrp, paketid, jpk) FROM stdin;
    public       postgres    false    303   ?      *          0    28444 
   tbl_dlab01 
   TABLE DATA               [   COPY public.tbl_dlab01 (kodetarif, labkey, hasil01, hasil02, hasil03, hasil04) FROM stdin;
    public       postgres    false    304   0?      +          0    28452 
   tbl_dlab02 
   TABLE DATA               ?   COPY public.tbl_dlab02 (kodetarif, labkey, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25) FROM stdin;
    public       postgres    false    305   M?      ,          0    28484 
   tbl_dlab03 
   TABLE DATA               ?   COPY public.tbl_dlab03 (kodetarif, labkey, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17) FROM stdin;
    public       postgres    false    306   j?      -          0    28506 
   tbl_dlab04 
   TABLE DATA               ?   COPY public.tbl_dlab04 (kodetarif, labkey, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20) FROM stdin;
    public       postgres    false    307   ??      .          0    28531    tbl_dlabmohon 
   TABLE DATA               G   COPY public.tbl_dlabmohon (nomohon, kodetarif, nomohonkey) FROM stdin;
    public       postgres    false    308   ??      /          0    28534    tbl_dlogistik 
   TABLE DATA               h   COPY public.tbl_dlogistik (logno, kodeobat, satuan, qty, oldqty, logkey, harga, totalharga) FROM stdin;
    public       postgres    false    309   ??      0          0    28546 
   tbl_dmedis 
   TABLE DATA               ?   COPY public.tbl_dmedis (noradio, kodetarif, jenis, tarifrs, tarifdr, oldtarifrs, oldtarifdr, diskon, diskonrp, persen, radiokey, radiomohonkey, nofoto, coverrp, jpk, qty) FROM stdin;
    public       postgres    false    310   ??      1          0    28566 
   tbl_dokter 
   TABLE DATA               ?   COPY public.tbl_dokter (kodokter, nadokter, tglmasuk, tgllahir, alamat1, alamat2, phone, hp, email, alumnus, status, specialis, urutdr, pphc, pph, ckey) FROM stdin;
    public       postgres    false    311   ??      4          0    35129 	   tbl_dpoli 
   TABLE DATA               '  COPY public.tbl_dpoli (nopoli, pos, kodokter, kodetarif, qty, tarifrs, discrs, rsnet, tarifdr, discdr, drnet, obatnet, polinet, paramedis, coverrp, ambiljasa, periodeambil1, periodeambil2, policounter, prosendr, lobat, bahan, diskpr, diskrp, paketid, jpk, kwt, kettindak, koperawat) FROM stdin;
    public       postgres    false    314   ?      5          0    35161 
   tbl_dradio 
   TABLE DATA               ?   COPY public.tbl_dradio (noradio, kodetarif, jenis, tarifrs, tarifdr, oldtarifrs, oldtarifdr, diskon, diskonrp, persen, radiokey, radiomohonkey, nofoto, coverrp, jpk) FROM stdin;
    public       postgres    false    315   5?      6          0    35179    tbl_dradiomohon 
   TABLE DATA               O   COPY public.tbl_dradiomohon (radiomohon, kodetarif, radiomohonkey) FROM stdin;
    public       postgres    false    316   R?      7          0    35184    tbl_dreport 
   TABLE DATA               s   COPY public.tbl_dreport (reportcode, reportket, reportname, rindex, belumbisa, rtype, grindex, rparam) FROM stdin;
    public       postgres    false    317   o?      8          0    35195    tbl_drpengirim 
   TABLE DATA               ~   COPY public.tbl_drpengirim (kodokter, nadokter, alamat1, alamat2, phone, hp, komisi, komisirp, sistemkomisi, pph) FROM stdin;
    public       postgres    false    318   ??      9          0    35198 
   tbl_drpoli 
   TABLE DATA               7   COPY public.tbl_drpoli (kodokter, kodepos) FROM stdin;
    public       postgres    false    319   ??      :          0    35201 
   tbl_eresep 
   TABLE DATA               z   COPY public.tbl_eresep ("NOREG", "KODEOBAT", "NAMAOBAT", "SATUAN", "QTY", "HARGA", "TOTALHARGA", aturanpakai) FROM stdin;
    public       postgres    false    320   ??      ;          0    35212 	   tbl_fixed 
   TABLE DATA               Q   COPY public.tbl_fixed (fixid, fixname, fixcode, bulansusut, fixrate) FROM stdin;
    public       postgres    false    321   ??      <          0    35220    tbl_fixedasset 
   TABLE DATA               ?   COPY public.tbl_fixedasset (kodefix, serialno, namafix, fixid, tglaku, tglpakai, tglkalibrasi, jumlah, nilaiaktiva, lokasi, pemakai, umurth, umurbl, bulansusut, accountak, accountsusut, accountbiaya, account, vat) FROM stdin;
    public       postgres    false    322    ?      =          0    35239    tbl_fixsusut 
   TABLE DATA               j   COPY public.tbl_fixsusut (kodefix, kodesusut, tglsusut, blsusut, prosensusut, susutrp, susut) FROM stdin;
    public       postgres    false    323   ?      ?          0    35263    tbl_gizidiet 
   TABLE DATA               F   COPY public.tbl_gizidiet (kodediet, namadiet, keterangan) FROM stdin;
    public       postgres    false    325   :?      @          0    35269    tbl_gizidistribusi 
   TABLE DATA               ?   COPY public.tbl_gizidistribusi (kodedistribusi, kodeobat, satuan, qty, oldqty, pakai, pasien, kode, tanggal, diit, vip, pasiendiit, pasienvip) FROM stdin;
    public       postgres    false    326   W?      A          0    35283    tbl_gizigroup 
   TABLE DATA               I   COPY public.tbl_gizigroup (kodegroup, namagroup, keterangan) FROM stdin;
    public       postgres    false    327   t?      B          0    35289    tbl_gizihitung 
   TABLE DATA               G   COPY public.tbl_gizihitung (kodeobat, satuan, qty, faktor) FROM stdin;
    public       postgres    false    328   ??      C          0    35296    tbl_gizikandungan 
   TABLE DATA               =   COPY public.tbl_gizikandungan (kode, keterangan) FROM stdin;
    public       postgres    false    329   ??      D          0    35301    tbl_glinterface 
   TABLE DATA               W  COPY public.tbl_glinterface (ac_obatrj, ac_obatri, ac_obatbebas, ac_hppobatrj, ac_hppobatri, ac_hppobatbebas, dep_far1, ac_hpplokal, ac_hppkulit, ac_persediaanlokal, ac_persediaankulit, ac_penjualankulit, ac_penjualanlokal, ac_pendapatanadm, ppnmasukan, ppnkeluaran, kasirke, kasirdari, diskonbeli, ac_bkirim, ac_bkemasan, bhpvoc) FROM stdin;
    public       postgres    false    330   ??      E          0    35326    tbl_hap 
   TABLE DATA                  COPY public.tbl_hap (ap_id, vendor_id, pay_date, cek_no, ket, accountno, totalbayar, proses, username, shipt, vat) FROM stdin;
    public       postgres    false    331   ??      F          0    35339 
   tbl_harpas 
   TABLE DATA               ?   COPY public.tbl_harpas (arno, ardate, cust_id, totalterima, accountno, cek_no, keterangan, proses, posting, usernama, vat) FROM stdin;
    public       postgres    false    332   ?      G          0    35352 	   tbl_hasil 
   TABLE DATA               d   COPY public.tbl_hasil (order_id, nopemeriksaan, kodelab, hasil, parameter1, parameter2) FROM stdin;
    public       postgres    false    333   "?      H          0    35361    tbl_hasilcall 
   TABLE DATA               ?   COPY public.tbl_hasilcall (id_trans, nocall, rekmed, tglcall, hasilcall, tglrencana, tglrealisasi, cabangrencana, cabangrealisasi, dokterrencana, dokterrealisasi, datang, totaltransaksi) FROM stdin;
    public       postgres    false    334   ??      I          0    35374 
   tbl_hbayar 
   TABLE DATA               ?   COPY public.tbl_hbayar (bayarno, tglbayar, accountno, jmbayar, keterangan, jenisbayar, kodokter, username, shipt, depid, cnturut, nokasbon, "NOCEK", vat) FROM stdin;
    public       postgres    false    335   \?      J          0    35390 
   tbl_hbedah 
   TABLE DATA                 COPY public.tbl_hbedah (nooperasi, tgloperasi, iam, noreg, rekmed, droperator, asdroperator, dranestasi, asdranestasi, asoperasi, drpengirim, dranak, drtambah, asal, kelas, jam, bayar, keluar, posting, cntbedah, nojadwal, username, ship, penyulit) FROM stdin;
    public       postgres    false    336   y?      K          0    35417    tbl_hbedahjadwal 
   TABLE DATA               ?   COPY public.tbl_hbedahjadwal (nojadwal, tgloperasi, noreg, rekmed, droperator, asdroperator, dranestasi, asdranestasi, asoperasi, drpendamping, drpengirim, kodetarif, jam, keluar) FROM stdin;
    public       postgres    false    337   ??      L          0    35433    tbl_hfaktur 
   TABLE DATA               ?   COPY public.tbl_hfaktur (notukar, tanggal, total, tglbayar, username, shipt, vendor_id, counter, jenis, diambil, jatuhtempo, tempo, keterangan, ppn, ppnrp, materai, biayalain, manual, totalsemua, tglcetak) FROM stdin;
    public       postgres    false    338   ??      M          0    35453    tbl_hgizimaster 
   TABLE DATA               e   COPY public.tbl_hgizimaster (kode, namamenu, waktusaji, diet, harga, counter, kodegroup) FROM stdin;
    public       postgres    false    339   ??      N          0    35463    tbl_hgizitr 
   TABLE DATA               ?   COPY public.tbl_hgizitr (kodetr, tanggal, noreg, rekmed, namapas, ruangan, kelas, username, shipt, createby, jambuat, editby, jamedit, bangsal) FROM stdin;
    public       postgres    false    340   ??      O          0    35479 	   tbl_hinap 
   TABLE DATA               ?   COPY public.tbl_hinap (noinap, noreg, rekmed, tglperiksa, asal, kelas, username, shipt, bayar, keluar, jam, posting, cntinap, paket) FROM stdin;
    public       postgres    false    341   
?      P          0    35497    tbl_hjasadr 
   TABLE DATA               ?   COPY public.tbl_hjasadr (nobukti, kodokter, dari, sampai, accountno, totaljasa, fee_tambah, total_gros, dasarpajak, pajakpr, pajakrp, total_setelahpajak, kasbon, potlain, totalpotlain, totalnet) FROM stdin;
    public       postgres    false    342   '?      Q          0    35514    tbl_hlab 
   TABLE DATA               ?  COPY public.tbl_hlab (nolaborat, tgllab, noreg, rekmed, drperiksa, drpengirim, kodepetugas, uanglab, asal, kelas, bayar, username, shipt, jam, posting, cntlab, tglselesai, jamselesai, ambil, diambiloleh, nokwitansi, tglambil, jamambil, jpas, rujuk, namapas, tgllahir, umurbl, umurth, umurhr, jkel, jenisperiksa, pengluar, keluar, langsung, tglsampel, jamsampel, sampeloleh) FROM stdin;
    public       postgres    false    343   D?      R          0    35555    tbl_hlabhasil 
   TABLE DATA               s   COPY public.tbl_hlabhasil (labkey, nolaborat, noreg, rekmed, kodokter, kodetarif, tglperiksa, okprint) FROM stdin;
    public       postgres    false    344   a?      S          0    35567    tbl_hlabmohon 
   TABLE DATA               ?   COPY public.tbl_hlabmohon (nomohon, noreg, rekmed, "tglPERIKSA", jam, dokter_pengirim, selesai, cnt_mohon, pesandr) FROM stdin;
    public       postgres    false    345   ~?      T          0    35570    tbl_hlabnotes 
   TABLE DATA               S   COPY public.tbl_hlabnotes (nolaborat, catatan, tglselesai, jamselesai) FROM stdin;
    public       postgres    false    346   ??      U          0    35578    tbl_hlogistik 
   TABLE DATA               T   COPY public.tbl_hlogistik (logno, logdate, gudang, keterangan, posting) FROM stdin;
    public       postgres    false    347   ??      V          0    35585    tbl_hmaslab 
   TABLE DATA               @   COPY public.tbl_hmaslab (kodegol, namagol, counter) FROM stdin;
    public       postgres    false    348   ??      W          0    35588 
   tbl_hmedis 
   TABLE DATA               ?  COPY public.tbl_hmedis (noradio, radiomohon, tglradio, noreg, radiotype, rekmed, drperiksa, drpengirim, asal, kelas, kodepetugas, username, shipt, jam, bayar, keluar, posting, ambiljasa1, ambiljasa2, cnt_radio, insentif, nokwitansi, tglselesai, tglambil, jamselesai, jamambil, diambiloleh, namapas, jpas, rujuk, umurth, umurbl, umurhr, tgllahir, jkel, jenisperiksa, langsung, drluar, kodepos) FROM stdin;
    public       postgres    false    349   ??      X          0    35628    tbl_honordokter 
   TABLE DATA               ?   COPY public.tbl_honordokter (kodokter, keytransaksi, tgltransaksi, noreg, rekmed, kodetarif, totaltr, totalhonor, prosenhonor, jenistransaksi) FROM stdin;
    public       postgres    false    350   ?      Z          0    35648 	   tbl_hpoli 
   TABLE DATA               ?   COPY public.tbl_hpoli (nopoli, noreg, rekmed, tglperiksa, jam, totalpoli, bayar, posting, keluar, username, shipt, plcounter, noradio, nolaborat, resepno, alkesno, nomorjurnal, nokwitansi, "Jurnal") FROM stdin;
    public       postgres    false    352   ,?      [          0    35671    tbl_hpp 
   TABLE DATA               ?   COPY public.tbl_hpp (kodeobat, qtybeli, hargabeli, saldoakhir, hpp, vendor_id, saldoawal, terima_no, tanggal, gudang, urut, totalrp) FROM stdin;
    public       postgres    false    353   I?      \          0    35685 
   tbl_hradio 
   TABLE DATA               ?  COPY public.tbl_hradio (noradio, radiomohon, tglradio, noreg, rekmed, radiotype, drperiksa, drpengirim, asal, kelas, kodepetugas, username, shipt, jam, bayar, keluar, posting, ambiljasa1, ambiljasa2, cnt_radio, insentif, nokwitansi, tglselesai, tglambil, jamselesai, jamambil, diambiloleh, namapas, jpas, rujuk, umurth, umurbl, umurhr, tgllahir, jkel, jenisperiksa, langsung, drluar) FROM stdin;
    public       postgres    false    354   f?      ]          0    35725    tbl_hradiomohon 
   TABLE DATA               ?   COPY public.tbl_hradiomohon (radiomohon, noreg, rekmed, tglradio, jam, dokter_pengirim, selesai, cnt_mohon, pesandr) FROM stdin;
    public       postgres    false    355   ??      ^          0    35733    tbl_hrdjabatan 
   TABLE DATA               \   COPY public.tbl_hrdjabatan (nopeg, kdjabatan, jnsjabatan, dari, sampai, eselon) FROM stdin;
    public       postgres    false    356   ??      _          0    35737    tbl_hrdkeluarga 
   TABLE DATA               E   COPY public.tbl_hrdkeluarga (nopeg, nama, tgllahir, sex) FROM stdin;
    public       postgres    false    357   ??      `          0    35741    tbl_hrdpangkat 
   TABLE DATA               Y   COPY public.tbl_hrdpangkat (nopeg, kdgolongan, kdpangkat, tmtsk, keterangan) FROM stdin;
    public       postgres    false    358   ??      a          0    35746    tbl_hrdpegawai 
   TABLE DATA               y  COPY public.tbl_hrdpegawai (nopeg, nama, sex, tmplahir, tgllahir, kdagama, kdstsnikah, nmpsg, tmplahirpsg, tgllhrpsg, tglnikah, krjpsg, karisu, tmtpegawai, kddidik, tmtdidik, kdstspeg, kdjnspeg, karpeg, kdgolongan, tmgolongan, kdstskerja, kdunitkrj, kdrs, noskpnmpt, tglskpnmpt, kdsatgas, kdkabupaten, kdpropinsi, darah, ayah, ibu, telp, tglkeluar, alasan, alamat) FROM stdin;
    public       postgres    false    359   ??      b          0    35777    tbl_hrdpelatihan 
   TABLE DATA               s   COPY public.tbl_hrdpelatihan (nopeg, kdpelatihan, jnpelatihan, tahun, lama, kdprovider, penyelenggara) FROM stdin;
    public       postgres    false    360   ?      c          0    35786    tbl_hrdpendidikan 
   TABLE DATA               _   COPY public.tbl_hrdpendidikan (nopeg, kddidik, tahunlulus, jurusan, penyelenggara) FROM stdin;
    public       postgres    false    361   1?      d          0    35792    tbl_hrdpenghargaan 
   TABLE DATA               `   COPY public.tbl_hrdpenghargaan (nopeg, kdpenghargaan, nosrt, tglsrt, penyelenggara) FROM stdin;
    public       postgres    false    362   N?      f          0    35801    tbl_hresult 
   TABLE DATA               ?   COPY public.tbl_hresult (id, pid, apid, pname, ono, lno, request_dt, source_cd, source_nm, clinician_cd, clinician_nm, priority, order_testid, order_testnm) FROM stdin;
    public       postgres    false    364   k?      g          0    35821 	   tbl_icdtr 
   TABLE DATA               ?   COPY public.tbl_icdtr (noreg, rekmed, nodtd, siid) FROM stdin;
    public       postgres    false    365   ??      h          0    35824 
   tbl_icdwho 
   TABLE DATA               G   COPY public.tbl_icdwho (icdcode, icdname, category, nodtd) FROM stdin;
    public       postgres    false    366   ??      i          0    35833    tbl_jurnald 
   TABLE DATA               n   COPY public.tbl_jurnald (nobukti, accountno, debet, credit, depid, noreg, jurnalkey, dketerangan) FROM stdin;
    public       postgres    false    367   ??      j          0    35844    tbl_jurnaldd 
   TABLE DATA               o   COPY public.tbl_jurnaldd (nobukti, accountno, debet, credit, depid, noreg, jurnalkey, dketerangan) FROM stdin;
    public       postgres    false    368   ??      k          0    35855    tbl_jurnalh 
   TABLE DATA               x   COPY public.tbl_jurnalh (nobukti, tgljurnal, keterangan, tutup, sourceid, user_name, urutjurnal, vat, vat2) FROM stdin;
    public       postgres    false    369   ??      l          0    35868 	   tbl_kamar 
   TABLE DATA               T   COPY public.tbl_kamar (koderuang, kodekamar, namakamar, penuh, dipesan) FROM stdin;
    public       postgres    false    370   ?      o          0    35894 
   tbl_kasbon 
   TABLE DATA               ?   COPY public.tbl_kasbon ("NOKASBON", "NAMAKASBON", accountno, accountnocost, tglkasbon, nilaikasbon, ketkasbon, username, shipt, nocek, "DEPID", proses) FROM stdin;
    public       postgres    false    373   6?      p          0    35908 	   tbl_kasir 
   TABLE DATA               b  COPY public.tbl_kasir (nokwitansi, noreg, rekmed, tglbayar, jambayar, adm, totalpoli, totallab, totalradio, totalbedah, totalinap, totalresep, uangmuka, umuka, admcredit, totalsemua, jenisbayar, lain, bayarcash, bayarcard, totalbayar, kembali, dibayaroleh, posbayar, username, shipt, kasirtype, kodokter, prosenksr, lainket, namapasien, nomutasi, diskon, diskonrp, diskonby, bankcode, aprove, totalmedis, retur, kasir, pajak, voucherrp, promoid, promoid2, fakturpajak, resepno, refund, kwtvoucher, selisihrp, validsel, novoucher, cust_id, hadiah1, hadiah2, qtyhad1, qtyhad2, promoremark, adapromo) FROM stdin;
    public       postgres    false    374   S?      q          0    35973 
   tbl_kasir1 
   TABLE DATA                 COPY public.tbl_kasir1 (nokwitansi, noreg, rekmed, tglbayar, jambayar, adm, totalpoli, totallab, totalradio, totalbedah, totalinap, totalresep, uangmuka, admcredit, totalsemua, jenisbayar, lain, bayarcash, bayarcard, totalbayar, kembali, dibayaroleh, posbayar, username, shipt, kasirtype, kodokter, prosenksr, lainket, namapasien, nomutasi, diskon, diskonrp, diskonby, bankcode, aprove, totalmedis, retur, kasir, pajak, voucherrp, promoid, promoid2, fakturpajak, resepno, refund, kwtvoucher, selisihrp) FROM stdin;
    public       postgres    false    375   p?      r          0    35979    tbl_kasirhapus 
   TABLE DATA               h   COPY public.tbl_kasirhapus (nokwitansi, noreg, rekmed, tglbayar, username, shipt, posbayar) FROM stdin;
    public       postgres    false    376   ??      s          0    35988    tbl_kasmasuk 
   TABLE DATA               ?   COPY public.tbl_kasmasuk (notr, accountno, tglkas, keterangan, nilairp, penerima, proses, username, shipt, accountpos, vat) FROM stdin;
    public       postgres    false    377   ??      t          0    36003 	   tbl_kelas 
   TABLE DATA               ?   COPY public.tbl_kelas (kelas, namakelas, margin1, margin2, rate, jumlahtt, jumlahpas, hari, ttpakai, jumlahpaskel, los, toi, bto, gdr, ndr, jpasmati, jpasmati48, depkesid) FROM stdin;
    public       postgres    false    378   ??      u          0    36024    tbl_laborathmaslab 
   TABLE DATA               G   COPY public.tbl_laborathmaslab (kodegol, namagol, counter) FROM stdin;
    public       postgres    false    379   ??      v          0    36027    tbl_laboratmashasil 
   TABLE DATA               ?   COPY public.tbl_laboratmashasil (kodetarif, kodelab, nmperiksa, satuan, nilainormalp1, nilainormalw1, nilainormalp2, nilainormalw2, nilainormala1, nilainormala2, nilainormalc, desi, lowdiag, highdiag) FROM stdin;
    public       postgres    false    380   ?      w          0    36044    tbl_logbarang 
   TABLE DATA               ?  COPY public.tbl_logbarang (kodeobat, namaobat, namageneric, pabrik, icgroup, golongan, jenis, groupharga, jenisobat, kemasan, satuan1, satuan2, faktorsat2, satuan2qty, satuan3, faktorsat3, satuan3qty, hargabeli, hargabeliluar, hargabelippn, hargajual, hargajualrekanan, hargajualluar, hpp, minstock, maxstock, vendor_id, hargatype, discc, discp, notax, depkesjenis, leadtime, reorder, jenisstock, useredit, tgledit, userbuat, tglbuat, hppawal, minimum) FROM stdin;
    public       postgres    false    381   ?      x          0    36091 	   tbl_login 
   TABLE DATA                 COPY public.tbl_login (kodeusr, namauser, namalengkap, pasword, level, hapustr, edittr, addtr, bagian, conect, supervisor, setup01, setup02, setup03, setup04, setup05, setup06, setup07, setup08, setup09, setup10, setup11, setup12, setup13, setup14, rs01, rs02, rs03, rs04, rs05, rs06, rs07, rs08, rs09, rs10, rs11, rs12, rs13, rs14, rs15, rs16, rs17, rs18, rs19, rs20, apo01, apo02, apo03, apo04, apo05, apo06, apo07, apo08, apo09, apo10, apo11, apo12, apo13, apo14, apo15, apo16, apo17, apo18, apo19, apo20, kasir01, kasir02, kasir03, kasir04, kasir05, kasir06, kasir07, kasir08, kasir09, kasir10, ac01, ac02, ac03, ac04, ac05, ac06, ac07, ac08, ac09, ac10, lap01, lap02, lap03, lap04, lap05, lap06, lap07, lap08, lap09, lap10, withshipt, okobat, awas, lap11, lap12, lap13, canceltr) FROM stdin;
    public       postgres    false    382   ;?      y          0    36101    tbl_logindata 
   TABLE DATA               h   COPY public.tbl_logindata (username, shipt, tanggal, modul, aksi, trno, ket, jam, namauser) FROM stdin;
    public       postgres    false    383   X?      z          0    36112    tbl_marketplace 
   TABLE DATA               s   COPY public.tbl_marketplace (cust_id, kodetarif, tindakan, hargaklinik, diskon, diskonrp, hargamarket) FROM stdin;
    public       postgres    false    384   u?      {          0    36122    tbl_masterbhp 
   TABLE DATA               p   COPY public.tbl_masterbhp (kodetarif, kodeobat, satuan, qty, harga, totalharga, tarifkey, namaobat) FROM stdin;
    public       postgres    false    385   ??      |          0    36133    tbl_modalkasir 
   TABLE DATA               V   COPY public.tbl_modalkasir (namauser, tglkasir, shipt, kasirkey, modalrp) FROM stdin;
    public       postgres    false    386   ??      }          0    36136    tbl_mutasikas 
   TABLE DATA               ?   COPY public.tbl_mutasikas (nomutasi, acdari, acke, keterangan, tglmutasi, kasaktualrp, mutasirp, username, shipt, bankcode, etype, vat, jenis) FROM stdin;
    public       postgres    false    387   ??      ~          0    36153    tbl_namapos 
   TABLE DATA               ?   COPY public.tbl_namapos (kodepos, namapost, ifilter, muncul, daccountno, caccountno, nourut, cost_account, darijam, sampaijam, settime, depid, depokey, multi, urutrskey, keylaporan, laporan) FROM stdin;
    public       postgres    false    388   ??                0    36156 
   tbl_namers 
   TABLE DATA               _  COPY public.tbl_namers (koders, namars, alamat1, alamat2, kota, phone, fax, owner, brand_id, kyds, locon, loop, pejabat1, jabatan1, ketbank, ketbank2, ketbank3, cabang, pejabat2, jabatan2, jabatan3, pejabat3, jabatan4, pejabat4, namaapotik, apoteker, jabatan, noijin, npwp, pkp, pkptgl, qupdate, ictype, textpromo, promotext2, promotext3) FROM stdin;
    public       postgres    false    389   ?      ?          0    36196    tbl_nosokomial 
   TABLE DATA               ?   COPY public.tbl_nosokomial (kodenosok, keterangan) FROM stdin;
    public       postgres    false    390   #?      ?          0    36207 	   tbl_pajak 
   TABLE DATA               A   COPY public.tbl_pajak (kodetax, namatax, prosentase) FROM stdin;
    public       postgres    false    392   @?      ?          0    36210    tbl_pap 
   TABLE DATA                 COPY public.tbl_pap (noreg, rekmed, tglposting, tgljatuhtempo, cust_id, nokwitansi, bayarcash, adm, drumum, drsp, drgigi, tindakan, totalpoli, totalradio, totallab, totalbedah, totalresep, jumlahhutang, jumlahbayar, asal, diagnosa, lunas, pilih, prosenjamin, username, shipt, invoiceno, aprove, suratjaminan, kartu, dokument, koders, namapas, nik, nopolis, pemegangpolis, cabang, selisihobat, tanggalbayar, agunan, diskon, diskontotal, totalmedis, jpk, alone, cust_id2, nilaiklaim2, cust_id3, nilaiklaim3, invoice2, invoice3) FROM stdin;
    public       postgres    false    393   ]?      ?          0    36266    tbl_papinvoice 
   TABLE DATA               ?   COPY public.tbl_papinvoice (invoiceno, invoicedate, dariperiode, sampaiperiode, cust_id, jumlahrp, jenis, diskon, diskonrp, totalnetrp, totalbayarrp, keterangan, lunas) FROM stdin;
    public       postgres    false    394   z?      ?          0    36279 
   tbl_pasien 
   TABLE DATA               ?  COPY public.tbl_pasien (rekmed, oldrekmed, rekmedbeta, nokartu, noidentitas, namapas, preposisi, jkel, tgllahir, umur, tempatlahir, alamat1, alamat2, phone, pendidikan, agama, pekerjaan, status, goldarah, wilayah, penanggungjawab, alamatp1, alamatp2, pekerjaanp, phonep, idpjawab, orhub, hubungan, phonehub, alamathub, ada, lastnoreg, lastpesan, okpesan, lokasirm, rakno, blokir, ketblokir, tinggibadan, beratbadan, alergi, tglcetak, rt, rw, handphone, blok, kelurahan, kecamatan, kabupaten, pos, namaibu, namaayah, namasuami, suku, jenispas, cust_id, nocard, nik, bagian, karyawan, namadepan, namabelakang, suf, dawal, dakhir, kirimdata, alamatkirim, twit, fb, email, namakeluarga, namapanggilan, hphub, jkelhub, twithub, fbhub, emailhub, lastvisit, pekerhub, hutang, tglhutang, nobukti, tglupdate, editpasien, idpas, tglkembali, hoby, edital, hpbaru, updatehp, hplama, ketedit, alamatbaru) FROM stdin;
    public       postgres    false    395   ??      ?          0    36371    tbl_pasien1 
   TABLE DATA               z  COPY public.tbl_pasien1 (rekmed, oldrekmed, memberid, namapas, preposisi, jkel, tgllahir, umur, tempatlahir, noidentitas, alamat1, alamat2, phone, hp, pendidikan, agama, pekerjaan, status, wilayah, suku, penanggungjawab, alamatp1, phonep, pekerjaanp, idpjawab, orhub, hubungan, phonehub, alamathub, noasuransi, noreginap, cust_id, namauser, lokasirm, rakno, alergi) FROM stdin;
    public       postgres    false    396   ??      ?          0    36414    tbl_penjamin 
   TABLE DATA               G  COPY public.tbl_penjamin (cust_id, cust_nama, provider, cust_alamat1, cust_alamat2, cust_phone, cust_email, cust_contact, admrj, adminap, farmasitype, farmasirj, farmasiinap, irj, saldo_awal, pertanggal, arterm, awaltmp, hutangtmp, bayartmp, akhirtmp, tgltmp, cnt_urut, urutmcu, alamatklaim, riprosen, rjprosen, dicover, bayarselisihobat, docrpt, docrpti, docinv, discrj, discri, markuplus, hargaobat, ar_account, admri, diskonlab, diskonradio, diskonadm, adaselisihri, admrizero, keterangan, fax, gunaselisih, askes, admselisih, pribadipr, penjaminpr, sharetype, aktif) FROM stdin;
    public       postgres    false    397   ??      ?          0    36470    tbl_penjamin2 
   TABLE DATA               8  COPY public.tbl_penjamin2 (cust_id, cust_nama, cust_alamat1, cust_alamat2, cust_phone, cust_email, cust_contact, admrj, adminap, farmasirj, farmasiinap, irj, provider, saldo_awal, pertanggal, arterm, awaltmp, hutangtmp, bayartmp, akhirtmp, tgltmp, cnt_urut, urutmcu, alamatklaim, riprosen, rjprosen) FROM stdin;
    public       postgres    false    398   ??      ?          0    36519    tbl_penjamin_grant 
   TABLE DATA                 COPY public.tbl_penjamin_grant (cust_id, rekmed, jaminan, nopolis, tglkepesertaan, maxkamar, kelas, jaminanrp, maxobatinap, maxbedah, maxpoli, pmedis, melahirkan, maxdokter, pemegangpolis, obatok, bedahok, pmedisok, dokterok, bagian, peserta, nip, kdgroup, noform, ketlain) FROM stdin;
    public       postgres    false    400   ?      ?          0    36522    tbl_penjamin_obat 
   TABLE DATA               P   COPY public.tbl_penjamin_obat (cust_id, kodeobat, cusref, jenisref) FROM stdin;
    public       postgres    false    401   (?      ?          0    36525    tbl_penjamin_obatok 
   TABLE DATA               ?   COPY public.tbl_penjamin_obatok (cusref, kodeobat) FROM stdin;
    public       postgres    false    402   E?      ?          0    36528    tbl_penjamin_obt 
   TABLE DATA               [   COPY public.tbl_penjamin_obt (cust_id, kodeobat, cusref, jenisref, doktertype) FROM stdin;
    public       postgres    false    403   b?      ?          0    36501    tbl_penjamingrant 
   TABLE DATA               ?   COPY public.tbl_penjamingrant (cust_id, rekmed, jaminan, nopolis, nik, tglkepesertaan, tglberakhir, maxkamar, kelas, jaminanrp, maxobatinap, maxbedah, maxpoli, pmedis, melahirkan, maxdokter, pemegangpolis, obatok, bedahok, pmedisok, dokterok) FROM stdin;
    public       postgres    false    399   ?      ?          0    36531    tbl_periode 
   TABLE DATA               ~   COPY public.tbl_periode (apoperiode, rsperiode, glperiode, fiskalperiode, hppperiode, daritgl, sdtgl, logperiode) FROM stdin;
    public       postgres    false    404   ??      ?          0    36534    tbl_petugas 
   TABLE DATA               A   COPY public.tbl_petugas (nokk, namapetugas, kodepos) FROM stdin;
    public       postgres    false    405   ??      ?          0    36580    tbl_praktek 
   TABLE DATA               f   COPY public.tbl_praktek (kodokter, kodepos, hari, ketpraktek, jammulai, jamselesai, ckey) FROM stdin;
    public       postgres    false    407   ??      ?          0    36584    tbl_premiumember 
   TABLE DATA               ?   COPY public.tbl_premiumember (memberid, rekmed, nokwitansi, tglbayar, tglawal, tglakhir, kodetarif, nilairp, username) FROM stdin;
    public       postgres    false    408   ??      ?          0    36595    tbl_premiumembertr 
   TABLE DATA               o   COPY public.tbl_premiumembertr (noreg, rekmed, memberid, kodetarif, tgltr, pemilik, nilaitr, baru) FROM stdin;
    public       postgres    false    409   ?      ?          0    36606 	   tbl_promo 
   TABLE DATA               v   COPY public.tbl_promo (kodepromo, namapromo, ketpromo, jenispromo, reward, tglmulai, tglselesai, stpromo) FROM stdin;
    public       postgres    false    410   -?      ?          0    36620    tbl_promocabang 
   TABLE DATA               E   COPY public.tbl_promocabang (kodepromo, clientid, promo) FROM stdin;
    public       postgres    false    411   J?      ?          0    36626    tbl_promohadiah 
   TABLE DATA               ?   COPY public.tbl_promohadiah (kohadiah, namahadiah) FROM stdin;
    public       postgres    false    412   g?      ?          0    36633    tbl_promojenis 
   TABLE DATA               <   COPY public.tbl_promojenis (kjenis, jenispromo) FROM stdin;
    public       postgres    false    413   ??      ?          0    36640    tbl_promotext 
   TABLE DATA               T   COPY public.tbl_promotext (clientid, promotext, promotext2, promotext3) FROM stdin;
    public       postgres    false    414   ??      ?          0    36659    tbl_radioexpertbytea 
   TABLE DATA               L   COPY public.tbl_radioexpertbytea (noradio, radiokey, namadicom) FROM stdin;
    public       postgres    false    416   ??      ?          0    36662    tbl_radionormal 
   TABLE DATA               K   COPY public.tbl_radionormal (kodetarif, tindakan, radionormal) FROM stdin;
    public       postgres    false    417   ??      ?          0    36671    tbl_rawatklaim 
   TABLE DATA               [   COPY public.tbl_rawatklaim (noreg, klaimke, rawat1, rawat2, nilairawat, admpr) FROM stdin;
    public       postgres    false    418   ??      ?          0    36678    tbl_regbook 
   TABLE DATA               4   COPY public.tbl_regbook (noreg, posisi) FROM stdin;
    public       postgres    false    419   ?      ?          0    36684 
   tbl_regist 
   TABLE DATA               O  COPY public.tbl_regist (noreg, rekmed, tglmasuk, jam, jenispas, tujuan, koderuang, kodekamar, oldruang, oldkamar, posruang, kodepos, kelas, cust_id, kodokter, baru, keluar, tglkeluar, jamkeluar, tglpindah, jampindah, ruanglalu, kamarlalu, pmove, jjamin, pasiendatang, panggilan, diperiksa, ruangkey, ruangurut, noregref, jaminanrp, pasref, sapindah, antrino, drpengirim, totalrp, jenisinap, paketinap, paketlab, paketradio, paketbedah, paketid, paketobat, apoclose, username, shipt, batal, batalkarena, kelasjamin, obat1, obat2, labclose, radclose, nokwitansi, kodetarif, typepas, golpas, kopos, bumil, labok, radiook, resepok, jamreq, kartu, kelasawal, antri2, antri3, kodepos2, kodokter2, kodepos3, kodokter3, noreg2, noreg3, duapoli, golaskes, noadm, verifikasi, shiptke, tglserah, kirimdata, nocall, totalpromo, norujuk, memberid) FROM stdin;
    public       postgres    false    420   2?      ?          0    36773    tbl_registrasi 
   TABLE DATA                 COPY public.tbl_registrasi (noreg, rekmed, tglmasuk, jam, jenispas, tujuan, koderuang, kodekamar, oldruang, oldkamar, posruang, jenisinap, kodepos, kelas, cust_id, kodokter, baru, keluar, tglkeluar, jamkeluar, tglpindah, jampindah, ruanglalu, pmove, siid, namauser, kelasjamin, jenisjamin, pindah, noregref, pasref, batal, batalkarena, policlose, apoclose, radioclose, labclose, periksa, drpengirim, kodetarif, admrp, tarifrs, tarifdr, jasa3, jasa4, jasa5, askes, askesgol, jamkesmas, nokwitansi, bayar, ssid, tglserah) FROM stdin;
    public       postgres    false    421   O?      ?          0    36827    tbl_rekamgambar 
   TABLE DATA               ?   COPY public.tbl_rekamgambar ("NOREG", "REKMED", "COMMENT1", "COMMENT2", "COMMENT3", "COMMENT4", "COMMENT5", "COMMENT6", "COMMENT7", "COMMENT8", "GB1", "GB2", "GB3", "GB4", "GB5", "GB6", "GB7", "GB8") FROM stdin;
    public       postgres    false    422   l?      ?          0    36841    tbl_rekammedis 
   TABLE DATA               B  COPY public.tbl_rekammedis (noreg, rekmed, tglperiksa, jam, beratbadan, tujuan, kodepos, koderuang, kodokter, keluhanawal, diagnosa, anjuran, resep, baru, tglkeluar, jenisinap, tgloperasi, pelayanan, caramasuk, ketmasuk, prosedurmasuk, kelas, diagnosadepkes, penyebab_cidera, morfologi, operasi, gol_operasi, lokasioperasi, infeksi_nosok, jenis_nosok, ketunaan, tranfusidarah, jumlahdarah, tempat_lahir, antenatal, caralahir, paborsi, masagastesi, ygbantusalin, tgllahirsebelum, tgllahirsekarang, jumlahbayi, jikakembar, keadaanlahir, beratbayi, panjangbayi, jmlahirhidup, jmlahirmati, jmabortus, penyebabmati, carakeluar, keadaankeluar, carabayar, dirawatke, siid, icdutama, icdmorfologi, icdcidera, tindakandr, jmdarah, jamkeluar, layigd, rmmami, asalpasien, matineo, tt1, tt2, ahli, "KODRRAWAT", sebabnosok, kirimdata) FROM stdin;
    public       postgres    false    423   ??      ?          0    36913    tbl_rekammedis1 
   TABLE DATA               b   COPY public.tbl_rekammedis1 (noreg, "REKMED", depkesid, depkesgroup, siid, jmperiksa) FROM stdin;
    public       postgres    false    424   ??      ?          0    36918    tbl_rekammedis2 
   TABLE DATA               s   COPY public.tbl_rekammedis2 (noreg, rekmed, jiwa, kb, krumah, rehab, kgigi, khusus, imunisasi, imunke) FROM stdin;
    public       postgres    false    425   ??      ?          0    36931    tbl_rekammedisRS 
   TABLE DATA                 COPY public."tbl_rekammedisRS" (noreg, rekmed, tglperiksa, tglkeluar, jam, tujuan, kodepos, koderuang, keluhanawal, pfisik, diagnosa, simpul, anjuran, resep, kodeicd, kodeicd2, kodeicd3, keadaan_pulang, ketpulang, kodokter, tglkonsul, rcounter, nadi, nadi2, nafas, tdarah, tdarah1, suhu, tinggibadan, beratbadan, bmi, bmiresult, tglkembali, jamkembali, nojanji, dikonsulkepoli, dikonsuldr, jamdikonsul, tgldikonsul, noregkonsul, surat1, surat2, surat3, surat4, alasanpulang, clientid, eresep, nadokter) FROM stdin;
    public       postgres    false    427   ??      ?          0    36928    tbl_rekammedisrl3 
   TABLE DATA               `   COPY public.tbl_rekammedisrl3 (depkesid, depkesket, n1, n2, n3, n4, n5, n6, n7, n8) FROM stdin;
    public       postgres    false    426   ??      ?          0    36982    tbl_rekapstock 
   TABLE DATA               O   COPY public.tbl_rekapstock (gudang, periode, qtysedia, nilaisedia) FROM stdin;
    public       postgres    false    428   ?      ?          0    36989    tbl_rencanad 
   TABLE DATA               s   COPY public.tbl_rencanad (no_rencana, kodeobat, qty, satuan, harga, total, setuju, renkey, keterangan) FROM stdin;
    public       postgres    false    429   7?      ?          0    37003    tbl_rencanah 
   TABLE DATA               ?   COPY public.tbl_rencanah (no_rencana, tgl_rencana, vendor_id, keterangan, counter, username, shipt, useredit, tgledit, jamedit, proses) FROM stdin;
    public       postgres    false    430   T?      ?          0    37017    tbl_reportgrant 
   TABLE DATA               S   COPY public.tbl_reportgrant (username, reportket, reportcode, granted) FROM stdin;
    public       postgres    false    431   q?      ?          0    37024 	   tbl_rl3h2 
   TABLE DATA                 COPY public.tbl_rl3h2 (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, b1, b2, b3, b4, b5, b6, b7, b8, b9, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, d1, d2, d3, d4, d5, d6, e1, f1, f2, f3, f4, f5, g1, g2, g3, g4, g5, g6, g7, g8, g9, h1, h2, h3, i1, i2, i3, i4, i5, i6, i7, j1, j2, j3, j4, j5, j6, j7, j8, j9, j10, k1, k2, k3, k4, k5, k6, k7, l1, l2, l3, l4, l5, l6, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, n1, n2, n3, o1, p1, p2, p3, p4, p5, q1, r1, r2, s1, s2, t1, u1, v1) FROM stdin;
    public       postgres    false    432   ??      ?          0    37144 
   tbl_rmbook 
   TABLE DATA               4   COPY public.tbl_rmbook (rekmed, posisi) FROM stdin;
    public       postgres    false    433   ??      ?          0    37149    tbl_rs 
   TABLE DATA               ?   COPY public.tbl_rs (namars, alamat1, alamat2, kota, phone, fax, owner, rscode, brand_id, kyds, locon, loop, jnrs, kelasrs, noijin, tglijin, oleh, sifat, namaps, statusps, organisasi, jmkgigi, jmugigi, thp, sts, ey) FROM stdin;
    public       postgres    false    434   ??      ?          0    37168 	   tbl_ruang 
   TABLE DATA               ?   COPY public.tbl_ruang (koderuang, namaruang, bangsalid, kelas, tarif, tarifmedis, askes, tarifmakan, jumlahkamar, kapasitas, pesan, isi, sisa, urutkamar, accountno) FROM stdin;
    public       postgres    false    435   ??      ?          0    37184    tbl_ruangpindah 
   TABLE DATA               ?   COPY public.tbl_ruangpindah (noreg, rekmed, daritgl, darijam, sampaitgl, sampaijam, dariruang, darikamar, keruang, kekamar, keterangan, keluar, posting) FROM stdin;
    public       postgres    false    436   ?      ?          0    37187    tbl_ruangpoli 
   TABLE DATA               =   COPY public.tbl_ruangpoli (koderuang, namaruang) FROM stdin;
    public       postgres    false    437   ?      ?          0    37192    tbl_ruangtransaksi 
   TABLE DATA               ?   COPY public.tbl_ruangtransaksi (noreg, rekmed, koderuang, kodekamar, kelas, tglmasuk, jammasuk, tglkeluar, jamkeluar, tarifhari, jumlahhari, tariftotal, keluar, pindah, ruangkey, kodokter, askes) FROM stdin;
    public       postgres    false    438   <?      ?          0    37212    tbl_rujukan 
   TABLE DATA               ?   COPY public.tbl_rujukan (norujuk, rekmed, tarif1, tarif2, tarif3, notes, dokterperujuk, tgldirujuk, dokterpenerima, tgldilayani, nilairp, kecabang, keluhan, diagnosa, tglkun) FROM stdin;
    public       postgres    false    439   Y?      ?          0    37231    tbl_setinghms 
   TABLE DATA               ?   COPY public.tbl_setinghms (kodeset, keterangan, lset, accountno, accounthpp, valuerp, valuepersen, value1, valuerp1, minimalrp, maksimalrp, depid) FROM stdin;
    public       postgres    false    440   v?      ?          0    37234    tbl_setinginap 
   TABLE DATA               A   COPY public.tbl_setinginap (minjampindah, jampindah) FROM stdin;
    public       postgres    false    441   ??      ?          0    37239    tbl_setting 
   TABLE DATA               V  COPY public.tbl_setting (regformat, rekmedformat, priceformat, totalformat, urutradiologi, printradiologi, rubahtarifradio, urutlaborat, printlaborat, rubahtariflab, urutbedah, printbedah, rubahtarifbedah, urutinap, printinap, rubahtarifinap, apoqty, apoprice, apototal, apoprint, apotransaksi, admpolip, admpolipsistem, admpolij, admpolijsistem, urutpoli, printpoli, rubahtarifpoli, poliautoprint, printkasir, aplikasigambar, filegambarbedah, filegambarradio, trubisnis, dospoli, vatdr, vatbeli, vatjual, reportpath, kasirradio, gunakanlcd, jaminap, jaminapgratis, tombol, otomatisrm) FROM stdin;
    public       postgres    false    442   ??      ?          0    37246    tbl_so 
   TABLE DATA               n   COPY public.tbl_so (tanggal, proses, kode, username, shipt, keterangan, tglsebelumnya, proseslog) FROM stdin;
    public       postgres    false    443   ??      ?          0    37255 	   tbl_soLOG 
   TABLE DATA               s   COPY public."tbl_soLOG" (tanggal, proses, kode, username, shipt, keterangan, tglsebelumnya, proseslog) FROM stdin;
    public       postgres    false    444   ??      ?          0    37264    tbl_stocktempd 
   TABLE DATA               w   COPY public.tbl_stocktempd ("KODEOBAT", "NAMAOBAT", "UNIT", "SALDO", "HPP", "TOTALHPP", "UCODE", "GUDANG") FROM stdin;
    public       postgres    false    445   ?      ?          0    37275    tbl_stocktemph 
   TABLE DATA               [   COPY public.tbl_stocktemph ("UCODE", "DARITGL", "SAMPAITGL", "GUDANG", "TYPE") FROM stdin;
    public       postgres    false    446   $?      ?          0    37281 	   tbl_tarif 
   TABLE DATA               0	  COPY public.tbl_tarif (kodetarif, tindakan, kodepos, pisah, igroup, kodesub, gol, jenislab, kodetindak, depkesid, cito, oncall, cost, tarifrspoli, tarifrspoli1, prosendr, feedr, tarifdrpoli, obatpoli, feemedispoli, tarifrsa, tarifrsb, tarifrsc, tarifrsd, tarifrse, tarifrsf, tarifrsg, tarifrsh, tarifrsi, tarifrsj, tarifdra, tarifdrb, tarifdrc, tarifdrd, tarifdre, tarifdrf, tarifdrg, tarifdrh, tarifdri, tarifdrj, askespoli, askesa, askesb, askesc, askesd, askese, askesf, askesg, askesh, askesi, askesj, asoprpoli, asopra, asoprb, asoprc, asoprd, asopre, asoprf, asoprg, asoprh, asopri, asoprj, asoperasipoli, asoperasia, asoperasib, asoperasic, asoperasid, asoperasie, asoperasif, asoperasig, asoperasih, asoperasii, asoperasij, anestasipoli, anestasia, anestasib, anestasic, anestasid, anestasie, anestasif, anestasig, anestasih, anestasii, anestasij, aanestasipoli, aanestasia, aanestasib, aanestasic, aanestasid, aanestasie, aanestasif, aanestasig, aanestasih, aanestasii, aanestasij, drpersen, accountno, idacc, autoobat, ikomisipoli, ikomisia, ikomisib, ikomisic, ikomisid, ikomisie, ikomisif, ikomisig, ikomisih, ikomisii, ikomisij, pkomisipoli, pkomisia, pkomisib, pkomisc, pkomisid, pkomisie, pkomisif, pkomisig, pkomisih, pkomisii, pkomisij, depid, pengirimpoli, pengirima, pengirimb, pengirimc, pengirimd, pengirime, pengirimf, pengirimg, pengirimh, pengirimi, pengirimj, vendorpoli, vendora, vendorb, vendorc, vendord, vendore, vendorf, vendorg, vendorh, vendori, vendorj, tarjenis, urutt, anakpoli, anaka, anakb, anakc, anakd, anake, anakf, anakg, anakh, anaki, anakj, proprpoli, propra, proprb, proprc, proprd, propre, proprf, proprg, proprh, propri, proprj, praoprpoli, praopra, praoprb, praoprc, praoprd, praopre, praoprf, praoprg, praoprh, praopri, praoprj, pranespoli, pranesa, pranesb, pranesc, pranesd, pranese, pranesf, pranesg, pranesi, pranesj, praanespoli, praanesa, praanesb, praanesc, praanesd, praanese, praanesf, praanesg, praanesh, praanesi, praanesj, prmpoli, prma, prmb, prmc, prmd, prme, prmf, prmg, prmh, prmi, prmj, prppoli, prpa, prpb, prpc, prpd, prpe, prpf, prpg, prph, prpi, prpj, cust_id, jamkesmas, jamkesda, insentifdr, insentifmedis, paketaskes, paketjamkes, askestype, jamkesa, jamkesb, jamkesc, jamkesd, jamkese, jamkesf, jamkesg, jamkesh, jamkesi, jamkesj, askespaket, jamkespaket, sharetype) FROM stdin;
    public       postgres    false    447   A?      ?          0    37530    tbl_tarifkomponent 
   TABLE DATA               T   COPY public.tbl_tarifkomponent (tarif1, tarif2, tarif3, tarif4, tarif5) FROM stdin;
    public       postgres    false    448   ^?      ?          0    37542    tbl_transaksiharian 
   TABLE DATA               +  COPY public.tbl_transaksiharian (tgltransaksi, clientid, pasien_baru_kulit, pasien_lama_kulit, pasien_baru_gigi, "Pasien_lama_gigi", pasien_baru_spa, pasien_lama_spa, omset_konsul, omset_obatkulit, omset_lokal, omset_kirim, omset_spa, omset_gigi, omset_apotik, omset_adm, omset_admcard) FROM stdin;
    public       postgres    false    450   {?      ?          0    37563    tbl_triageugd 
   TABLE DATA               ?  COPY public.tbl_triageugd (noreg, rekmed, tglmasuk, jamdatang, jampenanganan, jamkeluar, kondisidatang, kotriage, rujuk, tujuanrujuk, keluhan, trauma, sebabtrauma, sakitskr, sakitdulu, alergi, pengobatanlalu, nd, rr, td, tem, spo2, bb, gcs, pupil1, pupil2, cahaya1, cahaya2, skeletal, neurologi, cardio, gltract, urinary, endokrin, extremitas, lain, ketlain, hamil, hpht, gravida, ekg, thorax, fotolain, ketfotolain, ctscan, ketctscan, lab, ketlab, s, o, d, p, diagnosa, pesanpulang, tglobat, namaobat, dosis, rute, intake, periksaoleh, diberioleh, tgl, nadi, rr2, suhu, bp, spo22, ngt, ngtno, keteter, kateterno, suctkateter, canula, canulano, canulatempat, crophal, crophalno, masker, maskermnt, transfer, transferke, jamtrans, ambul, ambultujuan) FROM stdin;
    public       postgres    false    451   ??      ?          0    37633    tbl_triageugd_detail2 
   TABLE DATA               a   COPY public.tbl_triageugd_detail2 (noreg, rekmed, pukul, nadi, rr, suhu, bp, "SPO2") FROM stdin;
    public       postgres    false    453   ??      ?          0    37644 
   tbl_trluar 
   TABLE DATA               f   COPY public.tbl_trluar (nobukti, nokwitansi, namapas, tgltransaksi, rupiahrp, pos, bayar) FROM stdin;
    public       postgres    false    454   ??      ?          0    37655    tbl_uangmuka 
   TABLE DATA               ?   COPY public.tbl_uangmuka (nokwitansi, noreg, rekmed, tglbayar, jmbayar, jenisbayar, dibayaroleh, posbayar, username, accountno, ket, closed, kwitansivalid) FROM stdin;
    public       postgres    false    455   ??      ?          0    37670 
   tbl_urutmr 
   TABLE DATA               1   COPY public.tbl_urutmr (mrkey, urut) FROM stdin;
    public       postgres    false    456   ?      ?          0    37675 
   tbl_urutrs 
   TABLE DATA               ?   COPY public.tbl_urutrs (kode_urut, hedket, param1, param2, param3, param4, sparator, nourut, rsformat, lasttr, usedby) FROM stdin;
    public       postgres    false    457   )?      ?          0    37690    tbl_userlog 
   TABLE DATA               C   COPY public.tbl_userlog (userid, tanggal, modul, task) FROM stdin;
    public       postgres    false    458   F?      ?          0    37693    tbl_userlogistik 
   TABLE DATA               ?   COPY public.tbl_userlogistik ("NAMAUSER", "LOG1", "LOG2", "LOG3", "LOG4", "LOG5", "LOG6", "LOG7", "LOG8", "LOG9", "LOG10", "LOG11", "LOG12", "LOG13", "LOG14", "LOG15", "LOG16", "LOG17", "LOG18", "LOG19", "LOG20") FROM stdin;
    public       postgres    false    459   c?      ?          0    37719    tbl_vocd 
   TABLE DATA               ?   COPY public.tbl_vocd (nokir, novoucher, tglkirim, tgjual, cabangvoc, cabangpakai, nominal, diskon, rekmed, nokwitansi, tglpakai, rekmedpakai, terjual, terpakai) FROM stdin;
    public       postgres    false    460   ??      ?          0    37735    tbl_voch 
   TABLE DATA               I   COPY public.tbl_voch (nokir, ket, tglkirim, ongkos, cust_id) FROM stdin;
    public       postgres    false    461   ??      ?          0    37746    tbl_vocjual 
   TABLE DATA               M   COPY public.tbl_vocjual (novoucher, nominal, diskon, nokwitansi) FROM stdin;
    public       postgres    false    462   ??      ?          0    37753    typeac 
   TABLE DATA               S   COPY public.typeac (actype, typename, jenisac, keyid, pls, neracatype) FROM stdin;
    public       postgres    false    463   ??                 2606    36658    TBL_PROVIDER TBL_PROVIDER_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."TBL_PROVIDER"
    ADD CONSTRAINT "TBL_PROVIDER_pkey" PRIMARY KEY ("PROVIDER");
 L   ALTER TABLE ONLY public."TBL_PROVIDER" DROP CONSTRAINT "TBL_PROVIDER_pkey";
       public         postgres    false    415            ?           2606    26977     TBL_apodpolog TBL_apodpolog_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."TBL_apodpolog"
    ADD CONSTRAINT "TBL_apodpolog_pkey" PRIMARY KEY (pokey);
 N   ALTER TABLE ONLY public."TBL_apodpolog" DROP CONSTRAINT "TBL_apodpolog_pkey";
       public         postgres    false    228            ?           2606    27276 (   TBL_apodterimalog TBL_apodterimalog_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TBL_apodterimalog"
    ADD CONSTRAINT "TBL_apodterimalog_pkey" PRIMARY KEY (terimakey);
 V   ALTER TABLE ONLY public."TBL_apodterimalog" DROP CONSTRAINT "TBL_apodterimalog_pkey";
       public         postgres    false    236            ?           2606    27544     TBL_apohpolog TBL_apohpolog_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."TBL_apohpolog"
    ADD CONSTRAINT "TBL_apohpolog_pkey" PRIMARY KEY (po_no);
 N   ALTER TABLE ONLY public."TBL_apohpolog" DROP CONSTRAINT "TBL_apohpolog_pkey";
       public         postgres    false    245            ?           2606    27644 .   TBL_apohreturbelilog TBL_apohreturbelilog_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."TBL_apohreturbelilog"
    ADD CONSTRAINT "TBL_apohreturbelilog_pkey" PRIMARY KEY (retur_no);
 \   ALTER TABLE ONLY public."TBL_apohreturbelilog" DROP CONSTRAINT "TBL_apohreturbelilog_pkey";
       public         postgres    false    249            ?           2606    27764 (   TBL_apohterimalog TBL_apohterimalog_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TBL_apohterimalog"
    ADD CONSTRAINT "TBL_apohterimalog_pkey" PRIMARY KEY (terima_no);
 V   ALTER TABLE ONLY public."TBL_apohterimalog" DROP CONSTRAINT "TBL_apohterimalog_pkey";
       public         postgres    false    253            ?           2606    35647    TBL_hpaket TBL_hpaket_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."TBL_hpaket"
    ADD CONSTRAINT "TBL_hpaket_pkey" PRIMARY KEY (paketid);
 H   ALTER TABLE ONLY public."TBL_hpaket" DROP CONSTRAINT "TBL_hpaket_pkey";
       public         postgres    false    351            ?           2606    35890 $   TBL_kartukredit TBL_kartukredit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."TBL_kartukredit"
    ADD CONSTRAINT "TBL_kartukredit_pkey" PRIMARY KEY (cardkey);
 R   ALTER TABLE ONLY public."TBL_kartukredit" DROP CONSTRAINT "TBL_kartukredit_pkey";
       public         postgres    false    371            6           2606    37541    TBl_TR TBl_TR_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."TBl_TR"
    ADD CONSTRAINT "TBl_TR_pkey" PRIMARY KEY (notr);
 @   ALTER TABLE ONLY public."TBl_TR" DROP CONSTRAINT "TBl_TR_pkey";
       public         postgres    false    449            ?           2606    26257    dtproperties dtproperties_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.dtproperties
    ADD CONSTRAINT dtproperties_pkey PRIMARY KEY (id, property);
 H   ALTER TABLE ONLY public.dtproperties DROP CONSTRAINT dtproperties_pkey;
       public         postgres    false    198    198            ?           2606    26301 "   tbl_accounting tbl_accounting_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_accounting
    ADD CONSTRAINT tbl_accounting_pkey PRIMARY KEY (accountno);
 L   ALTER TABLE ONLY public.tbl_accounting DROP CONSTRAINT tbl_accounting_pkey;
       public         postgres    false    203            ?           2606    26562    tbl_akdth tbl_akdth_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tbl_akdth
    ADD CONSTRAINT tbl_akdth_pkey PRIMARY KEY (noreg);
 B   ALTER TABLE ONLY public.tbl_akdth DROP CONSTRAINT tbl_akdth_pkey;
       public         postgres    false    210            ?           2606    26583    tbl_akdtpay tbl_akdtpay_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_akdtpay
    ADD CONSTRAINT tbl_akdtpay_pkey PRIMARY KEY ("NOBAYAR");
 F   ALTER TABLE ONLY public.tbl_akdtpay DROP CONSTRAINT tbl_akdtpay_pkey;
       public         postgres    false    211            ?           2606    26606 "   tbl_alkespakai tbl_alkespakai_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_alkespakai
    ADD CONSTRAINT tbl_alkespakai_pkey PRIMARY KEY (trkey);
 L   ALTER TABLE ONLY public.tbl_alkespakai DROP CONSTRAINT tbl_alkespakai_pkey;
       public         postgres    false    213            ?           2606    26663 *   tbl_alkestransaksi tbl_alkestransaksi_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tbl_alkestransaksi
    ADD CONSTRAINT tbl_alkestransaksi_pkey PRIMARY KEY (notrkey);
 T   ALTER TABLE ONLY public.tbl_alkestransaksi DROP CONSTRAINT tbl_alkestransaksi_pkey;
       public         postgres    false    214            ?           2606    26774    tbl_apoap12 tbl_apoap12_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_apoap12
    ADD CONSTRAINT tbl_apoap12_pkey PRIMARY KEY (terima_no);
 F   ALTER TABLE ONLY public.tbl_apoap12 DROP CONSTRAINT tbl_apoap12_pkey;
       public         postgres    false    219            ?           2606    26736    tbl_apoap tbl_apoap_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_apoap
    ADD CONSTRAINT tbl_apoap_pkey PRIMARY KEY (terima_no);
 B   ALTER TABLE ONLY public.tbl_apoap DROP CONSTRAINT tbl_apoap_pkey;
       public         postgres    false    218            ?           2606    26841 $   tbl_apodetresep tbl_apodetresep_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_apodetresep
    ADD CONSTRAINT tbl_apodetresep_pkey PRIMARY KEY (keyresepid);
 N   ALTER TABLE ONLY public.tbl_apodetresep DROP CONSTRAINT tbl_apodetresep_pkey;
       public         postgres    false    221            ?           2606    26945    tbl_apodpo tbl_apodpo_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_apodpo
    ADD CONSTRAINT tbl_apodpo_pkey PRIMARY KEY (pokey);
 D   ALTER TABLE ONLY public.tbl_apodpo DROP CONSTRAINT tbl_apodpo_pkey;
       public         postgres    false    227            ?           2606    27157 (   tbl_apodreturbeli tbl_apodreturbeli_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_apodreturbeli
    ADD CONSTRAINT tbl_apodreturbeli_pkey PRIMARY KEY (returkey);
 R   ALTER TABLE ONLY public.tbl_apodreturbeli DROP CONSTRAINT tbl_apodreturbeli_pkey;
       public         postgres    false    232            ?           2606    27190 .   tbl_apodreturbelilog tbl_apodreturbelilog_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_apodreturbelilog
    ADD CONSTRAINT tbl_apodreturbelilog_pkey PRIMARY KEY (returkey);
 X   ALTER TABLE ONLY public.tbl_apodreturbelilog DROP CONSTRAINT tbl_apodreturbelilog_pkey;
       public         postgres    false    233            ?           2606    27251 "   tbl_apodterima tbl_apodterima_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_apodterima
    ADD CONSTRAINT tbl_apodterima_pkey PRIMARY KEY (terimakey);
 L   ALTER TABLE ONLY public.tbl_apodterima DROP CONSTRAINT tbl_apodterima_pkey;
       public         postgres    false    235            ?           2606    27437    tbl_apohex tbl_apohex_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_apohex
    ADD CONSTRAINT tbl_apohex_pkey PRIMARY KEY (resepno);
 D   ALTER TABLE ONLY public.tbl_apohex DROP CONSTRAINT tbl_apohex_pkey;
       public         postgres    false    238            ?           2606    27448     tbl_apohmohon tbl_apohmohon_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_apohmohon
    ADD CONSTRAINT tbl_apohmohon_pkey PRIMARY KEY (mohonno);
 J   ALTER TABLE ONLY public.tbl_apohmohon DROP CONSTRAINT tbl_apohmohon_pkey;
       public         postgres    false    239            ?           2606    27458 &   tbl_apohmohonlog tbl_apohmohonlog_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tbl_apohmohonlog
    ADD CONSTRAINT tbl_apohmohonlog_pkey PRIMARY KEY (mohonno);
 P   ALTER TABLE ONLY public.tbl_apohmohonlog DROP CONSTRAINT tbl_apohmohonlog_pkey;
       public         postgres    false    240            ?           2606    27471    tbl_apohmove tbl_apohmove_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_apohmove
    ADD CONSTRAINT tbl_apohmove_pkey PRIMARY KEY (moveno);
 H   ALTER TABLE ONLY public.tbl_apohmove DROP CONSTRAINT tbl_apohmove_pkey;
       public         postgres    false    241            ?           2606    27484 $   tbl_apohmovelog tbl_apohmovelog_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbl_apohmovelog
    ADD CONSTRAINT tbl_apohmovelog_pkey PRIMARY KEY (moveno);
 N   ALTER TABLE ONLY public.tbl_apohmovelog DROP CONSTRAINT tbl_apohmovelog_pkey;
       public         postgres    false    242            ?           2606    27515    tbl_apohpo tbl_apohpo_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_apohpo
    ADD CONSTRAINT tbl_apohpo_pkey PRIMARY KEY (po_no);
 D   ALTER TABLE ONLY public.tbl_apohpo DROP CONSTRAINT tbl_apohpo_pkey;
       public         postgres    false    244            ?           2606    27567 &   tbl_apohproduksi tbl_apohproduksi_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_apohproduksi
    ADD CONSTRAINT tbl_apohproduksi_pkey PRIMARY KEY (moveno);
 P   ALTER TABLE ONLY public.tbl_apohproduksi DROP CONSTRAINT tbl_apohproduksi_pkey;
       public         postgres    false    246            ?           2606    27615     tbl_apohresep tbl_apohresep_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_apohresep
    ADD CONSTRAINT tbl_apohresep_pkey PRIMARY KEY (resepno);
 J   ALTER TABLE ONLY public.tbl_apohresep DROP CONSTRAINT tbl_apohresep_pkey;
       public         postgres    false    247            ?           2606    27630 (   tbl_apohreturbeli tbl_apohreturbeli_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_apohreturbeli
    ADD CONSTRAINT tbl_apohreturbeli_pkey PRIMARY KEY (retur_no);
 R   ALTER TABLE ONLY public.tbl_apohreturbeli DROP CONSTRAINT tbl_apohreturbeli_pkey;
       public         postgres    false    248            ?           2606    27736 &   tbl_apohterima12 tbl_apohterima12_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tbl_apohterima12
    ADD CONSTRAINT tbl_apohterima12_pkey PRIMARY KEY (terima_no);
 P   ALTER TABLE ONLY public.tbl_apohterima12 DROP CONSTRAINT tbl_apohterima12_pkey;
       public         postgres    false    252            ?           2606    27687 "   tbl_apohterima tbl_apohterima_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_apohterima
    ADD CONSTRAINT tbl_apohterima_pkey PRIMARY KEY (terima_no);
 L   ALTER TABLE ONLY public.tbl_apohterima DROP CONSTRAINT tbl_apohterima_pkey;
       public         postgres    false    251            ?           2606    27788    tbl_apomims tbl_apomims_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_apomims
    ADD CONSTRAINT tbl_apomims_pkey PRIMARY KEY (kodemims);
 F   ALTER TABLE ONLY public.tbl_apomims DROP CONSTRAINT tbl_apomims_pkey;
       public         postgres    false    257            ?           2606    27837    tbl_apoobat tbl_apoobat_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_apoobat
    ADD CONSTRAINT tbl_apoobat_pkey PRIMARY KEY (kodeobat);
 F   ALTER TABLE ONLY public.tbl_apoobat DROP CONSTRAINT tbl_apoobat_pkey;
       public         postgres    false    258            ?           2606    27890 "   tbl_apoposting tbl_apoposting_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_apoposting
    ADD CONSTRAINT tbl_apoposting_pkey PRIMARY KEY (resepno);
 L   ALTER TABLE ONLY public.tbl_apoposting DROP CONSTRAINT tbl_apoposting_pkey;
       public         postgres    false    260            ?           2606    27945    tbl_aposetup tbl_aposetup_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_aposetup
    ADD CONSTRAINT tbl_aposetup_pkey PRIMARY KEY (apocode);
 H   ALTER TABLE ONLY public.tbl_aposetup DROP CONSTRAINT tbl_aposetup_pkey;
       public         postgres    false    265            ?           2606    28002     tbl_apostock1 tbl_apostock1_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_apostock1
    ADD CONSTRAINT tbl_apostock1_pkey PRIMARY KEY (stockkey);
 J   ALTER TABLE ONLY public.tbl_apostock1 DROP CONSTRAINT tbl_apostock1_pkey;
       public         postgres    false    269            ?           2606    28046     tbl_apovendor tbl_apovendor_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_apovendor
    ADD CONSTRAINT tbl_apovendor_pkey PRIMARY KEY (vendor_id);
 J   ALTER TABLE ONLY public.tbl_apovendor DROP CONSTRAINT tbl_apovendor_pkey;
       public         postgres    false    271            ?           2606    28078    tbl_bangsal tbl_bangsal_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_bangsal
    ADD CONSTRAINT tbl_bangsal_pkey PRIMARY KEY (bangsalid);
 F   ALTER TABLE ONLY public.tbl_bangsal DROP CONSTRAINT tbl_bangsal_pkey;
       public         postgres    false    277            ?           2606    28084    tbl_bank tbl_bank_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_bank
    ADD CONSTRAINT tbl_bank_pkey PRIMARY KEY (kodebank);
 @   ALTER TABLE ONLY public.tbl_bank DROP CONSTRAINT tbl_bank_pkey;
       public         postgres    false    278            ?           2606    28107     tbl_bayilahir tbl_bayilahir_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_bayilahir
    ADD CONSTRAINT tbl_bayilahir_pkey PRIMARY KEY (keyrekmed);
 J   ALTER TABLE ONLY public.tbl_bayilahir DROP CONSTRAINT tbl_bayilahir_pkey;
       public         postgres    false    280            ?           2606    28132 "   tbl_bedahobath tbl_bedahobath_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tbl_bedahobath
    ADD CONSTRAINT tbl_bedahobath_pkey PRIMARY KEY (nooperasi);
 L   ALTER TABLE ONLY public.tbl_bedahobath DROP CONSTRAINT tbl_bedahobath_pkey;
       public         postgres    false    282            ?           2606    28152    tbl_catatan tbl_catatan_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_catatan
    ADD CONSTRAINT tbl_catatan_pkey PRIMARY KEY (c_id);
 F   ALTER TABLE ONLY public.tbl_catatan DROP CONSTRAINT tbl_catatan_pkey;
       public         postgres    false    284            ?           2606    28178    tbl_darirj tbl_darirj_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_darirj
    ADD CONSTRAINT tbl_darirj_pkey PRIMARY KEY (noreg);
 D   ALTER TABLE ONLY public.tbl_darirj DROP CONSTRAINT tbl_darirj_pkey;
       public         postgres    false    286            ?           2606    28241 &   tbl_dbedahdetail tbl_dbedahdetail_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_dbedahdetail
    ADD CONSTRAINT tbl_dbedahdetail_pkey PRIMARY KEY (operasikey);
 P   ALTER TABLE ONLY public.tbl_dbedahdetail DROP CONSTRAINT tbl_dbedahdetail_pkey;
       public         postgres    false    289            ?           2606    28265     tbl_depkesicd tbl_depkesicd_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_depkesicd
    ADD CONSTRAINT tbl_depkesicd_pkey PRIMARY KEY ("NODTD");
 J   ALTER TABLE ONLY public.tbl_depkesicd DROP CONSTRAINT tbl_depkesicd_pkey;
       public         postgres    false    293            ?           2606    28296    tbl_dfaktur tbl_dfaktur_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_dfaktur
    ADD CONSTRAINT tbl_dfaktur_pkey PRIMARY KEY (keytukar);
 F   ALTER TABLE ONLY public.tbl_dfaktur DROP CONSTRAINT tbl_dfaktur_pkey;
       public         postgres    false    295            ?           2606    28356 &   tbl_dhasillabnew tbl_dhasillabnew_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_dhasillabnew
    ADD CONSTRAINT tbl_dhasillabnew_pkey PRIMARY KEY (labsokey);
 P   ALTER TABLE ONLY public.tbl_dhasillabnew DROP CONSTRAINT tbl_dhasillabnew_pkey;
       public         postgres    false    298            ?           2606    28443    tbl_dlab tbl_dlab_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_dlab
    ADD CONSTRAINT tbl_dlab_pkey PRIMARY KEY (labkey);
 @   ALTER TABLE ONLY public.tbl_dlab DROP CONSTRAINT tbl_dlab_pkey;
       public         postgres    false    303            ?           2606    28565    tbl_dmedis tbl_dmedis_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_dmedis
    ADD CONSTRAINT tbl_dmedis_pkey PRIMARY KEY (radiokey);
 D   ALTER TABLE ONLY public.tbl_dmedis DROP CONSTRAINT tbl_dmedis_pkey;
       public         postgres    false    310            ?           2606    28582    tbl_dokter tbl_dokter_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_dokter
    ADD CONSTRAINT tbl_dokter_pkey PRIMARY KEY (kodokter);
 D   ALTER TABLE ONLY public.tbl_dokter DROP CONSTRAINT tbl_dokter_pkey;
       public         postgres    false    311            ?           2606    35160    tbl_dpoli tbl_dpoli_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_dpoli
    ADD CONSTRAINT tbl_dpoli_pkey PRIMARY KEY (policounter);
 B   ALTER TABLE ONLY public.tbl_dpoli DROP CONSTRAINT tbl_dpoli_pkey;
       public         postgres    false    314            ?           2606    35183 $   tbl_dradiomohon tbl_dradiomohon_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tbl_dradiomohon
    ADD CONSTRAINT tbl_dradiomohon_pkey PRIMARY KEY (radiomohonkey);
 N   ALTER TABLE ONLY public.tbl_dradiomohon DROP CONSTRAINT tbl_dradiomohon_pkey;
       public         postgres    false    316            ?           2606    35373     tbl_hasilcall tbl_hasilcall_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_hasilcall
    ADD CONSTRAINT tbl_hasilcall_pkey PRIMARY KEY (nocall);
 J   ALTER TABLE ONLY public.tbl_hasilcall DROP CONSTRAINT tbl_hasilcall_pkey;
       public         postgres    false    334            ?           2606    35416    tbl_hbedah tbl_hbedah_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_hbedah
    ADD CONSTRAINT tbl_hbedah_pkey PRIMARY KEY (nooperasi);
 D   ALTER TABLE ONLY public.tbl_hbedah DROP CONSTRAINT tbl_hbedah_pkey;
       public         postgres    false    336            ?           2606    35452    tbl_hfaktur tbl_hfaktur_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_hfaktur
    ADD CONSTRAINT tbl_hfaktur_pkey PRIMARY KEY (notukar);
 F   ALTER TABLE ONLY public.tbl_hfaktur DROP CONSTRAINT tbl_hfaktur_pkey;
       public         postgres    false    338            ?           2606    35496    tbl_hinap tbl_hinap_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_hinap
    ADD CONSTRAINT tbl_hinap_pkey PRIMARY KEY (noinap);
 B   ALTER TABLE ONLY public.tbl_hinap DROP CONSTRAINT tbl_hinap_pkey;
       public         postgres    false    341            ?           2606    35554    tbl_hlab tbl_hlab_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_hlab
    ADD CONSTRAINT tbl_hlab_pkey PRIMARY KEY (nolaborat);
 @   ALTER TABLE ONLY public.tbl_hlab DROP CONSTRAINT tbl_hlab_pkey;
       public         postgres    false    343            ?           2606    35566     tbl_hlabhasil tbl_hlabhasil_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_hlabhasil
    ADD CONSTRAINT tbl_hlabhasil_pkey PRIMARY KEY (labkey);
 J   ALTER TABLE ONLY public.tbl_hlabhasil DROP CONSTRAINT tbl_hlabhasil_pkey;
       public         postgres    false    344            ?           2606    35577     tbl_hlabnotes tbl_hlabnotes_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_hlabnotes
    ADD CONSTRAINT tbl_hlabnotes_pkey PRIMARY KEY (nolaborat);
 J   ALTER TABLE ONLY public.tbl_hlabnotes DROP CONSTRAINT tbl_hlabnotes_pkey;
       public         postgres    false    346            ?           2606    35627    tbl_hmedis tbl_hmedis_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_hmedis
    ADD CONSTRAINT tbl_hmedis_pkey PRIMARY KEY (noradio);
 D   ALTER TABLE ONLY public.tbl_hmedis DROP CONSTRAINT tbl_hmedis_pkey;
       public         postgres    false    349            ?           2606    35670    tbl_hpoli tbl_hpoli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_hpoli
    ADD CONSTRAINT tbl_hpoli_pkey PRIMARY KEY (nopoli);
 B   ALTER TABLE ONLY public.tbl_hpoli DROP CONSTRAINT tbl_hpoli_pkey;
       public         postgres    false    352            ?           2606    35732 $   tbl_hradiomohon tbl_hradiomohon_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_hradiomohon
    ADD CONSTRAINT tbl_hradiomohon_pkey PRIMARY KEY (radiomohon);
 N   ALTER TABLE ONLY public.tbl_hradiomohon DROP CONSTRAINT tbl_hradiomohon_pkey;
       public         postgres    false    355            ?           2606    35832    tbl_icdwho tbl_icdwho_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_icdwho
    ADD CONSTRAINT tbl_icdwho_pkey PRIMARY KEY (icdcode);
 D   ALTER TABLE ONLY public.tbl_icdwho DROP CONSTRAINT tbl_icdwho_pkey;
       public         postgres    false    366            ?           2606    35867    tbl_jurnalh tbl_jurnalh_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_jurnalh
    ADD CONSTRAINT tbl_jurnalh_pkey PRIMARY KEY (nobukti);
 F   ALTER TABLE ONLY public.tbl_jurnalh DROP CONSTRAINT tbl_jurnalh_pkey;
       public         postgres    false    369                        2606    35972    tbl_kasir tbl_kasir_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_kasir
    ADD CONSTRAINT tbl_kasir_pkey PRIMARY KEY (nokwitansi);
 B   ALTER TABLE ONLY public.tbl_kasir DROP CONSTRAINT tbl_kasir_pkey;
       public         postgres    false    374                       2606    36002    tbl_kasmasuk tbl_kasmasuk_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_kasmasuk
    ADD CONSTRAINT tbl_kasmasuk_pkey PRIMARY KEY (notr);
 H   ALTER TABLE ONLY public.tbl_kasmasuk DROP CONSTRAINT tbl_kasmasuk_pkey;
       public         postgres    false    377                       2606    36090     tbl_logbarang tbl_logbarang_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_logbarang
    ADD CONSTRAINT tbl_logbarang_pkey PRIMARY KEY (kodeobat);
 J   ALTER TABLE ONLY public.tbl_logbarang DROP CONSTRAINT tbl_logbarang_pkey;
       public         postgres    false    381                       2606    36152     tbl_mutasikas tbl_mutasikas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_mutasikas
    ADD CONSTRAINT tbl_mutasikas_pkey PRIMARY KEY (nomutasi);
 J   ALTER TABLE ONLY public.tbl_mutasikas DROP CONSTRAINT tbl_mutasikas_pkey;
       public         postgres    false    387                       2606    36265    tbl_pap tbl_pap_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.tbl_pap
    ADD CONSTRAINT tbl_pap_pkey PRIMARY KEY (noreg);
 >   ALTER TABLE ONLY public.tbl_pap DROP CONSTRAINT tbl_pap_pkey;
       public         postgres    false    393                       2606    36413    tbl_pasien1 tbl_pasien1_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_pasien1
    ADD CONSTRAINT tbl_pasien1_pkey PRIMARY KEY (rekmed);
 F   ALTER TABLE ONLY public.tbl_pasien1 DROP CONSTRAINT tbl_pasien1_pkey;
       public         postgres    false    396            
           2606    36370    tbl_pasien tbl_pasien_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_pasien
    ADD CONSTRAINT tbl_pasien_pkey PRIMARY KEY (rekmed);
 D   ALTER TABLE ONLY public.tbl_pasien DROP CONSTRAINT tbl_pasien_pkey;
       public         postgres    false    395                       2606    36500     tbl_penjamin2 tbl_penjamin2_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_penjamin2
    ADD CONSTRAINT tbl_penjamin2_pkey PRIMARY KEY (cust_id);
 J   ALTER TABLE ONLY public.tbl_penjamin2 DROP CONSTRAINT tbl_penjamin2_pkey;
       public         postgres    false    398                       2606    36538    tbl_petugas tbl_petugas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_petugas
    ADD CONSTRAINT tbl_petugas_pkey PRIMARY KEY (nokk);
 F   ALTER TABLE ONLY public.tbl_petugas DROP CONSTRAINT tbl_petugas_pkey;
       public         postgres    false    405                       2606    36594 &   tbl_premiumember tbl_premiumember_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_premiumember
    ADD CONSTRAINT tbl_premiumember_pkey PRIMARY KEY (memberid);
 P   ALTER TABLE ONLY public.tbl_premiumember DROP CONSTRAINT tbl_premiumember_pkey;
       public         postgres    false    408                       2606    36605 *   tbl_premiumembertr tbl_premiumembertr_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tbl_premiumembertr
    ADD CONSTRAINT tbl_premiumembertr_pkey PRIMARY KEY (noreg);
 T   ALTER TABLE ONLY public.tbl_premiumembertr DROP CONSTRAINT tbl_premiumembertr_pkey;
       public         postgres    false    409                       2606    36619    tbl_promo tbl_promo_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_promo
    ADD CONSTRAINT tbl_promo_pkey PRIMARY KEY (kodepromo);
 B   ALTER TABLE ONLY public.tbl_promo DROP CONSTRAINT tbl_promo_pkey;
       public         postgres    false    410                       2606    36632 $   tbl_promohadiah tbl_promohadiah_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tbl_promohadiah
    ADD CONSTRAINT tbl_promohadiah_pkey PRIMARY KEY (kohadiah);
 N   ALTER TABLE ONLY public.tbl_promohadiah DROP CONSTRAINT tbl_promohadiah_pkey;
       public         postgres    false    412                       2606    36639 "   tbl_promojenis tbl_promojenis_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_promojenis
    ADD CONSTRAINT tbl_promojenis_pkey PRIMARY KEY (kjenis);
 L   ALTER TABLE ONLY public.tbl_promojenis DROP CONSTRAINT tbl_promojenis_pkey;
       public         postgres    false    413                       2606    36650     tbl_promotext tbl_promotext_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_promotext
    ADD CONSTRAINT tbl_promotext_pkey PRIMARY KEY (clientid);
 J   ALTER TABLE ONLY public.tbl_promotext DROP CONSTRAINT tbl_promotext_pkey;
       public         postgres    false    414                        2606    36683    tbl_regbook tbl_regbook_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_regbook
    ADD CONSTRAINT tbl_regbook_pkey PRIMARY KEY (noreg);
 F   ALTER TABLE ONLY public.tbl_regbook DROP CONSTRAINT tbl_regbook_pkey;
       public         postgres    false    419            "           2606    36772    tbl_regist tbl_regist_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_regist
    ADD CONSTRAINT tbl_regist_pkey PRIMARY KEY (noreg);
 D   ALTER TABLE ONLY public.tbl_regist DROP CONSTRAINT tbl_regist_pkey;
       public         postgres    false    420            $           2606    36826 "   tbl_registrasi tbl_registrasi_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_registrasi
    ADD CONSTRAINT tbl_registrasi_pkey PRIMARY KEY (noreg);
 L   ALTER TABLE ONLY public.tbl_registrasi DROP CONSTRAINT tbl_registrasi_pkey;
       public         postgres    false    421            (           2606    36981 &   tbl_rekammedisRS tbl_rekammedisRS_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."tbl_rekammedisRS"
    ADD CONSTRAINT "tbl_rekammedisRS_pkey" PRIMARY KEY (noreg);
 T   ALTER TABLE ONLY public."tbl_rekammedisRS" DROP CONSTRAINT "tbl_rekammedisRS_pkey";
       public         postgres    false    427            &           2606    36912 "   tbl_rekammedis tbl_rekammedis_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tbl_rekammedis
    ADD CONSTRAINT tbl_rekammedis_pkey PRIMARY KEY (noreg);
 L   ALTER TABLE ONLY public.tbl_rekammedis DROP CONSTRAINT tbl_rekammedis_pkey;
       public         postgres    false    423            *           2606    37002    tbl_rencanad tbl_rencanad_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_rencanad
    ADD CONSTRAINT tbl_rencanad_pkey PRIMARY KEY (renkey);
 H   ALTER TABLE ONLY public.tbl_rencanad DROP CONSTRAINT tbl_rencanad_pkey;
       public         postgres    false    429            ,           2606    37016    tbl_rencanah tbl_rencanah_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_rencanah
    ADD CONSTRAINT tbl_rencanah_pkey PRIMARY KEY (no_rencana);
 H   ALTER TABLE ONLY public.tbl_rencanah DROP CONSTRAINT tbl_rencanah_pkey;
       public         postgres    false    430            .           2606    37148    tbl_rmbook tbl_rmbook_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_rmbook
    ADD CONSTRAINT tbl_rmbook_pkey PRIMARY KEY (rekmed);
 D   ALTER TABLE ONLY public.tbl_rmbook DROP CONSTRAINT tbl_rmbook_pkey;
       public         postgres    false    433            0           2606    37183    tbl_ruang tbl_ruang_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_ruang
    ADD CONSTRAINT tbl_ruang_pkey PRIMARY KEY (koderuang);
 B   ALTER TABLE ONLY public.tbl_ruang DROP CONSTRAINT tbl_ruang_pkey;
       public         postgres    false    435            2           2606    37191     tbl_ruangpoli tbl_ruangpoli_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tbl_ruangpoli
    ADD CONSTRAINT tbl_ruangpoli_pkey PRIMARY KEY (koderuang);
 J   ALTER TABLE ONLY public.tbl_ruangpoli DROP CONSTRAINT tbl_ruangpoli_pkey;
       public         postgres    false    437            4           2606    37211 *   tbl_ruangtransaksi tbl_ruangtransaksi_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_ruangtransaksi
    ADD CONSTRAINT tbl_ruangtransaksi_pkey PRIMARY KEY (ruangkey);
 T   ALTER TABLE ONLY public.tbl_ruangtransaksi DROP CONSTRAINT tbl_ruangtransaksi_pkey;
       public         postgres    false    438            8           2606    37562 ,   tbl_transaksiharian tbl_transaksiharian_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tbl_transaksiharian
    ADD CONSTRAINT tbl_transaksiharian_pkey PRIMARY KEY (tgltransaksi);
 V   ALTER TABLE ONLY public.tbl_transaksiharian DROP CONSTRAINT tbl_transaksiharian_pkey;
       public         postgres    false    450            :           2606    37654    tbl_trluar tbl_trluar_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_trluar
    ADD CONSTRAINT tbl_trluar_pkey PRIMARY KEY (nobukti);
 D   ALTER TABLE ONLY public.tbl_trluar DROP CONSTRAINT tbl_trluar_pkey;
       public         postgres    false    454            <           2606    37689    tbl_urutrs tbl_urutrs_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tbl_urutrs
    ADD CONSTRAINT tbl_urutrs_pkey PRIMARY KEY (kode_urut);
 D   ALTER TABLE ONLY public.tbl_urutrs DROP CONSTRAINT tbl_urutrs_pkey;
       public         postgres    false    457            >           2606    37718 &   tbl_userlogistik tbl_userlogistik_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_userlogistik
    ADD CONSTRAINT tbl_userlogistik_pkey PRIMARY KEY ("NAMAUSER");
 P   ALTER TABLE ONLY public.tbl_userlogistik DROP CONSTRAINT tbl_userlogistik_pkey;
       public         postgres    false    459            @           2606    37734    tbl_vocd tbl_vocd_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.tbl_vocd
    ADD CONSTRAINT tbl_vocd_pkey PRIMARY KEY (novoucher);
 @   ALTER TABLE ONLY public.tbl_vocd DROP CONSTRAINT tbl_vocd_pkey;
       public         postgres    false    460            B           2606    37745    tbl_voch tbl_voch_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tbl_voch
    ADD CONSTRAINT tbl_voch_pkey PRIMARY KEY (nokir);
 @   ALTER TABLE ONLY public.tbl_voch DROP CONSTRAINT tbl_voch_pkey;
       public         postgres    false    461            D           2606    37752    tbl_vocjual tbl_vocjual_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.tbl_vocjual
    ADD CONSTRAINT tbl_vocjual_pkey PRIMARY KEY (novoucher);
 F   ALTER TABLE ONLY public.tbl_vocjual DROP CONSTRAINT tbl_vocjual_pkey;
       public         postgres    false    462            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      2      x?????? ? ?      3      x?????? ? ?      >      x?????? ? ?      Y      x?????? ? ?      e      x?????? ? ?      m      x?????? ? ?      n      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?             x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?      	      x?????? ? ?      
      x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?             x?????? ? ?      !      x?????? ? ?      "      x?????? ? ?      #      x?????? ? ?      $      x?????? ? ?      %      x?????? ? ?      &      x?????? ? ?      '      x?????? ? ?      (      x?????? ? ?      )      x?????? ? ?      *      x?????? ? ?      +      x?????? ? ?      ,      x?????? ? ?      -      x?????? ? ?      .      x?????? ? ?      /      x?????? ? ?      0      x?????? ? ?      1      x?????? ? ?      4      x?????? ? ?      5      x?????? ? ?      6      x?????? ? ?      7      x?????? ? ?      8      x?????? ? ?      9      x?????? ? ?      :      x?????? ? ?      ;      x?????? ? ?      <      x?????? ? ?      =      x?????? ? ?      ?      x?????? ? ?      @      x?????? ? ?      A      x?????? ? ?      B      x?????? ? ?      C      x?????? ? ?      D      x?????? ? ?      E      x?????? ? ?      F      x?????? ? ?      G      x?????? ? ?      H      x?????? ? ?      I      x?????? ? ?      J      x?????? ? ?      K      x?????? ? ?      L      x?????? ? ?      M      x?????? ? ?      N      x?????? ? ?      O      x?????? ? ?      P      x?????? ? ?      Q      x?????? ? ?      R      x?????? ? ?      S      x?????? ? ?      T      x?????? ? ?      U      x?????? ? ?      V      x?????? ? ?      W      x?????? ? ?      X      x?????? ? ?      Z      x?????? ? ?      [      x?????? ? ?      \      x?????? ? ?      ]      x?????? ? ?      ^      x?????? ? ?      _      x?????? ? ?      `      x?????? ? ?      a      x?????? ? ?      b      x?????? ? ?      c      x?????? ? ?      d      x?????? ? ?      f      x?????? ? ?      g      x?????? ? ?      h      x?????? ? ?      i      x?????? ? ?      j      x?????? ? ?      k      x?????? ? ?      l      x?????? ? ?      o      x?????? ? ?      p      x?????? ? ?      q      x?????? ? ?      r      x?????? ? ?      s      x?????? ? ?      t      x?????? ? ?      u      x?????? ? ?      v      x?????? ? ?      w      x?????? ? ?      x      x?????? ? ?      y      x?????? ? ?      z      x?????? ? ?      {      x?????? ? ?      |      x?????? ? ?      }      x?????? ? ?      ~      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     