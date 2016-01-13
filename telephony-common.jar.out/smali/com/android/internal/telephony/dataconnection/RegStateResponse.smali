.class public Lcom/android/internal/telephony/dataconnection/RegStateResponse;
.super Ljava/lang/Object;
.source "RegStateResponse.java"


# instance fields
.field private mRegStates:[[Ljava/lang/String;


# direct methods
.method public constructor <init>([[Ljava/lang/String;)V
    .locals 0
    .param p1, "regstates"    # [[Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getNumRecords()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    array-length v0, v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecord(I)[Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->getNumRecords()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->mRegStates:[[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "{ "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->getNumRecords()I

    move-result v1

    .line 55
    .local v1, "numRecs":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumRecords:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v2, 0x0

    .local v2, "rec":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/RegStateResponse;->getRecord(I)[Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "strings":[Ljava/lang/String;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    if-eqz v4, :cond_2

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 62
    aget-object v5, v4, v0

    if-eqz v5, :cond_1

    .line 63
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    .line 68
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 72
    .end local v0    # "i":I
    :cond_2
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_4

    .line 76
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_5
    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
