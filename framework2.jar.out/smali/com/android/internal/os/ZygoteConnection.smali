.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;

.field private final peerSecurityContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;)V
    .locals 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 90
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 93
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 96
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SELinux;->getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    .line 106
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0
.end method

.method private static applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .param p2, "peerSecurityContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    .line 754
    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 803
    :cond_0
    return-void

    .line 760
    :cond_1
    const-string v4, "zygote"

    const-string v5, "specifycapabilities"

    invoke-static {p2, p2, v4, v5}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 764
    .local v0, "allowed":Z
    if-nez v0, :cond_2

    .line 765
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer may not specify capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 769
    :cond_2
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 788
    .local v2, "permittedCaps":J
    iget-wide v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v4, v10

    iget-wide v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 789
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    .end local v2    # "permittedCaps":J
    :catch_0
    move-exception v1

    .line 779
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Error retrieving peer\'s capabilities."

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 799
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "permittedCaps":J
    :cond_3
    xor-long v4, v2, v10

    iget-wide v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 800
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer specified unpermitted capabilities"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 697
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 700
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .param p2, "peerSecurityContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 823
    .local v1, "peerUid":I
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 824
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 829
    const-string v2, "zygote"

    const-string v3, "specifyinvokewith"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 833
    .local v0, "allowed":Z
    if-nez v0, :cond_1

    .line 834
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    .end local v0    # "allowed":Z
    :cond_1
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    const/16 v3, 0x1f

    .line 881
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "property":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 885
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 887
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 888
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 889
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 893
    .end local v0    # "property":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .param p2, "peerSecurityContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 720
    .local v1, "peerUid":I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 723
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "This UID may not specify rlimits."

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 729
    const-string v2, "zygote"

    const-string v3, "specifyrlimits"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 733
    .local v0, "allowed":Z
    if-nez v0, :cond_1

    .line 734
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer may not specify rlimits"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    .end local v0    # "allowed":Z
    :cond_1
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .param p2, "peerSecurityContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    .line 634
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v2

    .line 636
    .local v2, "peerUid":I
    if-nez v2, :cond_2

    .line 664
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v5, :cond_6

    .line 665
    :cond_1
    const-string v5, "zygote"

    const-string v6, "specifyids"

    invoke-static {p2, p2, v5, v6}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 669
    .local v0, "allowed":Z
    if-nez v0, :cond_6

    .line 670
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "Peer may not specify uid\'s or gid\'s"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    .end local v0    # "allowed":Z
    :cond_2
    if-ne v2, v6, :cond_4

    .line 640
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "factoryTest":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 649
    .local v3, "uidRestricted":Z
    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v5, v6, :cond_0

    .line 651
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "System UID may not launch process with UID < 1000"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 646
    .end local v3    # "uidRestricted":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 657
    .end local v1    # "factoryTest":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v5, :cond_0

    .line 659
    :cond_5
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v5, "App UIDs may not specify uid\'s or gid\'s"

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 676
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v5, :cond_7

    .line 677
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 678
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 680
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v5, :cond_8

    .line 681
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 682
    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 684
    :cond_8
    return-void
.end method

