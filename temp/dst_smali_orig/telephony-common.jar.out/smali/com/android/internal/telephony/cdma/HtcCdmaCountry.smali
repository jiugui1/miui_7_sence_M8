.class public Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
.super Ljava/lang/Object;
.source "HtcCdmaCountry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;,
        Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    }
.end annotation


# static fields
.field private static final DBG_DETAIL:Z

.field private static final DBG_SECURITY:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "Cty-"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static sidComparator:Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

.field private static sidTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public countryIso:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public offsetFromGMT:Ljava/lang/Integer;

.field public offsetFromGMT_wDST:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/16 v15, -0x10

    const/16 v14, 0xc

    const/4 v13, 0x4

    const/16 v12, 0x8

    const/4 v3, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->DBG_DETAIL:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/4 v5, 0x1

    const/16 v1, 0x87f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "us"

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x880

    const/16 v1, 0x8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kr"

    const/16 v1, 0x1c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x900

    const/16 v1, 0x1dff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "us"

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1e00

    const/16 v1, 0x1e7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "au"

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x1e80

    const/16 v2, 0x1ebf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x1ec0

    const/16 v2, 0x1eff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f00

    const/16 v1, 0x1f0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fo"

    const/16 v1, 0x120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f10

    const/16 v1, 0x1f1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gl"

    const/16 v1, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f20

    const/16 v1, 0x1f2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fk"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f30

    const/16 v1, 0x1f3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pm"

    const/16 v1, 0x134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f40

    const/16 v1, 0x1f47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "vc"

    const/16 v1, 0x168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x1f48

    const/16 v2, 0x1f4f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f50

    const/16 v1, 0x1f5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lc"

    const/16 v1, 0x166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f60

    const/16 v1, 0x1f6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kn"

    const/16 v1, 0x164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f70

    const/16 v1, 0x1f7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ms"

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f80

    const/16 v1, 0x1f8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gd"

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1f90

    const/16 v1, 0x1f9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bs"

    const/16 v1, 0x16c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1fa0

    const/16 v1, 0x1faf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bm"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1fb0

    const/16 v1, 0x1fbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "vg"

    const/16 v1, 0x15c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1fc0

    const/16 v1, 0x1fcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ky"

    const/16 v1, 0x15a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1fd0

    const/16 v1, 0x1fdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ag"

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1fe0

    const/16 v1, 0x1fef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bb"

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x1ff0

    const/16 v1, 0x1fff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "jm"

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2000

    const/16 v1, 0x201f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "th"

    const/16 v1, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2020

    const/16 v1, 0x203f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "eg"

    const/16 v1, 0x25a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2040

    const/16 v1, 0x205f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ma"

    const/16 v1, 0x25c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2060

    const/16 v1, 0x207f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dz"

    const/16 v1, 0x25b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2080

    const/16 v1, 0x20ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "au"

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2100

    const/16 v1, 0x211f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "il"

    const/16 v1, 0x1a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2120

    const/16 v1, 0x213f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tn"

    const/16 v1, 0x25d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2140

    const/16 v1, 0x215f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ly"

    const/16 v1, 0x25e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2160

    const/16 v1, 0x217f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gm"

    const/16 v1, 0x25f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2180

    const/16 v1, 0x21ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nz"

    const/16 v1, 0x212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2200

    const/16 v1, 0x221f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sn"

    const/16 v1, 0x260

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2220

    const/16 v1, 0x223f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mr"

    const/16 v1, 0x261

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2240

    const/16 v1, 0x225f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ml"

    const/16 v1, 0x262

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2260

    const/16 v1, 0x227f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gn"

    const/16 v1, 0x263

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2280

    const/16 v1, 0x228f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "do"

    const/16 v1, 0x172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2290

    const/16 v1, 0x229f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cv"

    const/16 v1, 0x271

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x22a0

    const/16 v1, 0x22af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "st"

    const/16 v1, 0x272

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x22b0

    const/16 v2, 0x22bf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x22c0

    const/16 v1, 0x22cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sc"

    const/16 v1, 0x279

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x22d0

    const/16 v1, 0x22df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dj"

    const/16 v1, 0x27e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x22e0

    const/16 v1, 0x22ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kz"

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x22f0

    const/16 v1, 0x22ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "re"

    const/16 v1, 0x287

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2300

    const/16 v1, 0x231f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ci"

    const/16 v1, 0x264

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2320

    const/16 v1, 0x233f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bf"

    const/16 v1, 0x265

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2340

    const/16 v1, 0x235f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ne"

    const/16 v1, 0x266

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2360

    const/16 v1, 0x237f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tg"

    const/16 v1, 0x267

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2380

    const/16 v1, 0x239f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bj"

    const/16 v1, 0x268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x23a0

    const/16 v1, 0x23bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mu"

    const/16 v1, 0x269

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x23c0

    const/16 v1, 0x23df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lr"

    const/16 v1, 0x26a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x23e0

    const/16 v1, 0x23ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sl"

    const/16 v1, 0x26b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2400

    const/16 v1, 0x241f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gh"

    const/16 v1, 0x26c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2420

    const/16 v1, 0x243f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ng"

    const/16 v1, 0x26d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2440

    const/16 v1, 0x245f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "td"

    const/16 v1, 0x26e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2460

    const/16 v1, 0x247f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cf"

    const/16 v1, 0x26f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2480

    const/16 v1, 0x249f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cm"

    const/16 v1, 0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x24a0

    const/16 v1, 0x24bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gq"

    const/16 v1, 0x273

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x24c0

    const/16 v1, 0x24df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ga"

    const/16 v1, 0x274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x24e0

    const/16 v1, 0x24ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cg"

    const/16 v1, 0x275

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x276

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2500

    const/16 v1, 0x251f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cd"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2520

    const/16 v1, 0x253f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ao"

    const/16 v1, 0x277

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2540

    const/16 v1, 0x255f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gw"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2560

    const/16 v1, 0x257f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sd"

    const/16 v1, 0x27a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2580

    const/16 v1, 0x258f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ls"

    const/16 v1, 0x28b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2590

    const/16 v1, 0x259f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dm"

    const/16 v1, 0x16e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25a0

    const/16 v1, 0x25af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sz"

    const/16 v1, 0x28d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25b0

    const/16 v1, 0x25bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "aw"

    const/16 v1, 0x16b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25c0

    const/16 v1, 0x25cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sg"

    const/16 v1, 0x20d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25d0

    const/16 v1, 0x25df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mp"

    const/16 v1, 0x216

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25e0

    const/16 v1, 0x25ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gu"

    const/16 v1, 0x217

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x25f0

    const/16 v1, 0x25ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "au"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2600

    const/16 v1, 0x261f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "rw"

    const/16 v1, 0x27b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2620

    const/16 v1, 0x263f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "et"

    const/16 v1, 0x27c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2640

    const/16 v1, 0x265f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "so"

    const/16 v1, 0x27d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2660

    const/16 v1, 0x267f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tt"

    const/16 v1, 0x176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2680

    const/16 v1, 0x269f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ke"

    const/16 v1, 0x27f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x26a0

    const/16 v1, 0x26bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tz"

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x26c0

    const/16 v1, 0x26df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ug"

    const/16 v1, 0x281

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x26e0

    const/16 v1, 0x26ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bi"

    const/16 v1, 0x282

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2700

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mz"

    const/16 v1, 0x283

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2720

    const/16 v1, 0x273f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "zm"

    const/16 v1, 0x285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2740

    const/16 v1, 0x275f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mg"

    const/16 v1, 0x286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2760

    const/16 v1, 0x277f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "zw"

    const/16 v1, 0x288

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2780

    const/16 v1, 0x279f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "na"

    const/16 v1, 0x289

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x27a0

    const/16 v1, 0x27bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mw"

    const/16 v1, 0x28a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x27c0

    const/16 v1, 0x27df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bw"

    const/16 v1, 0x28c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x27e0

    const/16 v1, 0x27ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "km"

    const/16 v1, 0x28e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2800

    const/16 v1, 0x287f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "za"

    const/16 v1, 0x28f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2880

    const/16 v1, 0x28ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "my"

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2900

    const/16 v1, 0x297f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "id"

    const/16 v1, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2980

    const/16 v1, 0x298f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ph"

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2990

    const/16 v1, 0x299f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hk"

    const/16 v1, 0x1c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x29a0

    const/16 v1, 0x29ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ph"

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a00

    const/16 v1, 0x2a0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mc"

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a10

    const/16 v1, 0x2a1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sm"

    const/16 v1, 0x124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a20

    const/16 v1, 0x2a21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lv"

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x2a22

    const/16 v2, 0x2a2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a30

    const/16 v1, 0x2a3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tc"

    const/16 v1, 0x178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a40

    const/16 v1, 0x2a4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pm"

    const/16 v1, 0x134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a50

    const/16 v1, 0x2a67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "uz"

    const/16 v1, 0x1b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a68

    const/16 v1, 0x2a77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tj"

    const/16 v1, 0x1b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a78

    const/16 v1, 0x2a7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ee"

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a80

    const/16 v1, 0x2a8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bn"

    const/16 v1, 0x210

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2a90

    const/16 v1, 0x2a9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nr"

    const/16 v1, 0x218

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2aa0

    const/16 v1, 0x2aaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "to"

    const/16 v1, 0x21b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2ab0

    const/16 v1, 0x2abf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sb"

    const/16 v1, 0x21c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2ac0

    const/16 v1, 0x2acf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "vu"

    const/16 v1, 0x21d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2ad0

    const/16 v1, 0x2adf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fj"

    const/16 v1, 0x21e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2ae0

    const/16 v1, 0x2aef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pw"

    const/16 v1, 0x228

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2af0

    const/16 v1, 0x2aff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "wf"

    const/16 v1, 0x21f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b00

    const/16 v1, 0x2b1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pg"

    const/16 v1, 0x219

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b20

    const/16 v1, 0x2b3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fm"

    const/16 v1, 0x226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b40

    const/16 v1, 0x2b5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kp"

    const/16 v1, 0x1d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b60

    const/16 v1, 0x2b7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kh"

    const/16 v1, 0x1c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b80

    const/16 v1, 0x2b8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ck"

    const/16 v1, 0x224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v9, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2b90

    const/16 v1, 0x2b9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nu"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2ba0

    const/16 v1, 0x2baf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "as"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x2bb0

    const/16 v2, 0x2bbf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x225

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, -0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v5, -0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2bc0

    const/16 v1, 0x2bcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ki"

    const/16 v1, 0x221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2bd0

    const/16 v1, 0x2bdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nc"

    const/16 v1, 0x222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2be0

    const/16 v1, 0x2bef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tv"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2bf0

    const/16 v1, 0x2bff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pf"

    const/16 v1, 0x223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x2c00

    const/16 v2, 0x2c0f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c10

    const/16 v1, 0x2c1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mh"

    const/16 v1, 0x227

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c20

    const/16 v1, 0x2c2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mo"

    const/16 v1, 0x1c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c30

    const/16 v1, 0x2c3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kw"

    const/16 v1, 0x1a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c40

    const/16 v1, 0x2c4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ye"

    const/16 v1, 0x1a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c50

    const/16 v1, 0x2c5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "om"

    const/16 v1, 0x1a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c60

    const/16 v1, 0x2c6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ye"

    const/16 v1, 0x1a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c70

    const/16 v1, 0x2c7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ae"

    const/16 v1, 0x1a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2c80

    const/16 v1, 0x2d22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ru"

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2d23

    const/16 v1, 0x2d23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "uz"

    const/16 v1, 0x1b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2d24

    const/16 v1, 0x2d4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ru"

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2d50

    const/16 v1, 0x2d50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "uz"

    const/16 v1, 0x1b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x2d51

    const/16 v1, 0x2fff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ru"

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3000

    const/16 v1, 0x33ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "jp"

    const/16 v1, 0x1b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3400

    const/16 v1, 0x347f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "vn"

    const/16 v1, 0x1c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3480

    const/16 v1, 0x349f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "la"

    const/16 v1, 0x1c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x34a0

    const/16 v1, 0x34bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bd"

    const/16 v1, 0x1d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x34c0

    const/16 v1, 0x34df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tw"

    const/16 v1, 0x1d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x34e0

    const/16 v1, 0x34ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mv"

    const/16 v1, 0x1d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3500

    const/16 v1, 0x37ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cn"

    const/16 v1, 0x1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3800

    const/16 v1, 0x387f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tr"

    const/16 v1, 0x11e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3880

    const/16 v1, 0x39ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "in"

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3a00

    const/16 v1, 0x3a7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pk"

    const/16 v1, 0x19a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3a80

    const/16 v1, 0x3aff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "af"

    const/16 v1, 0x19c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3b00

    const/16 v1, 0x3b7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lk"

    const/16 v1, 0x19d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3b80

    const/16 v1, 0x3bff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mm"

    const/16 v1, 0x19e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3c00

    const/16 v1, 0x3c1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lb"

    const/16 v1, 0x19f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3c20

    const/16 v1, 0x3c3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "jo"

    const/16 v1, 0x1a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3c40

    const/16 v1, 0x3c5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sy"

    const/16 v1, 0x1a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3c60

    const/16 v1, 0x3c7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "iq"

    const/16 v1, 0x1a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3c80

    const/16 v1, 0x3c9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sa"

    const/16 v1, 0x1a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3ca0

    const/16 v1, 0x3cbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mn"

    const/16 v1, 0x1ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3cc0

    const/16 v1, 0x3cdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "np"

    const/16 v1, 0x1ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3ce0

    const/16 v1, 0x3cff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bg"

    const/16 v1, 0x11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3d00

    const/16 v1, 0x3d7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ir"

    const/16 v1, 0x1b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3d80

    const/16 v1, 0x3dff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hu"

    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x3e00

    const/16 v2, 0x3e1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x3e20

    const/16 v2, 0x3e21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e22

    const/16 v1, 0x3e31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ua"

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e32

    const/16 v1, 0x3e41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "md"

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e42

    const/16 v1, 0x3e49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "am"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e4a

    const/16 v1, 0x3e51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "az"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e52

    const/16 v1, 0x3e59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "by"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x3e5a

    const/16 v2, 0x3e61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e62

    const/16 v1, 0x3e69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tm"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x3e6a

    const/16 v2, 0x3e7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3e80

    const/16 v1, 0x3eff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ro"

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3f00

    const/16 v1, 0x3f7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cz"

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x3f80

    const/16 v1, 0x3f8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pl"

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x3f90

    const/16 v2, 0x3fff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x104

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x4000

    const/16 v1, 0x47ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ca"

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x4800

    const/16 v2, 0x542d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x542e

    const/16 v1, 0x543e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "kg"

    const/16 v1, 0x1b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x543f

    const/16 v1, 0x547e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "us"

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x547f

    const/16 v2, 0x55ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5600

    const/16 v1, 0x56ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "de"

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5700

    const/16 v1, 0x577f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "no"

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5780

    const/16 v1, 0x5783

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "se"

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5784

    const/16 v1, 0x57ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "us"

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5800

    const/16 v1, 0x580f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "dk"

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x5810

    const/16 v2, 0x587f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5880

    const/16 v1, 0x597f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gb"

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5980

    const/16 v1, 0x59ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "at"

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5a00

    const/16 v1, 0x5a7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ch"

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5a80

    const/16 v1, 0x5b7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "it"

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5b80

    const/16 v1, 0x5bff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "rs"

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5c00

    const/16 v1, 0x5c7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "es"

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5c80

    const/16 v1, 0x5d7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fr"

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5d80

    const/16 v1, 0x5dff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "be"

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5e00

    const/16 v1, 0x5e7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nl"

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5e80

    const/16 v1, 0x5eff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gr"

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5f00

    const/16 v1, 0x5f1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pt"

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5f20

    const/16 v1, 0x5f3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lu"

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5f40

    const/16 v1, 0x5f43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ie"

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x5f44

    const/16 v2, 0x5f5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5f60

    const/16 v1, 0x5f7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is"

    const/16 v1, 0x112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x5f80

    const/16 v1, 0x5f83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fi"

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x5f84

    const/16 v2, 0x5fff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x6000

    const/16 v1, 0x61f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mx"

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x61f4

    const/16 v2, 0x620b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x620c

    const/16 v1, 0x6224

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mx"

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x6225

    const/16 v2, 0x63ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x6400

    const/16 v1, 0x65ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cn"

    const/16 v1, 0x1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x6600

    const/16 v2, 0x797f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7980

    const/16 v1, 0x799f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "py"

    const/16 v1, 0x2e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x79a0

    const/16 v1, 0x79bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sr"

    const/16 v1, 0x2ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x79c0

    const/16 v1, 0x79df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "uy"

    const/16 v1, 0x2ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x79e0

    const/16 v1, 0x79ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cy"

    const/16 v1, 0x118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a00

    const/16 v1, 0x7a1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bo"

    const/16 v1, 0x2e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a20

    const/16 v1, 0x7a3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gy"

    const/16 v1, 0x2e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a40

    const/16 v1, 0x7a5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ec"

    const/16 v1, 0x2e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a60

    const/16 v1, 0x7a7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gf"

    const/16 v1, 0x2e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a80

    const/16 v1, 0x7a8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gp"

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7a90

    const/16 v1, 0x7a9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mq"

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7aa0

    const/16 v1, 0x7aaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nl"

    const/16 v1, 0x16a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7ab0

    const/16 v1, 0x7abf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bh"

    const/16 v1, 0x1aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7ac0

    const/16 v1, 0x7acf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "qa"

    const/16 v1, 0x1ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7ad0

    const/16 v1, 0x7adf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gi"

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7ae0

    const/16 v1, 0x7aef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "al"

    const/16 v1, 0x114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7af0

    const/16 v1, 0x7af3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "mt"

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x7af4

    const/16 v2, 0x7aff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7b00

    const/16 v1, 0x7b7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ve"

    const/16 v1, 0x2de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7b80

    const/16 v1, 0x7bff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "co"

    const/16 v1, 0x2dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7c00

    const/16 v1, 0x7c0a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cl"

    const/16 v1, 0x2da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x7c0b

    const/16 v2, 0x7c40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7c41

    const/16 v1, 0x7c4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cl"

    const/16 v1, 0x2da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x7c4d

    const/16 v2, 0x7c60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7c61

    const/16 v1, 0x7c6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cl"

    const/16 v1, 0x2da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x7c6f

    const/16 v2, 0x7c7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7c80

    const/16 v1, 0x7d7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "br"

    const/16 v1, 0x2d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7d80

    const/16 v1, 0x7dff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ar"

    const/16 v1, 0x2d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7e00

    const/16 v1, 0x7e7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cu"

    const/16 v1, 0x170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7e80

    const/16 v1, 0x7eff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pe"

    const/16 v1, 0x2cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7f00

    const/16 v1, 0x7f1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ni"

    const/16 v1, 0x2c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7f20

    const/16 v1, 0x7f3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cr"

    const/16 v1, 0x2c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v9, v3

    move-object v11, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7f40

    const/16 v1, 0x7f5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "pa"

    const/16 v1, 0x2ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7f60

    const/16 v1, 0x7f7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ht"

    const/16 v1, 0x174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7f80

    const/16 v1, 0x7f89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bz"

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v1, 0x7f8a

    const/16 v2, 0x7f9f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7fa0

    const/16 v1, 0x7fbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "gt"

    const/16 v1, 0x2c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7fc0

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "sv"

    const/16 v1, 0x2c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/16 v5, 0x7fe0

    const/16 v1, 0x7fff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "hn"

    const/16 v1, 0x2c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v1, -0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const v1, 0x8000

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    const/high16 v1, 0x10000

    const v2, 0x1869f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;->getInstance()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidComparator:Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    .prologue
    sput-object p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidComparator:Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    return-object p0
