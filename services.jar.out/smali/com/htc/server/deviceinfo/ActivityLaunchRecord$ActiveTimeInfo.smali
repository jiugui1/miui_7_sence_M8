.class final Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/deviceinfo/ActivityLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveTimeInfo"
.end annotation


# instance fields
.field final activityName:Ljava/lang/String;

.field final cnt_tag:Z

.field final packageName:Ljava/lang/String;

.field final pid:I

.field final resumeTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "aPid"    # I
    .param p2, "aActivityName"    # Ljava/lang/String;
    .param p3, "aPackageName"    # Ljava/lang/String;
    .param p4, "aResumeTime"    # J
    .param p6, "aCntTag"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    .line 26
    iput-object p2, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    .line 28
    iput-wide p4, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    .line 29
    iput-boolean p6, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnt_tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/server/deviceinfo/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