.method private static applyseInfoSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .param p2, "peerSecurityContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 852
    .local v1, "peerUid":I
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 872
    :cond_0
    return-void

    .line 857
    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 859
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "This UID may not specify SEAndroid info."

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 863
    :cond_2
    const-string v2, "zygote"

    const-string v3, "specifyseinfo"

    invoke-static {p2, p2, v2, v3}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 867
    .local v0, "allowed":Z
    if-nez v0, :cond_0

    .line 868
    new-instance v2, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v3, "Peer may not specify SEAndroid info"

    invoke-direct {v2, v3}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 13
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "newStderr"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 914
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 916
    if-eqz p2, :cond_1

    .line 918
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, p2, v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 921
    move-object v1, p2

    .local v1, "arr$":[Ljava/io/FileDescriptor;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v1, v6

    .line 922
    .local v5, "fd":Ljava/io/FileDescriptor;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 921
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 924
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    .end local v1    # "arr$":[Ljava/io/FileDescriptor;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    :goto_1
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 931
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 934
    :cond_2
    iget-boolean v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v9, :cond_4

    .line 935
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 936
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v11, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v12, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v9, v10, v11, v0, v12}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 976
    :goto_2
    return-void

    .line 925
    :catch_0
    move-exception v4

    .line 926
    .local v4, "ex":Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error reopening stdio"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 940
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_3
    iget v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_2

    .line 946
    :cond_4
    :try_start_1
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v9, v10
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    .local v2, "className":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v8, v9, [Ljava/lang/String;

    .line 954
    .local v8, "mainArgs":[Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 957
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 958
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {v9, v10, v2, v8}, Lcom/android/internal/os/WrapperInit;->execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 947
    .end local v2    # "className":Ljava/lang/String;
    .end local v8    # "mainArgs":[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 948
    .local v4, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "Missing required class name argument"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v9, v10}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 962
    .end local v4    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v8    # "mainArgs":[Ljava/lang/String;
    :cond_5
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 963
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 970
    .local v3, "cloader":Ljava/lang/ClassLoader;
    :goto_3
    :try_start_2
    invoke-static {v3, v2, v8}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 971
    :catch_2
    move-exception v4

    .line 972
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v9, "Error starting."

    move-object/from16 v0, p4

    invoke-static {v0, v9, v4}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 966
    .end local v3    # "cloader":Ljava/lang/ClassLoader;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .restart local v3    # "cloader":Ljava/lang/ClassLoader;
    goto :goto_3
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 12
    .param p1, "pid"    # I
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p4, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 993
    if-lez p1, :cond_0

    .line 994
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 997
    :cond_0
    if-eqz p2, :cond_1

    .line 998
    move-object v0, p2

    .local v0, "arr$":[Ljava/io/FileDescriptor;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v0, v3

    .line 999
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 998
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1003
    .end local v0    # "arr$":[Ljava/io/FileDescriptor;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/4 v8, 0x0

    .line 1004
    .local v8, "usingWrapper":Z
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    .line 1005
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1006
    .local v5, "is":Ljava/io/DataInputStream;
    const/4 v4, -0x1

    .line 1008
    .local v4, "innerPid":I
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1013
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1020
    :goto_1
    if-lez v4, :cond_3

    .line 1021
    move v7, v4

    .line 1022
    .local v7, "parentPid":I
    :goto_2
    if-lez v7, :cond_2

    if-eq v7, p1, :cond_2

    .line 1023
    invoke-static {v7}, Landroid/os/Process;->getParentPid(I)I

    move-result v7

    goto :goto_2

    .line 1009
    .end local v7    # "parentPid":I
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v9, "Zygote"

    const-string v10, "Error reading pid from wrapped process, child may have died"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1013
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1014
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v9

    goto :goto_1

    .line 1012
    :catchall_0
    move-exception v9

    .line 1013
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1012
    :goto_3
    throw v9

    .line 1025
    .restart local v7    # "parentPid":I
    :cond_2
    if-lez v7, :cond_4

    .line 1026
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process has pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    move p1, v4

    .line 1028
    const/4 v8, 0x1

    .line 1038
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :cond_3
    :goto_4
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1039
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1045
    const/4 v9, 0x0

    :goto_5
    return v9

    .line 1030
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    .restart local v7    # "parentPid":I
    :cond_4
    const-string v9, "Zygote"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " innerPid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1040
    .end local v4    # "innerPid":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v7    # "parentPid":I
    :catch_2
    move-exception v1

    .line 1041
    .restart local v1    # "ex":Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error reading from command socket"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    const/4 v9, 0x1

    goto :goto_5

    .line 1014
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "innerPid":I
    .restart local v5    # "is":Ljava/io/DataInputStream;
    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "newStderr"    # Ljava/io/PrintStream;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1072
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1073
    if-eqz p0, :cond_1

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1076
    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 589
    const/4 v3, 0x0

    .line 611
    :cond_0
    return-object v3

    .line 591
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 598
    .local v0, "argc":I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2

    .line 599
    new-instance v5, Ljava/io/IOException;

    const-string v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 592
    .end local v0    # "argc":I
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 593
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 602
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "argc":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    .line 603
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 604
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 605
    aget-object v5, v3, v2

    if-nez v5, :cond_3

    .line 607
    new-instance v5, Ljava/io/IOException;

    const-string v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setChildPgid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 129
    const/16 v0, 0xa

    .line 141
    .local v0, "loopCount":I
    :cond_0
    if-gtz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 143
    const/16 v0, 0xa

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 145
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method runOnce()Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 171
    const/16 v17, 0x0

    .line 175
    .local v17, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 183
    .local v14, "descriptors":[Ljava/io/FileDescriptor;
    if-nez v12, :cond_0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 186
    const/4 v4, 0x1

    .line 286
    .end local v12    # "args":[Ljava/lang/String;
    .end local v14    # "descriptors":[Ljava/io/FileDescriptor;
    :goto_0
    return v4

    .line 177
    :catch_0
    move-exception v15

    .line 178
    .local v15, "ex":Ljava/io/IOException;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException on command socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 180
    const/4 v4, 0x1

    goto :goto_0

    .line 190
    .end local v15    # "ex":Ljava/io/IOException;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v14    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_0
    const/16 v16, 0x0

    .line 192
    .local v16, "newStderr":Ljava/io/PrintStream;
    if-eqz v14, :cond_1

    array-length v4, v14

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 193
    new-instance v16, Ljava/io/PrintStream;

    .end local v16    # "newStderr":Ljava/io/PrintStream;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x2

    aget-object v5, v14, v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    .restart local v16    # "newStderr":Ljava/io/PrintStream;
    :cond_1
    const/16 v19, -0x1

    .line 198
    .local v19, "pid":I
    const/4 v13, 0x0

    .line 199
    .local v13, "childPipeFd":Ljava/io/FileDescriptor;
    const/16 v21, 0x0

    .line 202
    .local v21, "serverPipeFd":Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v18, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 204
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v18, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peerSecurityContext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4, v5}, Lcom/android/internal/os/ZygoteConnection;->applyseInfoSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;Ljava/lang/String;)V

    .line 210
    invoke-static/range {v18 .. v18}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 211
    invoke-static/range {v18 .. v18}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 213
    const/4 v8, 0x0

    check-cast v8, [[I

    .line 215
    .local v8, "rlimits":[[I
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 216
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "rlimits":[[I
    check-cast v8, [[I

    .line 219
    .restart local v8    # "rlimits":[[I
    :cond_2
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 220
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v20

    .line 221
    .local v20, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    aget-object v13, v20, v4

    .line 222
    const/4 v4, 0x0

    aget-object v21, v20, v4

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 227
    .end local v20    # "pipeFds":[Ljava/io/FileDescriptor;
    :cond_3
    sget v4, Lcom/android/internal/os/ZygoteInit;->OEM_MFG_MODE:I

    if-nez v4, :cond_4

    .line 229
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v19

    :goto_1
    move-object/from16 v17, v18

    .line 266
    .end local v8    # "rlimits":[[I
    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_2
    if-nez v19, :cond_6

    .line 275
    :try_start_3
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 276
    const/16 v21, 0x0

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    const/4 v4, 0x1

    .line 289
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 290
    :goto_3
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 235
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v8    # "rlimits":[[I
    .restart local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_4
    :try_start_4
    sget v4, Lcom/android/internal/os/ZygoteInit;->OEM_MFG_MODE:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    const-string v5, "com.android.cci"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 237
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runOnce() uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uidSpecified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runOnce() gid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gidSpecified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 243
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runOnce() pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 254
    .end local v8    # "rlimits":[[I
    :catch_1
    move-exception v15

    move-object/from16 v17, v18

    .line 255
    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v15    # "ex":Ljava/io/IOException;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_4
    const-string v4, "Exception creating pipe"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v15}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 247
    .end local v15    # "ex":Ljava/io/IOException;
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v8    # "rlimits":[[I
    .restart local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :cond_5
    :try_start_5
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v19

    goto/16 :goto_1

    .line 256
    .end local v8    # "rlimits":[[I
    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_2
    move-exception v15

    .line 257
    .local v15, "ex":Llibcore/io/ErrnoException;
    :goto_5
    const-string v4, "Exception creating pipe"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v15}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 258
    .end local v15    # "ex":Llibcore/io/ErrnoException;
    :catch_3
    move-exception v15

    .line 259
    .local v15, "ex":Ljava/lang/IllegalArgumentException;
    :goto_6
    const-string v4, "Invalid zygote arguments"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v15}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 260
    .end local v15    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v15

    .line 261
    .local v15, "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :goto_7
    const-string v4, "Zygote security policy prevents request: "

    move-object/from16 v0, v16

    invoke-static {v0, v4, v15}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 284
    .end local v15    # "ex":Lcom/android/internal/os/ZygoteSecurityException;
    :cond_6
    :try_start_6
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 285
    const/4 v13, 0x0

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    .line 289
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 290
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 289
    throw v4

    .line 260
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_5
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_7

    .line 258
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_6
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_6

    .line 256
    .end local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_7
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v17    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_5

    .line 254
    :catch_8
    move-exception v15

    goto :goto_4
.end method
