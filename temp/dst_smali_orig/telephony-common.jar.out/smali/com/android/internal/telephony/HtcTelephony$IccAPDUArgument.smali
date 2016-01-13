.class final Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
.super Ljava/lang/Object;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IccAPDUArgument"
.end annotation


# instance fields
.field public channel:I

.field public cla:I

.field public command:I

.field public data:Ljava/lang/String;

.field public p1:I

.field public p2:I

.field public p3:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->channel:I

    iput p1, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->cla:I

    iput p2, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->command:I

    iput p4, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p1:I

    iput p5, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p2:I

    iput p6, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p3:I

    iput-object p7, p0, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->data:Ljava/lang/String;

    return-void
.end method
