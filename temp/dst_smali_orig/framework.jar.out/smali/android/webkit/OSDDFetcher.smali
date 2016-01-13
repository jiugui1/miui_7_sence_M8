.class final Landroid/webkit/OSDDFetcher;
.super Ljava/lang/Object;
.source "OSDDFetcher.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
.field private static final FIELD_DESCRIPTION:I = 0xa

.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON_URI:I = 0x2

.field private static final FIELD_FAVICON_URI_HEIGHT:I = 0x7

.field private static final FIELD_FAVICON_URI_TYPE:I = 0x9

.field private static final FIELD_FAVICON_URI_WIDTH:I = 0x8

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SEARCH_URI_TYPE:I = 0x6

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "OSDDFetcher"

.field private static final NUM_FIELDS:I = 0xb

.field private static mParsedData:[Ljava/lang/String;

.field private static mQueue:Landroid/net/http/RequestQueue;

.field private static mQueueRefCount:I


# instance fields
.field private docResult:Ljavax/xml/transform/dom/DOMResult;

.field private mBytes:Ljava/io/ByteArrayOutputStream;

.field private mContext:Landroid/content/Context;

.field private mDoc:Lorg/w3c/dom/Document;

.field private mHandle:Landroid/net/http/RequestHandle;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/net/http/Headers;

.field private final mProxy:Landroid/webkit/CallbackProxy;

.field private mStatusCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/webkit/CallbackProxy;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "proxy"    # Landroid/webkit/CallbackProxy;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Landroid/webkit/OSDDFetcher;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/webkit/OSDDFetcher;->mProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/OSDDFetcher;)Landroid/net/http/RequestHandle;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/OSDDFetcher;

    .prologue
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/OSDDFetcher;)Ljava/net/URL;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/OSDDFetcher;

    .prologue
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/OSDDFetcher;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/OSDDFetcher;

    .prologue
    iget v0, p0, Landroid/webkit/OSDDFetcher;->mStatusCode:I

    return v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    :goto_0
    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    throw v0

    :catch_0
    move-exception v0

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    goto :goto_0
.end method

