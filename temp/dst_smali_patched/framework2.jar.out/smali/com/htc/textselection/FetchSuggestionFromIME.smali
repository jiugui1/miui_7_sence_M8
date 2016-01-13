.class public Lcom/htc/textselection/FetchSuggestionFromIME;
.super Ljava/lang/Object;
.source "FetchSuggestionFromIME.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "htc_cime"

.field static final CACHE_SIZE:I = 0x64

.field static final CONTENT_DIRECTORY1:Ljava/lang/String; = "get_chinese_next_prediction"

.field static final HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

.field static final LOCAL_DEBUG:Z

.field private static final LOGTAG:Ljava/lang/String; = "FetchSuggestionFromIME"

.field static final MAX_WORD_LENGTH:I = 0x4

.field static final SUGGESTION_DELIMITER:Ljava/lang/String; = "|"

.field public static final ZH_CN:Ljava/lang/String; = "2"

.field public static final ZH_TW:Ljava/lang/String; = "1"

.field static final htcime_rc:Landroid/net/Uri;


# instance fields
.field emptySuggest:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProvider:Landroid/content/IContentProvider;

.field mProviderContext:Landroid/content/Context;

.field private mSueggestCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field s_e:[I

.field spliter:Ljava/util/regex/Pattern;

.field ti:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    const-string v0, "content://htc_cime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_chinese_next_prediction"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->htcime_rc:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->spliter:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME$1;-><init>(Lcom/htc/textselection/FetchSuggestionFromIME;IFZ)V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static isCJKS(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_0

    const v0, 0x9fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCJKS(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ch"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSuggestionOf(Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 6
    .param p1, "predicts"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .local v0, "chars":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v3, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FetchSuggestionFromIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FetchSuggesionFromIME::matchWord] >> chars="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/htc/textselection/FetchSuggestionFromIME;->getSuggestionOf([Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSuggestionOf([Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 24
    .param p1, "predicts"    # [Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    move-object/from16 v19, v2

    :cond_1
    :goto_0
    return-object v19

    :cond_2
    const-wide/16 v12, 0x0

    .local v12, "_startTime":J
    const-wide/16 v10, 0x0

    .local v10, "_endTime":J
    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    :cond_3
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v0, v2, [[Ljava/lang/String;

    move-object/from16 v19, v0

    .local v19, "result":[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    aget-object v2, p1, v16

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/ref/SoftReference;

    .local v23, "value":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v19, v16

    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v19, v16

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    aget-object v2, v19, v16

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v23    # "value":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v7, v2, [Ljava/lang/String;

    .local v7, "test":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> build spend time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v10, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v10

    :cond_9
    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> query chars "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v14, 0x0

    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    const-string v3, "com.htc.textselection"

    sget-object v4, Lcom/htc/textselection/FetchSuggestionFromIME;->htcime_rc:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v8, p2

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_3
    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> query spend time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v10, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v10

    :cond_b
    if-nez v14, :cond_c

    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    move-object/from16 v19, v2

    goto/16 :goto_0

    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "FetchSuggestionFromIME"

    const-string v3, "error!"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v17, 0x0

    .local v17, "index":I
    :cond_d
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .local v20, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    new-instance v21, Ljava/util/StringTokenizer;

    const-string v2, "|"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v21, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    .local v22, "tokens":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v22, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_e
    aput-object v22, v19, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v16

    new-instance v4, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v18    # "j":I
    .end local v21    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v22    # "tokens":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v17, v17, 0x1

    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_d

    .end local v17    # "index":I
    .end local v20    # "s":Ljava/lang/String;
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    sget-boolean v2, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-string v2, "FetchSuggestionFromIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FetchSuggesionFromIME::getSuggesionOf] >> create spend time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v10, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v10

    goto/16 :goto_0

    .restart local v17    # "index":I
    .restart local v20    # "s":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    aget-object v3, p1, v16

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v17    # "index":I
    .end local v20    # "s":Ljava/lang/String;
    :cond_11
    const/16 v19, 0x0

    check-cast v19, [[Ljava/lang/String;

    goto :goto_6
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I
    .locals 7
    .param p1, "sentence"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aput p2, v3, v5

    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aput p2, v3, v6

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    :goto_0
    return-object v3

    :cond_1
    add-int/lit8 v3, p2, -0x4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "start":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v4, p2, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "end":I
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "toStr":Ljava/lang/String;
    sub-int v3, p2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aget v4, v3, v5

    add-int/2addr v4, v1

    aput v4, v3, v5

    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aget v4, v3, v6

    add-int/2addr v4, v1

    aput v4, v3, v6

    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    goto :goto_0
.end method

.method public matchWord(Ljava/lang/String;ILjava/lang/String;)[I
    .locals 21
    .param p1, "sentence"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "lang"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput p2, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput p2, v17, v18

    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    :goto_0
    return-object v17

    :cond_1
    const-wide/16 v5, 0x0

    .local v5, "_startTime":J
    const-wide/16 v3, 0x0

    .local v3, "_endTime":J
    sget-boolean v17, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v17, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :cond_2
    const/16 v17, 0x0

    add-int/lit8 v18, p2, -0x4

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v14

    .local v14, "start":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, p2, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "end":I
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->getSuggestionOf(Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v15

    .local v15, "suggests":[[Ljava/lang/String;
    sget-boolean v17, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v17, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v17, "FetchSuggestionFromIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FetchSuggesionFromIME::matchWord] >> query spend time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v3, v5

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v3

    :cond_3
    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    .local v10, "matchLen":I
    move/from16 v8, p2

    .local v8, "i":I
    :goto_1
    if-lt v8, v14, :cond_9

    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .local v16, "wordCand":Ljava/lang/String;
    sub-int v11, p2, v8

    .local v11, "minLen":I
    sub-int v17, v8, v14

    aget-object v17, v15, v17

    if-eqz v17, :cond_5

    sub-int v17, v8, v14

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_6

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    sub-int v17, v8, v14

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    sub-int v17, v8, v14

    aget-object v17, v15, v17

    aget-object v12, v17, v9

    .local v12, "s":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v13, v17, 0x1

    .local v13, "sl":I
    if-le v13, v11, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v13, v0, :cond_7

    if-le v13, v10, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move v10, v13

    move/from16 v0, p2

    if-ne v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput p2, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int v19, p2, v10

    aput v19, v17, v18

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v8, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int v19, v8, v10

    aput v19, v17, v18

    goto :goto_3

    .end local v9    # "j":I
    .end local v11    # "minLen":I
    .end local v12    # "s":Ljava/lang/String;
    .end local v13    # "sl":I
    .end local v16    # "wordCand":Ljava/lang/String;
    :cond_9
    sget-boolean v17, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v17, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v17, "FetchSuggestionFromIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FetchSuggesionFromIME::matchWord] >> match spend time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sub-long v19, v3, v5

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v3

    :cond_a
    sget-boolean v17, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v17, :cond_b

    const-string v17, "FetchSuggestionFromIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[FetchSuggesionFromIME::matchWord] >> word="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " s="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " e="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " index="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "_startTime":J
    const-wide/16 v0, 0x0

    .local v0, "_endTime":J
    sget-boolean v6, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_0
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    if-ne v6, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "FetchSuggestionFromIME"

    const-string v7, "release provider failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    .end local v4    # "cr":Landroid/content/ContentResolver;
    :cond_4
    sget-boolean v6, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v6, "FetchSuggestionFromIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FetchSuggesionFromIME::setContext] >> release provider time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    :cond_5
    iput-object p1, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v6, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v6, Lcom/htc/textselection/FetchSuggestionFromIME;->LOCAL_DEBUG:Z

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v6, "FetchSuggestionFromIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FetchSuggesionFromIME::setContext] >> Acquire provider time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "FetchSuggestionFromIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquire provider HTCIMEProvider_CONTENT_URI failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
