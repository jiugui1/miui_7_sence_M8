.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field mBufSize:I

.field mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mDestinationAddress:[B

.field mItl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

.field mNetworkAccessName:Ljava/lang/String;

.field mUserLogin:Ljava/lang/String;

.field mUserPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILcom/android/internal/telephony/cat/InterfaceTransportLevel;[BLcom/android/internal/telephony/cat/BearerDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "confirmMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "bufSize"    # I
    .param p4, "itl"    # Lcom/android/internal/telephony/cat/InterfaceTransportLevel;
    .param p5, "destinationAddress"    # [B
    .param p6, "bearerDescription"    # Lcom/android/internal/telephony/cat/BearerDescription;
    .param p7, "networkAccessName"    # Ljava/lang/String;
    .param p8, "userLogin"    # Ljava/lang/String;
    .param p9, "userPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 196
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufSize:I

    .line 198
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mItl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 199
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDestinationAddress:[B

    .line 200
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 201
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    .line 202
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUserLogin:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUserPassword:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 211
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufSize:I

    .line 212
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mItl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 213
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDestinationAddress:[B

    .line 214
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 215
    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    .line 216
    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUserLogin:Ljava/lang/String;

    .line 217
    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUserPassword:Ljava/lang/String;

    .line 218
    return-void
.end method
