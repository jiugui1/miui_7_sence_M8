.class public Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;
.super Ljava/lang/Object;
.source "HtcCdmaDataErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataErrorRecord"
.end annotation


# static fields
.field public static EHRPD:I

.field public static LTE_EMM:I

.field public static LTE_ESM:I

.field public static MIP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 84
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_ESM:I

    .line 85
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_EMM:I

    .line 86
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->EHRPD:I

    .line 87
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->MIP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearError()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 94
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_ESM:I

    .line 95
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_EMM:I

    .line 96
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->EHRPD:I

    .line 97
    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->MIP:I

    .line 98
    return-void
.end method

.method public static convertToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_ESM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_EMM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->EHRPD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->MIP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasError()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 90
    sget v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_ESM:I

    if-gt v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->LTE_EMM:I

    if-gt v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->EHRPD:I

    if-gt v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/cdma/HtcCdmaDataErrorReporter$DataErrorRecord;->MIP:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
