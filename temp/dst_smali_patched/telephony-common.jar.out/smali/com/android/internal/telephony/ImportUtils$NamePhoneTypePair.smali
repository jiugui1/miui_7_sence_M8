.class Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "ImportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "nameWithPhoneType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "nameLen":I
    add-int/lit8 v2, v1, -0x2

    if-ltz v2, :cond_4

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .local v0, "c":C
    const/16 v2, 0x57

    if-ne v0, v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    :goto_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    .end local v0    # "c":C
    :goto_1
    return-void

    .restart local v0    # "c":C
    :cond_0
    const/16 v2, 0x4d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_2

    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x48

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .end local v0    # "c":C
    :cond_4
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    iput-object p1, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
