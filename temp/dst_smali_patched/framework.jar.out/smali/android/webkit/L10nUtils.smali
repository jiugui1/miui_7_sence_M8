.class public Landroid/webkit/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;

.field private static mIdsArray:[I

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/L10nUtils;->mIdsArray:[I

    return-void

    :array_0
    .array-data 4
        0x1040372
        0x1040373
        0x1040374
        0x1040375
        0x1040376
        0x1040377
        0x1040378
        0x1040379
        0x104037a
        0x104037b
        0x104037c
        0x104037d
        0x104037e
        0x104037f
        0x1040380
        0x1040381
        0x1040382
        0x1040383
        0x1040384
        0x1040385
        0x1040386
        0x1040387
        0x1040388
        0x1040389
        0x104038a
        0x104038b
        0x104038c
        0x104038d
        0x104038e
        0x104038f
        0x1040390
        0x1040391
        0x1040392
        0x1040393
        0x1040394
        0x1040395
        0x1040396
        0x1040397
        0x1040398
        0x1040399
        0x104039a
        0x104039b
        0x104039c
        0x104039d
        0x104039e
        0x104039f
        0x10403a0
        0x10403a1
        0x10403a2
        0x10403a3
        0x10403a4
        0x10403a5
        0x10403a6
        0x10403a7
        0x10403a8
        0x10403a9
        0x10403aa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .local v0, "needToLoad":Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0    # "needToLoad":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "needToLoad":Z
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadString(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    :cond_0
    sget-object v1, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "localisedString":Ljava/lang/String;
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    return-void
.end method
