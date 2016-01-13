.class public Lcom/android/internal/telephony/HtcIfIccCard$State;
.super Ljava/lang/Object;
.source "HtcIfIccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIfIccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