.end method

.method public static dump()V
    .locals 0

    .prologue
    return-void
.end method

.method public static findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .locals 13
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "sid"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, "entrySID":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    const/4 v5, -0x1

    .local v5, "indexSID":I
    if-eqz p1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .end local v2    # "entrySID":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v2, v10, v9, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;-><init>(ILjava/lang/Integer;Ljava/lang/String;)V

    .restart local v2    # "entrySID":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;->getInstance()Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDComparator;

    move-result-object v11

    invoke-static {v10, v2, v11}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v5

    if-gez v5, :cond_7

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    const/4 v4, -0x1

    .local v4, "indexMCC":I
    const/4 v3, -0x1

    .local v3, "indexISO":I
    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .local v0, "currMCC":Ljava/lang/Integer;
    const/4 v10, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    iget-object v10, v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_1

    iget-object v10, v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    if-nez v10, :cond_8

    iget-object v10, v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_1

    move-object v1, v2

    :cond_1
    :goto_2
    if-eqz v1, :cond_9

    move v4, v5

    .end local v0    # "currMCC":Ljava/lang/Integer;
    :cond_2
    :goto_3
    const/4 v8, 0x0

    .local v8, "selectEntry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->isSIDEntryValid(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object v8, v2

    :cond_3
    :goto_4
    const/4 v7, 0x0

    .local v7, "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->isSIDEntryValid(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    .end local v7    # "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;-><init>()V

    .restart local v7    # "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    if-eqz v10, :cond_4

    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->mcc:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    if-nez v10, :cond_4

    :try_start_1
    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_5
    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->gmtOffeset:Ljava/lang/Integer;

    iput-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->offsetFromGMT:Ljava/lang/Integer;

    iget-object v10, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->dstGmtOffeset:Ljava/lang/Integer;

    iput-object v10, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->offsetFromGMT_wDST:Ljava/lang/Integer;

    :cond_5
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cty-Find "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-static {v9}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v8, :cond_13

    iget-object v9, v8, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_14

    iget-object v9, v7, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .end local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    .end local v3    # "indexISO":I
    .end local v4    # "indexMCC":I
    .end local v7    # "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v8    # "selectEntry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    :cond_7
    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "entrySID":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    check-cast v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .restart local v2    # "entrySID":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    goto/16 :goto_0

    .restart local v0    # "currMCC":Ljava/lang/Integer;
    .restart local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    .restart local v3    # "indexISO":I
    .restart local v4    # "indexMCC":I
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_1

    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :goto_8
    if-nez v1, :cond_e

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .restart local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    if-eqz v10, :cond_d

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_d

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    if-nez v10, :cond_c

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_b

    const/4 v1, 0x0

    :cond_b
    :goto_9
    if-nez v1, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_b

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    if-nez v1, :cond_2

    const/4 v4, -0x1

    const/4 v6, 0x0

    .local v6, "iso":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :goto_a
    if-eqz v6, :cond_2

    const/4 v3, 0x0

    :cond_f
    :goto_b
    if-nez v1, :cond_11

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_11

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->sidTable:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .restart local v1    # "entryMCC":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    if-eqz v10, :cond_10

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_f

    :cond_10
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_b

    :cond_11
    if-nez v1, :cond_2

    const/4 v3, -0x1

    goto/16 :goto_3

    .end local v0    # "currMCC":Ljava/lang/Integer;
    .end local v6    # "iso":Ljava/lang/String;
    .restart local v8    # "selectEntry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    :cond_12
    if-eqz v1, :cond_3

    move-object v8, v1

    goto/16 :goto_4

    .restart local v7    # "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    :cond_13
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto/16 :goto_6

    :cond_14
    const-string v9, "."

    goto/16 :goto_7

    :catch_0
    move-exception v10

    goto/16 :goto_5

    .end local v7    # "result":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    .end local v8    # "selectEntry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
    .restart local v0    # "currMCC":Ljava/lang/Integer;
    .restart local v6    # "iso":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_a

    .end local v6    # "iso":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method private static isSIDEntryValid(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)Z
    .locals 1
    .param p0, "entry"    # Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .prologue
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
