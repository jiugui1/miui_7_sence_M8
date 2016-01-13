.class final Lcom/htc/utils/ulog/io/LogStream$CipherStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/io/LogStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStream"
.end annotation


# static fields
.field private static iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->iv:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateCipher(Ljavax/crypto/spec/SecretKeySpec;II)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "aeskeySpec"    # Ljavax/crypto/spec/SecretKeySpec;
    .param p1, "mode"    # I
    .param p2, "versionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "aesCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v2, "AES/CBC/PKCS5Padding"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public static getCipherInputStream(Ljava/io/InputStream;[BI)Ljavax/crypto/CipherInputStream;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "seed"    # [B
    .param p2, "versionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    invoke-static {p1, p2}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getRawKey([BI)[B

    move-result-object v1

    .local v1, "aesKey":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v2, "aeskeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x2

    invoke-static {v2, v3, p2}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->generateCipher(Ljavax/crypto/spec/SecretKeySpec;II)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "aesCipher":Ljavax/crypto/Cipher;
    if-eqz v0, :cond_0

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCipherOutputStream(Ljava/io/OutputStream;[BI)Ljavax/crypto/CipherOutputStream;
    .locals 4
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "seed"    # [B
    .param p2, "versionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    invoke-static {p1, p2}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getRawKey([BI)[B

    move-result-object v1

    .local v1, "aesKey":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v2, "aeskeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    invoke-static {v2, v3, p2}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->generateCipher(Ljavax/crypto/spec/SecretKeySpec;II)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, "aesCipher":Ljavax/crypto/Cipher;
    if-eqz v0, :cond_0

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getRawKey([BI)[B
    .locals 9
    .param p0, "seed"    # [B
    .param p1, "versionCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "raw":[B
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .local v2, "kgen":Ljavax/crypto/KeyGenerator;
    const-string v6, "SHA1PRNG"

    const-string v7, "Crypto"

    invoke-static {v6, v7}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v5

    .local v5, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v5, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v6, 0x80

    invoke-virtual {v2, v6, v5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .local v4, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .end local v2    # "kgen":Ljavax/crypto/KeyGenerator;
    .end local v4    # "skey":Ljavax/crypto/SecretKey;
    .end local v5    # "sr":Ljava/security/SecureRandom;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const/4 v0, 0x0

    .local v0, "bundle":Landroid/os/Bundle;
    # getter for: Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    invoke-static {}, Lcom/htc/utils/ulog/io/LogStream;->access$000()Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_2
    # invokes: Lcom/htc/utils/ulog/io/LogStream;->init()V
    invoke-static {}, Lcom/htc/utils/ulog/io/LogStream;->access$100()V

    :try_start_0
    # getter for: Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    invoke-static {}, Lcom/htc/utils/ulog/io/LogStream;->access$000()Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v6

    if-eqz v6, :cond_3

    # getter for: Lcom/htc/utils/ulog/io/LogStream;->sUserBehaviorLoggingService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;
    invoke-static {}, Lcom/htc/utils/ulog/io/LogStream;->access$000()Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->getSecurityProperties()Landroid/os/Bundle;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    const-string v6, "ubls_secret_key"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v6, "ubls_initialization_vector"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    sput-object v6, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->iv:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "LogStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get secret key from UBLS failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