.method private parseOSDD()V
    .locals 23

    .prologue
    const/16 v16, 0x0

    .local v16, "valid_type":Z
    const/16 v18, 0x0

    .local v18, "valid_url":Z
    const/4 v8, 0x0

    .local v8, "length":I
    const/4 v12, 0x0

    .local v12, "numOfRequired":I
    const/16 v17, 0x0

    .local v17, "valid_type_cnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/OSDDFetcher;->mDoc:Lorg/w3c/dom/Document;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .local v13, "root":Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .local v9, "list":Lorg/w3c/dom/NodeList;
    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    sput-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_1a

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .local v11, "node":Lorg/w3c/dom/Node;
    instance-of v0, v11, Lorg/w3c/dom/Element;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .local v2, "att":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    move-object v4, v11

    check-cast v4, Lorg/w3c/dom/Element;

    .local v4, "ele":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    .local v14, "tagname":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "value":Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    :cond_0
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_1
    const-string v20, "shortname"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v19, v20, v21

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x1

    aput-object v19, v20, v21

    add-int/lit8 v12, v12, 0x1

    .end local v2    # "att":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "ele":Lorg/w3c/dom/Element;
    .end local v14    # "tagname":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .restart local v2    # "att":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "ele":Lorg/w3c/dom/Element;
    .restart local v14    # "tagname":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_3
    const-string v20, "description"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0xa

    aput-object v19, v20, v21

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    const-string v20, "inputencoding"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x4

    aput-object v19, v20, v21

    goto :goto_1

    :cond_5
    const-string v20, "image"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x2

    aput-object v19, v20, v21

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v8, :cond_2

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    .local v3, "attribute":Lorg/w3c/dom/Attr;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    if-nez v10, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "val":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v20, "height"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x7

    aput-object v15, v20, v21

    goto :goto_3

    :cond_8
    const-string v20, "width"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x8

    aput-object v15, v20, v21

    goto :goto_3

    :cond_9
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x9

    aput-object v15, v20, v21

    goto :goto_3

    .end local v3    # "attribute":Lorg/w3c/dom/Attr;
    .end local v7    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/String;
    :cond_a
    const-string v20, "url"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    if-nez v2, :cond_c

    const/4 v8, 0x0

    :goto_4
    const/4 v5, 0x0

    .local v5, "hasTemplate":Z
    const/4 v1, 0x0

    .local v1, "_url":Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5
    if-ge v7, v8, :cond_13

    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    .restart local v3    # "attribute":Lorg/w3c/dom/Attr;
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    if-nez v10, :cond_d

    :cond_b
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v1    # "_url":Ljava/lang/String;
    .end local v3    # "attribute":Lorg/w3c/dom/Attr;
    .end local v5    # "hasTemplate":Z
    .end local v7    # "j":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_c
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    goto :goto_4

    .restart local v1    # "_url":Ljava/lang/String;
    .restart local v3    # "attribute":Lorg/w3c/dom/Attr;
    .restart local v5    # "hasTemplate":Z
    .restart local v7    # "j":I
    .restart local v10    # "name":Ljava/lang/String;
    :cond_d
    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "val":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v20, "template"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/4 v5, 0x1

    const-string v20, "http://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string v20, "https://"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_e
    const/16 v18, 0x1

    :cond_f
    if-eqz v18, :cond_b

    move-object v1, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    const-string v20, "type"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x6

    aput-object v15, v20, v21

    const-string v20, "text/html"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_11
    const/16 v16, 0x0

    goto :goto_6

    :cond_12
    const-string v20, "rel"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "indexoffset"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "pageoffset"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    goto :goto_6

    .end local v3    # "attribute":Lorg/w3c/dom/Attr;
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/String;
    :cond_13
    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    if-eqz v20, :cond_14

    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_18

    :cond_14
    const/16 v16, 0x1

    :cond_15
    :goto_7
    if-eqz v16, :cond_2

    if-nez v5, :cond_17

    if-eqz v19, :cond_17

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_17

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_16

    const-string v20, "https://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_17

    :cond_16
    const/16 v18, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    :cond_17
    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x3

    aput-object v1, v20, v21

    goto/16 :goto_1

    :cond_18
    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    const-string v21, "application/x-suggestions+json"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    if-nez v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_15

    :cond_19
    sget-object v20, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    const/16 v21, 0x5

    aput-object v1, v20, v21

    goto :goto_7

    .end local v1    # "_url":Ljava/lang/String;
    .end local v2    # "att":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "ele":Lorg/w3c/dom/Element;
    .end local v5    # "hasTemplate":Z
    .end local v7    # "j":I
    .end local v11    # "node":Lorg/w3c/dom/Node;
    .end local v14    # "tagname":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/OSDDFetcher;->mProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    if-lez v17, :cond_1b

    if-eqz v18, :cond_1b

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v12, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/OSDDFetcher;->mProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v20, v0

    sget-object v21, Landroid/webkit/OSDDFetcher;->mParsedData:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/CallbackProxy;->addSearchProvider([Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method private releaseQueue()V
    .locals 1

    .prologue
    sget v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->shutdown()V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    goto :goto_0
.end method

.method private retainQueue()V
    .locals 2

    .prologue
    sget-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/OSDDFetcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    :cond_0
    sget v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/OSDDFetcher;->mQueueRefCount:I

    return-void
.end method


# virtual methods
.method public cancelAndReleaseQueue()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    :cond_1
    invoke-direct {p0}, Landroid/webkit/OSDDFetcher;->releaseQueue()V

    return-void
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .prologue
    return-void
.end method

.method public data([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    iget-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public endData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget v4, p0, Landroid/webkit/OSDDFetcher;->mStatusCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    new-instance v4, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v4}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    iput-object v4, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/webkit/OSDDFetcher;->mBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->docResult:Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Document;

    iput-object v4, p0, Landroid/webkit/OSDDFetcher;->mDoc:Lorg/w3c/dom/Document;

    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_0

    invoke-direct {p0}, Landroid/webkit/OSDDFetcher;->parseOSDD()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/webkit/OSDDFetcher;->cleanup()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v4, p0, Landroid/webkit/OSDDFetcher;->mStatusCode:I

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_1

    iget v4, p0, Landroid/webkit/OSDDFetcher;->mStatusCode:I

    const/16 v5, 0x190

    if-ge v4, v5, :cond_1

    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Landroid/webkit/OSDDFetcher;->mHeader:Landroid/net/http/Headers;

    invoke-virtual {v5}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .local v1, "protocol":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    iget-object v4, p0, Landroid/webkit/OSDDFetcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/webkit/OSDDFetcher$1;

    invoke-direct {v5, p0}, Landroid/webkit/OSDDFetcher$1;-><init>(Landroid/webkit/OSDDFetcher;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v1    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/MalformedURLException;
    iput-object v6, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    goto :goto_2

    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/OSDDFetcher;->cleanup()V

    return-void
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .param p1, "error"    # Landroid/net/http/SslError;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .param p1, "headers"    # Landroid/net/http/Headers;

    .prologue
    iput-object p1, p0, Landroid/webkit/OSDDFetcher;->mHeader:Landroid/net/http/Headers;

    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/webkit/OSDDFetcher;->retainQueue()V

    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .local v7, "protocol":Ljava/lang/String;
    const-string v0, "http"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    sget-object v0, Landroid/webkit/OSDDFetcher;->mQueue:Landroid/net/http/RequestQueue;

    iget-object v1, p0, Landroid/webkit/OSDDFetcher;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/OSDDFetcher;->mHandle:Landroid/net/http/RequestHandle;

    goto :goto_0
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    .prologue
    iput p3, p0, Landroid/webkit/OSDDFetcher;->mStatusCode:I

    return-void
.end method
