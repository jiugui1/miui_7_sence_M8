.class public final Lcom/htc/utils/ulog/SerializableUtil$Reader;
.super Ljava/lang/Object;
.source "SerializableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/SerializableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/DataInputStream;Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;)V
    .locals 15
    .param p0, "in"    # Ljava/io/DataInputStream;
    .param p1, "out"    # Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_5

    const/4 v8, 0x0

    .local v8, "flag":I
    const/4 v6, 0x0

    .local v6, "count":I
    const-string v1, ""

    .local v1, "appId":Ljava/lang/String;
    const-string v2, ""

    .local v2, "category":Ljava/lang/String;
    const-string v5, ""

    .local v5, "data":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .local v3, "timestamp":J
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .local v10, "itemCount":I
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .local v12, "jObject":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v10, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    .local v13, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .local v14, "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .end local v7    # "e":Lorg/json/JSONException;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;->add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "category":Ljava/lang/String;
    .end local v3    # "timestamp":J
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v8    # "flag":I
    .end local v9    # "i":I
    .end local v10    # "itemCount":I
    .end local v11    # "j":I
    .end local v12    # "jObject":Lorg/json/JSONObject;
    :cond_5
    return-void
.end method

.method public static readEx(Ljava/io/InputStream;Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;)Z
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/SerializableUtil$Reader;->read(Ljava/io/DataInputStream;Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;)V

    const/4 v1, 0x1

    .end local v0    # "dis":Ljava/io/DataInputStream;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
