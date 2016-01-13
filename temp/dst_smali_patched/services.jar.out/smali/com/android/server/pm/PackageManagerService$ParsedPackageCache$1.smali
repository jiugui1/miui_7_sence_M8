.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$1;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    # invokes: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService;->access$2600(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
