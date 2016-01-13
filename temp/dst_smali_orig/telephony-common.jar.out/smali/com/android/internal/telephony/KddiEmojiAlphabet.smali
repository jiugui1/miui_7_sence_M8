.class public Lcom/android/internal/telephony/KddiEmojiAlphabet;
.super Ljava/lang/Object;
.source "KddiEmojiAlphabet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

.field private static final sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0xe4a5

    const v6, 0xe4b1

    const v5, 0xe471

    const v4, 0xe4b5

    const v3, 0xe594

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe000

    const v2, 0xe488

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe001

    const v2, 0xe48d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe002

    const v2, 0xe48c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe003

    const v2, 0xe485

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe004

    const v2, 0xe487

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe005

    const v2, 0xe469

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe006

    const v2, 0xe598

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe007

    const v2, 0xeae8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe008

    const v2, 0xeaf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00a

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00b

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00d

    const v2, 0xeaf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00e

    const v2, 0xe48a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe00f

    const v2, 0xe48e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe010

    const v2, 0xe4bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe038

    const v2, 0xeb7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03a

    const v2, 0xeb53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03b

    const v2, 0xeb5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe039

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe011

    const v2, 0xe5a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe012

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe013

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe014

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe016

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb69

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6a

    const v2, 0xe468

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01d

    const v2, 0xe57a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01c

    const v2, 0xe57b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe01b

    const v2, 0xe47c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02b

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02c

    const v2, 0xe490

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02d

    const v2, 0xe491

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02e

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe02f

    const v2, 0xe493

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe030

    const v2, 0xe494

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe031

    const v2, 0xe495    # 8.2E-41f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe032

    const v2, 0xe496

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe033

    const v2, 0xe497

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe034

    const v2, 0xe498

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe035

    const v2, 0xe499

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe036

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe037

    const v2, 0xe49b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03c

    const v2, 0xe513

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03d

    const v2, 0xe4e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03e

    const v2, 0xeb7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe03f

    const v2, 0xe4ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe040

    const v2, 0xe4ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe041

    const v2, 0xe5ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe042

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe043

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe045

    const v2, 0xea94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe046

    const v2, 0xe4e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe047

    const v2, 0xe4e2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe048

    const v2, 0xea96

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04a

    const v2, 0xeb36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04b

    const v2, 0xeb37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04c

    const v2, 0xeb38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04d

    const v2, 0xeb49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04e

    const v2, 0xeb82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe04f    # 1.457999E-39f

    const v2, 0xe4d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe050    # 1.458E-39f

    const v2, 0xeb35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe051

    const v2, 0xeab9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe052

    const v2, 0xeaba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe053

    const v2, 0xe4d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe054

    const v2, 0xe4cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe055

    const v2, 0xeabb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe056

    const v2, 0xeabc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe057

    const v2, 0xeb32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe058

    const v2, 0xeb33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe059

    const v2, 0xeb34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe05a

    const v2, 0xeb39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe05b

    const v2, 0xeb5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe190

    const v2, 0xe5a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe191

    const v2, 0xe5a5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe192

    const v2, 0xead0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe193

    const v2, 0xead1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe194

    const v2, 0xeb47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe195

    const v2, 0xe509

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe196

    const v2, 0xeaa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe197

    const v2, 0xe50b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe198

    const v2, 0xeaa1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe199

    const v2, 0xeaa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19b

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19c

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19d

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19e

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe19f

    const v2, 0xe501

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a1

    const v2, 0xe5dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a2

    const v2, 0xeadb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a3

    const v2, 0xeae9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a4

    const v2, 0xeb13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a5

    const v2, 0xeb14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a6

    const v2, 0xeb15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a7

    const v2, 0xeb16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a8

    const v2, 0xeb17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1a9

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1aa

    const v2, 0xeb19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ab

    const v2, 0xeb1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ac

    const v2, 0xeb44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ad

    const v2, 0xeb45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ae

    const v2, 0xe4cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1af

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b0

    const v2, 0xe50e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b1

    const v2, 0xe4ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b2

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b3

    const v2, 0xe4f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b6

    const v2, 0xeb1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b9

    const v2, 0xeb7e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d3

    const v2, 0xeb22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7dc

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d4

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d5

    const v2, 0xeb24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d6

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cc

    const v2, 0xeb1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cd

    const v2, 0xeb20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ce

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cf

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c5

    const v2, 0xe5c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c6

    const v2, 0xeaec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1cb

    const v2, 0xeb1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1da

    const v2, 0xe4dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e1

    const v2, 0xeb57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e2

    const v2, 0xeb58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e3

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c9

    const v2, 0xeb1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d9

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1dc

    const v2, 0xe5d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1ba

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bb

    const v2, 0xeb76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c8

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1dd

    const v2, 0xe5db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bc

    const v2, 0xe4dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d8

    const v2, 0xe4df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bd

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c7

    const v2, 0xeb1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c2

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c0

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b8

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c3

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1be

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c4

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1b7

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1bf

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1c1

    const v2, 0xe5c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d0

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d1

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d2

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1d7

    const v2, 0xe4da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1db

    const v2, 0xe4ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1de

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1df

    const v2, 0xeb46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe1e0

    const v2, 0xeb48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe320

    const v2, 0xe472

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe321

    const v2, 0xeb67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe322

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe324

    const v2, 0xe5ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe325

    const v2, 0xeacb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe326

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe327

    const v2, 0xe5c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe328

    const v2, 0xeac1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe329

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32c

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32d

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32e

    const v2, 0xeac7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe32f

    const v2, 0xeac8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe330

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe331

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe333

    const v2, 0xeb80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe334

    const v2, 0xeb64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe335

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe336

    const v2, 0xe4fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe338

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe339

    const v2, 0xeb69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33a

    const v2, 0xe473

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33b

    const v2, 0xeac6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33c

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33d

    const v2, 0xeb5d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33e

    const v2, 0xeac5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe33f

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe340

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe341

    const v2, 0xe5c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe342

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe343

    const v2, 0xeabf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe344

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe345

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe346

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe347

    const v2, 0xe5c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe348

    const v2, 0xeb61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe349

    const v2, 0xeb7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34a

    const v2, 0xeb63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34b

    const v2, 0xeb60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34c

    const v2, 0xeb65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34d

    const v2, 0xeb68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34e

    const v2, 0xeb5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe34f

    const v2, 0xeb6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe350

    const v2, 0xeb66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe351

    const v2, 0xead7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe352

    const v2, 0xead8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe353

    const v2, 0xead9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe354

    const v2, 0xeb50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe355

    const v2, 0xeb51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe356

    const v2, 0xeb52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe357

    const v2, 0xeb85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe358

    const v2, 0xeb86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe359

    const v2, 0xeb87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe35a

    const v2, 0xeb88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe35b

    const v2, 0xead2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b0

    const v2, 0xe4ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b1

    const v2, 0xeb09

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b2

    const v2, 0xe4ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b3

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b4

    const v2, 0xe5df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b5

    const v2, 0xe4aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b6

    const v2, 0xe4a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b7

    const v2, 0xea81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b8

    const v2, 0xeaf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4b9

    const v2, 0xe4a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ba

    const v2, 0xea80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bb

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bc

    const v2, 0xe5cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bd

    const v2, 0xeaf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4be

    const v2, 0xeaf7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4bf

    const v2, 0xeaf8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c0

    const v2, 0xeaf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c1

    const v2, 0xe4a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c2

    const v2, 0xe4bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c3

    const v2, 0xe5bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c4

    const v2, 0xe4c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c7

    const v2, 0xe572

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c8

    const v2, 0xeb6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cc

    const v2, 0xe5b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cd

    const v2, 0xeb2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d6

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d7

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d8

    const v2, 0xea9f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe553

    const v2, 0xeb2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ce

    const v2, 0xe4fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cf

    const v2, 0xe5b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d0

    const v2, 0xeb77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d1

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d3

    const v2, 0xea93

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d4

    const v2, 0xea9e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d5

    const v2, 0xeb6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d9

    const v2, 0xeaa3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4da

    const v2, 0xeaa4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4db

    const v2, 0xe50d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4dc

    const v2, 0xe504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f0

    const v2, 0xe49c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4dd

    const v2, 0xe4c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4df

    const v2, 0xe5dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e0

    const v2, 0xe579

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e1

    const v2, 0xe57c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e2

    const v2, 0xe57d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e3

    const v2, 0xe585

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e4

    const v2, 0xeb5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ed

    const v2, 0xeb11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e8

    const v2, 0xeb0e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4eb

    const v2, 0xe5d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e7

    const v2, 0xeafa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ea

    const v2, 0xeb10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e9

    const v2, 0xeb0f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e5

    const v2, 0xe4cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ee

    const v2, 0xeb12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ec

    const v2, 0xe5d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4e6

    const v2, 0xe573

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f6

    const v2, 0xe47b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fb

    const v2, 0xe583

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4c9

    const v2, 0xe587

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ca

    const v2, 0xe5cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4cb

    const v2, 0xe581

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fa

    const v2, 0xe57f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f5

    const v2, 0xe50a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f7

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f8

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe044

    const v2, 0xe480

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4d2

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe509

    const v2, 0xe510

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50a

    const v2, 0xea9a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50b

    const v2, 0xeb26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50c

    const v2, 0xeb27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50d

    const v2, 0xeb29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50e

    const v2, 0xeb28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe50f

    const v2, 0xe59f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe510

    const v2, 0xe4cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe511

    const v2, 0xe5a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe512

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe513

    const v2, 0xeaf0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe514

    const v2, 0xe5d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe515

    const v2, 0xe5cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe516

    const v2, 0xea9b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe517

    const v2, 0xea9c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe518

    const v2, 0xeae3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe519

    const v2, 0xeae4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51a

    const v2, 0xeae5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51b

    const v2, 0xeae6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51c

    const v2, 0xeae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51d

    const v2, 0xeaeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51e

    const v2, 0xeaed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe51f

    const v2, 0xeaee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe520

    const v2, 0xe46f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe521

    const v2, 0xeb3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe017

    const v2, 0xeaef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe522

    const v2, 0xe59b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe523

    const v2, 0xe596

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe524

    const v2, 0xe51e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe525

    const v2, 0xe588

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe526

    const v2, 0xeb08

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe527

    const v2, 0xea92

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe528

    const v2, 0xe520

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe529

    const v2, 0xe521

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52a

    const v2, 0xe591

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52b

    const v2, 0xeb62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52c

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52d

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe52e

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe822

    const v2, 0xe58b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe530

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe531

    const v2, 0xe4a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe533

    const v2, 0xe592

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe534

    const v2, 0xe593

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe535

    const v2, 0xe51f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb92

    const v2, 0xeb71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7c

    const v2, 0xeafd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7d

    const v2, 0xeafe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7e

    const v2, 0xeaff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7f

    const v2, 0xeb00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb80

    const v2, 0xeb55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe536

    const v2, 0xeb03

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe538

    const v2, 0xe5b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe539

    const v2, 0xe4a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53a

    const v2, 0xe4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53b

    const v2, 0xe5ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53c

    const v2, 0xe582

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53d

    const v2, 0xe562

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81d

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81e

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53e

    const v2, 0xe516

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe53f

    const v2, 0xe560

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe540

    const v2, 0xe561

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe541

    const v2, 0xe569

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe542

    const v2, 0xe563

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe543

    const v2, 0xe58f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe544

    const v2, 0xe590

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe545

    const v2, 0xe56b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe546

    const v2, 0xe49f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe547

    const v2, 0xe49d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe502

    const v2, 0xe568

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ff

    const v2, 0xe565

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe500

    const v2, 0xe566

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe501

    const v2, 0xe567

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe503

    const v2, 0xe56f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe504

    const v2, 0xe51d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fd

    const v2, 0xe55f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe548

    const v2, 0xe564

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe549

    const v2, 0xe56a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54a

    const v2, 0xe574

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54b

    const v2, 0xe575

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54c

    const v2, 0xe576

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54d

    const v2, 0xe56c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54e

    const v2, 0xe56d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe54f

    const v2, 0xe56e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe550

    const v2, 0xe570

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe551

    const v2, 0xe4a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe552

    const v2, 0xeb0b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d1

    const v2, 0xe4ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d2

    const v2, 0xe599

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d3

    const v2, 0xe4b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d4

    const v2, 0xe4b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d5

    const v2, 0xeaac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d6

    const v2, 0xe59a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d7

    const v2, 0xe4b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d8

    const v2, 0xe4b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7d9

    const v2, 0xe46b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7da

    const v2, 0xeb41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7db

    const v2, 0xe5d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7dd

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7de

    const v2, 0xeade

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7df

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e0

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e1

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e3

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e4

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e5

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e6

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e7

    const v2, 0xe4a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e8

    const v2, 0xea82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7e9

    const v2, 0xe4b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ea

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ec

    const v2, 0xeb6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ed

    const v2, 0xe5c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ee

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ef

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f1

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f2

    const v2, 0xeadf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f3

    const v2, 0xeae0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f4

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f5

    const v2, 0xe571

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f6

    const v2, 0xe4a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f7

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f8

    const v2, 0xe5d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f9

    const v2, 0xeb73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fa

    const v2, 0xe4bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fb

    const v2, 0xe5d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fd

    const v2, 0xe46d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7fe

    const v2, 0xeae2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7ff

    const v2, 0xeb42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe800

    const v2, 0xe503

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe801

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe802

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe803

    const v2, 0xe508

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe804

    const v2, 0xe59c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe805

    const v2, 0xeaf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe806

    const v2, 0xe59e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe807

    const v2, 0xe49e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe808

    const v2, 0xe4be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe809

    const v2, 0xe59d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80a

    const v2, 0xe4c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80b

    const v2, 0xe5d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80c

    const v2, 0xe4c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80d

    const v2, 0xe46e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80e

    const v2, 0xeadd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe80f

    const v2, 0xe4c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe810

    const v2, 0xeb43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe811

    const v2, 0xeb6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe812

    const v2, 0xeb6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe813

    const v2, 0xe5be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe814

    const v2, 0xe505

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe816

    const v2, 0xe506

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe817

    const v2, 0xeb40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe818

    const v2, 0xeadc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe819

    const v2, 0xe507

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81a

    const v2, 0xeacc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4ef

    const v2, 0xe515

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f9

    const v2, 0xe57e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81c

    const v2, 0xe502

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe81f

    const v2, 0xe5b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe820

    const v2, 0xe580

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe823

    const v2, 0xe4eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe824

    const v2, 0xeb78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe825

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe826

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe827

    const v2, 0xe5ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe828

    const v2, 0xea95

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe829

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82a

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb25

    const v2, 0xea83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb29

    const v2, 0xe558

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2d

    const v2, 0xe559

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2a

    const v2, 0xe54e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb47

    const v2, 0xe533

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82c

    const v2, 0xeb84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82e

    const v2, 0xe522

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82f

    const v2, 0xe523

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe830

    const v2, 0xe524

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe831

    const v2, 0xe525

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe832

    const v2, 0xe526

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe833

    const v2, 0xe527

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe834

    const v2, 0xe528

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe835

    const v2, 0xe529

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe836

    const v2, 0xe52a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe837

    const v2, 0xe5ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83b

    const v2, 0xe52b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe838

    const v2, 0xea84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe839

    const v2, 0xea90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83a

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe960

    const v2, 0xe4d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe961

    const v2, 0xe4d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe962

    const v2, 0xe4d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe963

    const v2, 0xe5b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe964

    const v2, 0xeaaf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe965

    const v2, 0xe4d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe966

    const v2, 0xeab0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe967

    const v2, 0xeab1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe968

    const v2, 0xeab2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe969

    const v2, 0xeab3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96a

    const v2, 0xeab4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96b

    const v2, 0xeab5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96c

    const v2, 0xeab6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96d

    const v2, 0xeab7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96e

    const v2, 0xeab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe96f

    const v2, 0xeabd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe970

    const v2, 0xeabe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe971

    const v2, 0xeaea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe972

    const v2, 0xe4c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe973

    const v2, 0xe4ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe974

    const v2, 0xeb3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe975

    const v2, 0xeb3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe976

    const v2, 0xeb3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe977

    const v2, 0xeb4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe978

    const v2, 0xeb4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe979

    const v2, 0xeb4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97a

    const v2, 0xeb4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97b

    const v2, 0xeb4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97c

    const v2, 0xeb4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97d

    const v2, 0xeb56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97e

    const v2, 0xeb59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe97f

    const v2, 0xeb70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe980

    const v2, 0xe4ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe981

    const v2, 0xe597

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe982

    const v2, 0xe4c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe983

    const v2, 0xe4c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe984

    const v2, 0xeaae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe985

    const v2, 0xea97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe986

    const v2, 0xe4c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe987

    const v2, 0xea98

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe988

    const v2, 0xeb3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf0

    const v2, 0xe555

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf1

    const v2, 0xe54d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf2

    const v2, 0xe54c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf3

    const v2, 0xe556

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf4

    const v2, 0xeb2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf5

    const v2, 0xeb2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf6

    const v2, 0xeb7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf7

    const v2, 0xeb7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf8

    const v2, 0xe53f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaf9

    const v2, 0xe540

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafa

    const v2, 0xe552

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafb

    const v2, 0xe553

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafc

    const v2, 0xe52e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafd

    const v2, 0xe52d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeafe

    const v2, 0xe530

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeaff

    const v2, 0xe52f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb03

    const v2, 0xe545

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb02

    const v2, 0xe544

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb78

    const v2, 0xe55a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb79

    const v2, 0xe55b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb01

    const v2, 0xe543

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb00

    const v2, 0xe542

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb44

    const v2, 0xeaad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb45

    const v2, 0xe550

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb46

    const v2, 0xe551

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb04

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb05

    const v2, 0xeb2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb06

    const v2, 0xeb30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb09

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0a

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0b

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb08

    const v2, 0xeb31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0c

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0d

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0e

    const v2, 0xe477

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb0f

    const v2, 0xe478

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb10

    const v2, 0xeaa6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb11

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb12

    const v2, 0xe4ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb13

    const v2, 0xeaa7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb14

    const v2, 0xeaa8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb15

    const v2, 0xeaa9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb16

    const v2, 0xeaaa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb17

    const v2, 0xeb54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb18

    const v2, 0xe5af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb19

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1a

    const v2, 0xeaa5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1b

    const v2, 0xe5a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1c

    const v2, 0xe5a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1d

    const v2, 0xe5a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1e

    const v2, 0xe47d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb1f

    const v2, 0xe47e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb20

    const v2, 0xe47f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb22

    const v2, 0xeb2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb23

    const v2, 0xe481

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb26

    const v2, 0xe484

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2c

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7eb

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe7f0

    const v2, 0xeb72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe505

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe506

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe507

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe508

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb35

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb48

    const v2, 0xe541

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb49

    const v2, 0xe557

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb84

    const v2, 0xe5ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb38

    const v2, 0xea85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb21

    const v2, 0xe578

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb81

    const v2, 0xea88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb36

    const v2, 0xe5b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb27

    const v2, 0xe5ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4f

    const v2, 0xe4e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb37

    const v2, 0xe50f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb32

    const v2, 0xe5d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3f

    const v2, 0xea87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2f

    const v2, 0xea8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb31

    const v2, 0xea89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3e

    const v2, 0xea86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb40

    const v2, 0xea8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb41

    const v2, 0xea8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb2b

    const v2, 0xe4f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb43

    const v2, 0xea99

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb3d

    const v2, 0xe4f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb50

    const v2, 0xeb01

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb51

    const v2, 0xe53c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb52

    const v2, 0xe53d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb53

    const v2, 0xe54f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb54

    const v2, 0xe554

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb56

    const v2, 0xe476

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb57

    const v2, 0xe4e5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb58

    const v2, 0xe47a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb59

    const v2, 0xe475

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5a

    const v2, 0xe5b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5b

    const v2, 0xe5b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5c

    const v2, 0xe4e6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5d

    const v2, 0xe4f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f4

    const v2, 0xe4f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5e

    const v2, 0xe4e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb5f

    const v2, 0xeb5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe532

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb60

    const v2, 0xeaab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb61

    const v2, 0xe479

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb62

    const v2, 0xe53e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb65

    const v2, 0xe53a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb66

    const v2, 0xe53b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb63

    const v2, 0xe54a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb64

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb64

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb67

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb68

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6b

    const v2, 0xe548

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6c

    const v2, 0xe549

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6d

    const v2, 0xe531

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6e

    const v2, 0xe532

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb6f

    const v2, 0xe534

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb70

    const v2, 0xe535

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb71

    const v2, 0xe538

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb72

    const v2, 0xe539

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb73

    const v2, 0xe546

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb74

    const v2, 0xe547

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb75

    const v2, 0xe536

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb76    # 1.462E-39f

    const v2, 0xe537

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb77

    const v2, 0xe46c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7a

    const v2, 0xe4f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb7b

    const v2, 0xe4f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb83

    const v2, 0xe55d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb88

    const v2, 0xe55c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb91

    const v2, 0xeb0d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fc

    const v2, 0xe584

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4fe

    const v2, 0xe589

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb85

    const v2, 0xe518

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8d

    const v2, 0xeb05

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb86

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb87

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb90

    const v2, 0xeb0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8a

    const v2, 0xeafc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb82

    const v2, 0xe519

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe4f2

    const v2, 0xe512

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8b

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8c

    const v2, 0xeb04

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8f

    const v2, 0xeb07

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4b

    const v2, 0xe58a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb8e

    const v2, 0xeb06

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4c

    const v2, 0xe58c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4d

    const v2, 0xe58d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4e

    const v2, 0xe58e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb4a

    const v2, 0xe55e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb93

    const v2, 0xeb83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb95

    const v2, 0xe5a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb94

    const v2, 0xe5a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb96

    const v2, 0xe4f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb97

    const v2, 0xe4f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb98

    const v2, 0xe4f6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb99

    const v2, 0xea8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9a

    const v2, 0xea8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9b

    const v2, 0xe4ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9c

    const v2, 0xe500

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9d

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9e

    const v2, 0xead3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb9f

    const v2, 0xead4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeba0

    const v2, 0xead5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeba1

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee1c

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee33

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee40    # 1.463E-39f

    const v2, 0xe577

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee41

    const v2, 0xe5b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee42

    const v2, 0xea9d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee43

    const v2, 0xeb74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee44

    const v2, 0xeb81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee45

    const v2, 0xeb89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee46

    const v2, 0xeb8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee47

    const v2, 0xeb8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee48

    const v2, 0xeb8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee49

    const v2, 0xeb8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfee4a

    const v2, 0xeb8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfeb89

    const v2, 0xeafb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe83c

    const v2, 0xe586

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0xfe82d

    const v2, 0xe52c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2600

    const v2, 0xe488

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2601

    const v2, 0xe48d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2614

    const v2, 0xe48c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c4

    const v2, 0xe485

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a1

    const v2, 0xe487

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f300

    const v2, 0xe469

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f301

    const v2, 0xe598

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f302

    const v2, 0xeae8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f303

    const v2, 0xeaf1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f304

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f305

    const v2, 0xeaf4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f306

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f307

    const v2, 0xe5da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f308

    const v2, 0xeaf2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2744

    const v2, 0xe48a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c5

    const v2, 0xe48e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f309

    const v2, 0xe4bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30a

    const v2, 0xeb7c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30b

    const v2, 0xeb53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30c

    const v2, 0xeb5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30f

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f311

    const v2, 0xe5a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f314

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f313

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f319

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31b

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31f

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f320

    const v2, 0xe468

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f550

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f551

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f552

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f553

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f554

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f555

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f556

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f557

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f558

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f559

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x231a

    const v2, 0xe57a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x231b

    const v2, 0xe57b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f3

    const v2, 0xe47c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2648

    const v2, 0xe48f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2649

    const v2, 0xe490

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264a

    const v2, 0xe491

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264b

    const v2, 0xe492

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264c

    const v2, 0xe493

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264d

    const v2, 0xe494

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264e

    const v2, 0xe495    # 8.2E-41f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x264f

    const v2, 0xe496

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2650

    const v2, 0xe497

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2651

    const v2, 0xe498

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2652

    const v2, 0xe499

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2653

    const v2, 0xe49a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ce

    const v2, 0xe49b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f340

    const v2, 0xe513

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f337

    const v2, 0xe4e4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f331

    const v2, 0xeb7d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f341

    const v2, 0xe4ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f338

    const v2, 0xe4ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f339

    const v2, 0xe5ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f342

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f343

    const v2, 0xe5cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33a

    const v2, 0xea94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33b

    const v2, 0xe4e3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f334

    const v2, 0xe4e2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f335

    const v2, 0xea96

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33d

    const v2, 0xeb36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f344

    const v2, 0xeb37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f330

    const v2, 0xeb38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33c

    const v2, 0xeb49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f33f

    const v2, 0xeb82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f352

    const v2, 0xe4d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34c

    const v2, 0xeb35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34e

    const v2, 0xeab9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34a

    const v2, 0xeaba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f353

    const v2, 0xe4d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f349

    const v2, 0xe4cd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f345

    const v2, 0xeabb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f346

    const v2, 0xeabc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f348

    const v2, 0xeb32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34d

    const v2, 0xeb33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f347

    const v2, 0xeb34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f351

    const v2, 0xeb39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f34f

    const v2, 0xeb5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f440

    const v2, 0xe5a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f442

    const v2, 0xe5a5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f443

    const v2, 0xead0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f444

    const v2, 0xead1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f445

    const v2, 0xeb47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f484

    const v2, 0xe509

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f485

    const v2, 0xeaa0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f486

    const v2, 0xe50b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f487

    const v2, 0xeaa1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f488

    const v2, 0xeaa2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f466

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f467

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f468

    const v2, 0xe4fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f469

    const v2, 0xe4fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46a

    const v2, 0xe501

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46b

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46e

    const v2, 0xe5dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f46f

    const v2, 0xeadb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f470

    const v2, 0xeae9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f471

    const v2, 0xeb13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f472

    const v2, 0xeb14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f473

    const v2, 0xeb15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f474

    const v2, 0xeb16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f475

    const v2, 0xeb17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f476

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f477

    const v2, 0xeb19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f478

    const v2, 0xeb1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f479

    const v2, 0xeb44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47a

    const v2, 0xeb45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47b

    const v2, 0xe4cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47c

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47d

    const v2, 0xe50e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47e

    const v2, 0xe4ec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f47f

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f480

    const v2, 0xe4f8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f483

    const v2, 0xeb1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40c

    const v2, 0xeb7e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40d

    const v2, 0xeb22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40e

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f414

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f417

    const v2, 0xeb24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42b

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f418

    const v2, 0xeb1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f428

    const v2, 0xeb20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f412

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f419

    const v2, 0xe5c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41a

    const v2, 0xeaec

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41b

    const v2, 0xeb1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41c

    const v2, 0xe4dd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41d

    const v2, 0xeb57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41e

    const v2, 0xeb58

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f420

    const v2, 0xeb1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f421

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f422

    const v2, 0xe5d4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f424

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f425

    const v2, 0xeb76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f426

    const v2, 0xe4e0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f423

    const v2, 0xe5db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f427

    const v2, 0xe4dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f429

    const v2, 0xe4df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f41f

    const v2, 0xe4d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42c

    const v2, 0xeb1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42d

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42f

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f431

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f433

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f434

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f435

    const v2, 0xe4d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f436

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f437

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43b

    const v2, 0xe5c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43a

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42e

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f430

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f438

    const v2, 0xe4da

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43e

    const v2, 0xe4ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f432

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43c

    const v2, 0xeb46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f43d

    const v2, 0xeb48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f620

    const v2, 0xe472

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f629

    const v2, 0xeb67

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f632

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61e

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f635

    const v2, 0xe5ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f630

    const v2, 0xeacb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f612

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60d

    const v2, 0xe5c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f624

    const v2, 0xeac1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61c

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61d

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60b

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f618

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61a

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f637

    const v2, 0xeac7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f633

    const v2, 0xeac8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f603

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f605

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f606

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f601

    const v2, 0xeb80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f602

    const v2, 0xeb64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60a

    const v2, 0xeacd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x263a

    const v2, 0xe4fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f604

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f622

    const v2, 0xeb69

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62d

    const v2, 0xe473

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f628

    const v2, 0xeac6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f623

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f621

    const v2, 0xeb5d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60c

    const v2, 0xeac5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f616

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f614

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f631

    const v2, 0xe5c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62a

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f60f

    const v2, 0xeabf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f613

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f625

    const v2, 0xe5c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62b

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f609

    const v2, 0xe5c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63a

    const v2, 0xeb61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f638

    const v2, 0xeb7f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f639

    const v2, 0xeb63

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63d

    const v2, 0xeb60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63b

    const v2, 0xeb65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63f

    const v2, 0xeb68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63e

    const v2, 0xeb5e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f63c

    const v2, 0xeb6a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f640

    const v2, 0xeb66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f645

    const v2, 0xead7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f646

    const v2, 0xead8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f647

    const v2, 0xead9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f648

    const v2, 0xeb50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64a

    const v2, 0xeb51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f649

    const v2, 0xeb52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64b

    const v2, 0xeb85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64c

    const v2, 0xeb86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64d

    const v2, 0xeb87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64e

    const v2, 0xeb88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f64f

    const v2, 0xead2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e0

    const v2, 0xe4ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e1

    const v2, 0xeb09

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e2

    const v2, 0xe4ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e3

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e5

    const v2, 0xe5df

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e6

    const v2, 0xe4aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e7

    const v2, 0xe4a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e8

    const v2, 0xea81

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e9

    const v2, 0xeaf3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ea

    const v2, 0xe4a4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3eb

    const v2, 0xea80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ea

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f2

    const v2, 0xe5cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ec

    const v2, 0xeaf6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ef

    const v2, 0xeaf7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3f0

    const v2, 0xeaf8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ed

    const v2, 0xeaf9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2693

    const v2, 0xe4a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ee

    const v2, 0xe4bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fb

    const v2, 0xe5bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fc

    const v2, 0xe4c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5fe

    const v2, 0xe572

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f5ff

    const v2, 0xeb6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45e

    const v2, 0xe5b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45f

    const v2, 0xeb2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f460

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f461

    const v2, 0xe51a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f462

    const v2, 0xea9f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f463

    const v2, 0xeb2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f453

    const v2, 0xe4fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f455

    const v2, 0xe5b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f456

    const v2, 0xeb77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f451

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f454

    const v2, 0xea93

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f452

    const v2, 0xea9e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f457

    const v2, 0xeb6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f458

    const v2, 0xeaa3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f459

    const v2, 0xeaa4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45a

    const v2, 0xe50d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45b

    const v2, 0xe504

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f45c

    const v2, 0xe49c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b0

    const v2, 0xe4c7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b9

    const v2, 0xe5dc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b2

    const v2, 0xe579

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b3

    const v2, 0xe57c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b4

    const v2, 0xe57d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b5

    const v2, 0xe585

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4b8

    const v2, 0xeb5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f525

    const v2, 0xe47b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f526

    const v2, 0xe583

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f527

    const v2, 0xe587

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f528

    const v2, 0xe5cb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f529

    const v2, 0xe581

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52a

    const v2, 0xe57f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52b

    const v2, 0xe50a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52e

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f52f

    const v2, 0xea8f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f530

    const v2, 0xe480

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f531

    const v2, 0xe5c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f489

    const v2, 0xe510

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48a

    const v2, 0xea9a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f170

    const v2, 0xeb26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f171

    const v2, 0xeb27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f18e

    const v2, 0xeb29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f17e

    const v2, 0xeb28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f380

    const v2, 0xe59f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f381

    const v2, 0xe4cf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f382

    const v2, 0xe5a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f384

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f385

    const v2, 0xeaf0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38c

    const v2, 0xe5d9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f386

    const v2, 0xe5cc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f388

    const v2, 0xea9b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f389

    const v2, 0xea9c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38d

    const v2, 0xeae3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38e

    const v2, 0xeae4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f393

    const v2, 0xeae5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f392

    const v2, 0xeae6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38f

    const v2, 0xeae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f387

    const v2, 0xeaeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f390

    const v2, 0xeaed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f383

    const v2, 0xeaee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38a

    const v2, 0xe46f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f38b

    const v2, 0xeb3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f391

    const v2, 0xeaef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4df

    const v2, 0xe59b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x260e

    const v2, 0xe596

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4de

    const v2, 0xe51e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f1

    const v2, 0xe588

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f2

    const v2, 0xeb08

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4dd

    const v2, 0xea92

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e0

    const v2, 0xe520

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2709

    const v2, 0xe521

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e8

    const v2, 0xe591

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e9

    const v2, 0xeb62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ea

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4eb

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ee

    const v2, 0xe51b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f0

    const v2, 0xe58b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e2

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e3

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e1

    const v2, 0xe4a8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e4

    const v2, 0xe592

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e5

    const v2, 0xe593

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e6

    const v2, 0xe51f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4e7

    const v2, 0xeb71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f520

    const v2, 0xeafd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f521

    const v2, 0xeafe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f522

    const v2, 0xeaff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f523

    const v2, 0xeb00

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f524

    const v2, 0xeb55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2712

    const v2, 0xeb03

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bb

    const v2, 0xe5b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270f

    const v2, 0xe4a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ce

    const v2, 0xe4a0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bc

    const v2, 0xe5ce

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bd

    const v2, 0xe582

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4be

    const v2, 0xe562

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4bf

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c0

    const v2, 0xe50c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2702

    const v2, 0xe516

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cd

    const v2, 0xe560

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c3

    const v2, 0xe561

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c4

    const v2, 0xe569

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c5

    const v2, 0xe563

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c1

    const v2, 0xe58f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c2

    const v2, 0xe590

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d3

    const v2, 0xe56b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d6

    const v2, 0xe49f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d4

    const v2, 0xe49d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d5

    const v2, 0xe568

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d7

    const v2, 0xe565

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d8

    const v2, 0xe566

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d9

    const v2, 0xe567

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4da

    const v2, 0xe56f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4db

    const v2, 0xe51d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4dc

    const v2, 0xe55f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cb

    const v2, 0xe564

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c6

    const v2, 0xe56a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ca

    const v2, 0xe574

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c8

    const v2, 0xe575

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c9

    const v2, 0xe576

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4c7

    const v2, 0xe56c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cc

    const v2, 0xe56d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d2

    const v2, 0xe56e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4cf

    const v2, 0xe570

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d0

    const v2, 0xe4a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4d1

    const v2, 0xeb0b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26be

    const v2, 0xe4ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f3

    const v2, 0xe599

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3be

    const v2, 0xe4b7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26bd

    const v2, 0xe4b6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bf

    const v2, 0xeaac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c0

    const v2, 0xe59a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c1

    const v2, 0xe4b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c2

    const v2, 0xe4b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c3

    const v2, 0xe46b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c4

    const v2, 0xeb41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c6

    const v2, 0xe5d3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c8

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ca

    const v2, 0xeade

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f683

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f687

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x24c2

    const v2, 0xe5bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f684

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f685

    const v2, 0xe4b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f697

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f699

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68c

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68f

    const v2, 0xe4a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a2

    const v2, 0xea82

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2708

    const v2, 0xe4b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f5

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f689

    const v2, 0xeb6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f680

    const v2, 0xe5c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a4

    const v2, 0xe4b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f695

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69a

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f692

    const v2, 0xeadf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f691

    const v2, 0xeae0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f693

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fd

    const v2, 0xe571

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f17f

    const v2, 0xe4a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a5

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a7

    const v2, 0xe5d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a8

    const v2, 0xeb73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2668

    const v2, 0xe4bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fa

    const v2, 0xe5d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a1

    const v2, 0xe46d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a2

    const v2, 0xeae2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a3

    const v2, 0xeb42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a4

    const v2, 0xe503

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a5

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a6

    const v2, 0xe517

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a7

    const v2, 0xe508

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a8

    const v2, 0xe59c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3a9

    const v2, 0xeaf5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3aa

    const v2, 0xe59e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ab

    const v2, 0xe49e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ac

    const v2, 0xe4be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ad

    const v2, 0xe59d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ae

    const v2, 0xe4c6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f004

    const v2, 0xe5d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3af

    const v2, 0xe4c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b0

    const v2, 0xe46e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b1

    const v2, 0xeadd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b2

    const v2, 0xe4c8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b3

    const v2, 0xeb43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b4

    const v2, 0xeb6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f0cf

    const v2, 0xeb6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b5

    const v2, 0xe5be

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b6

    const v2, 0xe505

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b8

    const v2, 0xe506

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3b9

    const v2, 0xeb40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3ba

    const v2, 0xeadc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bb

    const v2, 0xe507

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3bc

    const v2, 0xeacc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f7

    const v2, 0xe515

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f9

    const v2, 0xe57e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fa

    const v2, 0xe502

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fb

    const v2, 0xe5b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4fc

    const v2, 0xe580

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48b

    const v2, 0xe4eb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48c

    const v2, 0xeb78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48d

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48e

    const v2, 0xe514

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f48f

    const v2, 0xe5ca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f490

    const v2, 0xea95

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f491

    const v2, 0xeada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f492

    const v2, 0xe5bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f51e

    const v2, 0xea83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0xa9

    const v2, 0xe558

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0xae

    const v2, 0xe559

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2122

    const v2, 0xe54e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2139

    const v2, 0xe533

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f51f

    const v2, 0xe52b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f6

    const v2, 0xea84

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f3

    const v2, 0xea90

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f4

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f354

    const v2, 0xe4d6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f359

    const v2, 0xe4d5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f370

    const v2, 0xe4d0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35c

    const v2, 0xe5b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35e

    const v2, 0xeaaf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f373

    const v2, 0xe4d1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f366

    const v2, 0xeab0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35f

    const v2, 0xeab1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f361

    const v2, 0xeab2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f358

    const v2, 0xeab3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35a

    const v2, 0xeab4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35d

    const v2, 0xeab5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f35b

    const v2, 0xeab6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f362

    const v2, 0xeab7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f363

    const v2, 0xeab8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f371

    const v2, 0xeabd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f372

    const v2, 0xeabe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f367

    const v2, 0xeaea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f356

    const v2, 0xe4c4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f365

    const v2, 0xe4ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f360

    const v2, 0xeb3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f355

    const v2, 0xeb3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f357

    const v2, 0xeb3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f368

    const v2, 0xeb4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f369

    const v2, 0xeb4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36a

    const v2, 0xeb4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36b

    const v2, 0xeb4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36c

    const v2, 0xeb4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36d

    const v2, 0xeb4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36e

    const v2, 0xeb56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f36f

    const v2, 0xeb59

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f364

    const v2, 0xeb70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f374

    const v2, 0xe4ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2615

    const v2, 0xe597

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f378

    const v2, 0xe4c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f37a

    const v2, 0xe4c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f375

    const v2, 0xeaae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f376

    const v2, 0xea97

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f377

    const v2, 0xe4c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f37b

    const v2, 0xea98

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f379

    const v2, 0xeb3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2197

    const v2, 0xe555

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2198

    const v2, 0xe54d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2196

    const v2, 0xe54c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2199

    const v2, 0xe556

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2934

    const v2, 0xeb2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2935

    const v2, 0xeb2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2194

    const v2, 0xeb7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2195

    const v2, 0xeb7b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b06

    const v2, 0xe53f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b07

    const v2, 0xe540

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x27a1

    const v2, 0xe552

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b05

    const v2, 0xe553

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25b6

    const v2, 0xe52e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25c0

    const v2, 0xe52d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23e9

    const v2, 0xe530

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ea

    const v2, 0xe52f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23eb

    const v2, 0xe545

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ec

    const v2, 0xe544

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53a

    const v2, 0xe55a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53b

    const v2, 0xe55b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53c

    const v2, 0xe543

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f53d

    const v2, 0xe542

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b55

    const v2, 0xeaad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x274c

    const v2, 0xe550

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x274e

    const v2, 0xe551

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2757

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2049

    const v2, 0xeb2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x203c

    const v2, 0xeb30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2753

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2754

    const v2, 0xe483

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2755

    const v2, 0xe482

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x27b0

    const v2, 0xeb31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2764

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f493

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f494

    const v2, 0xe477

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f495

    const v2, 0xe478

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f496

    const v2, 0xeaa6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f497

    const v2, 0xeb75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f498

    const v2, 0xe4ea

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f499

    const v2, 0xeaa7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49a

    const v2, 0xeaa8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49b

    const v2, 0xeaa9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49c

    const v2, 0xeaaa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49d

    const v2, 0xeb54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49e

    const v2, 0xe5af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f49f

    const v2, 0xe595

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2665

    const v2, 0xeaa5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2660

    const v2, 0xe5a1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2666

    const v2, 0xe5a2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2663

    const v2, 0xe5a3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ac

    const v2, 0xe47d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ad

    const v2, 0xe47e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x267f

    const v2, 0xe47f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a9

    const v2, 0xeb2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a0

    const v2, 0xe481

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26d4

    const v2, 0xe484

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x267b

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b2

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b6

    const v2, 0xeb72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6c0

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6be

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bc

    const v2, 0xeb18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6ab

    const v2, 0xe541

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2714

    const v2, 0xe557

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f191

    const v2, 0xe5ab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f192

    const v2, 0xea85

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f193

    const v2, 0xe578

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f194

    const v2, 0xea88

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f195

    const v2, 0xe5b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f197

    const v2, 0xe5ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f198

    const v2, 0xe4e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f199

    const v2, 0xe50f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f19a

    const v2, 0xe5d2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f202

    const v2, 0xea87

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f233

    const v2, 0xea8a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f235

    const v2, 0xea89

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f239

    const v2, 0xea86

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f22f

    const v2, 0xea8b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f23a

    const v2, 0xea8c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x3299

    const v2, 0xe4f1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x3297

    const v2, 0xea99

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f250

    const v2, 0xe4f7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f251

    const v2, 0xeb01

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2795

    const v2, 0xe53c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2796

    const v2, 0xe53d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2716

    const v2, 0xe54f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2797

    const v2, 0xe554

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a1

    const v2, 0xe476

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a2

    const v2, 0xe4e5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a3

    const v2, 0xe47a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a4

    const v2, 0xe475

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a5

    const v2, 0xe5b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a6

    const v2, 0xe5b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a7

    const v2, 0xe4e6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a8

    const v2, 0xe4f4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4a9

    const v2, 0xe4f5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4aa

    const v2, 0xe4e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ab

    const v2, 0xeb5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ac

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2728

    const v2, 0xeaab

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2734

    const v2, 0xe479

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2733

    const v2, 0xe53e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26aa

    const v2, 0xe53a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ab

    const v2, 0xe53b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f534

    const v2, 0xe54a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f535

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f532

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f533

    const v2, 0xe54b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b50

    const v2, 0xe48b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1c

    const v2, 0xe548

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1b

    const v2, 0xe549

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25ab

    const v2, 0xe531

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25aa

    const v2, 0xe532

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fd

    const v2, 0xe534

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fe

    const v2, 0xe535

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fb

    const v2, 0xe538

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fc

    const v2, 0xe539

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f536

    const v2, 0xe546

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f537

    const v2, 0xe547

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f538

    const v2, 0xe536

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f539

    const v2, 0xe537

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2747

    const v2, 0xe46c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ae

    const v2, 0xe4f0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4af

    const v2, 0xe4f2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x21a9

    const v2, 0xe55d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x21aa

    const v2, 0xe55c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f503

    const v2, 0xeb0d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50a

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50b

    const v2, 0xe584

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50c

    const v2, 0xe589

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50d

    const v2, 0xe518

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50e

    const v2, 0xeb05

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f512

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f513

    const v2, 0xe51c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f50f

    const v2, 0xeb0c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f510

    const v2, 0xeafc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f511

    const v2, 0xe519

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f514

    const v2, 0xe512

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2611

    const v2, 0xeb02

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f518

    const v2, 0xeb04

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f516

    const v2, 0xeb07

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f517

    const v2, 0xe58a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f519

    const v2, 0xeb06

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2001

    const v2, 0xe58c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2000

    const v2, 0xe58d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2005

    const v2, 0xe58e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x2705

    const v2, 0xe55e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270a

    const v2, 0xeb83

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270b

    const v2, 0xe5a7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x270c

    const v2, 0xe5a6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44a

    const v2, 0xe4f3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44d

    const v2, 0xe4f9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/16 v1, 0x261d

    const v2, 0xe4f6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f446

    const v2, 0xea8d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f447

    const v2, 0xea8e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f448

    const v2, 0xe4ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f449

    const v2, 0xe500

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44b

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44f

    const v2, 0xead3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44c

    const v2, 0xead4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f44e

    const v2, 0xead5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f450

    const v2, 0xead6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f600

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f617

    const v2, 0xeacf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f619

    const v2, 0xeace

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61b

    const v2, 0xe4e7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f634

    const v2, 0xeac4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f61f

    const v2, 0xeac2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f626

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f627

    const v2, 0xe474

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f608

    const v2, 0xe4ef

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62e

    const v2, 0xeaca

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62c

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f615

    const v2, 0xeac3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f62f

    const v2, 0xeac0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f607

    const v2, 0xe5bf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f611

    const v2, 0xeac9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ad

    const v2, 0xe4fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f40b

    const v2, 0xe470

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f404

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f400

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f403

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f405

    const v2, 0xe5c0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f407

    const v2, 0xe4d7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f409

    const v2, 0xeb3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f413

    const v2, 0xeb23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f415

    const v2, 0xe4e1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f416

    const v2, 0xe4de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f401

    const v2, 0xe5c2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f402

    const v2, 0xeb21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f42a

    const v2, 0xeb25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f408

    const v2, 0xe4db

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f332

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f333

    const v2, 0xe4c9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f312

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f316

    const v2, 0xe5a9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f317

    const v2, 0xe5aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f318

    const v2, 0xe486

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f31c

    const v2, 0xe489

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30d

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f30e

    const v2, 0xe5b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f509

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6c1

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6bf

    const v2, 0xe5d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ec

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4ed

    const v2, 0xeb0a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c9

    const v2, 0xe4bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b5

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6b4

    const v2, 0xe4ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3c7

    const v2, 0xe4d8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f3e4

    const v2, 0xe5de

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f682

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68e

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f688

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68d

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f698

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69b

    const v2, 0xe4b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f694

    const v2, 0xeae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f690

    const v2, 0xe4af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f69e

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f6a6

    const v2, 0xe46a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f501

    const v2, 0xeb79

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f4f5

    const v2, 0xea91

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f567

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f55f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f560

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f561

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f562

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f563

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f564

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f565

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f566

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f508

    const v2, 0xe511

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f686

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const v1, 0x1f68b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kddiEmojiToKddiUcs2(I)I
    .locals 3
    .param p0, "c"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "unicode":I
    return v0
.end method

.method public static kddiUcs2ToKddiEmoji(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sKddiEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static kddiUcs2ToStandardEmoji(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, -0x1

    .local v1, "unicode":I
    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static standardEmojiToKddiUcs2(I)I
    .locals 3
    .param p0, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v1, Lcom/android/internal/telephony/KddiEmojiAlphabet;->sStandardEmojiToKddiUcs2:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "unicode":I
    return v0
.end method
