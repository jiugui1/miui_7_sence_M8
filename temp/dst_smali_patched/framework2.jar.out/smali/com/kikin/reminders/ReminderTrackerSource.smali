.class public final enum Lcom/kikin/reminders/ReminderTrackerSource;
.super Ljava/lang/Enum;
.source "ReminderTrackerSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/reminders/ReminderTrackerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/reminders/ReminderTrackerSource;

.field public static final enum KIKIN_SEARCH:Lcom/kikin/reminders/ReminderTrackerSource;

.field public static final enum WEBVIEW_PAGE_LOADED:Lcom/kikin/reminders/ReminderTrackerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kikin/reminders/ReminderTrackerSource;

    const-string v1, "WEBVIEW_PAGE_LOADED"

    invoke-direct {v0, v1, v2}, Lcom/kikin/reminders/ReminderTrackerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->WEBVIEW_PAGE_LOADED:Lcom/kikin/reminders/ReminderTrackerSource;

    new-instance v0, Lcom/kikin/reminders/ReminderTrackerSource;

    const-string v1, "KIKIN_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/kikin/reminders/ReminderTrackerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->KIKIN_SEARCH:Lcom/kikin/reminders/ReminderTrackerSource;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/reminders/ReminderTrackerSource;

    sget-object v1, Lcom/kikin/reminders/ReminderTrackerSource;->WEBVIEW_PAGE_LOADED:Lcom/kikin/reminders/ReminderTrackerSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/reminders/ReminderTrackerSource;->KIKIN_SEARCH:Lcom/kikin/reminders/ReminderTrackerSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->$VALUES:[Lcom/kikin/reminders/ReminderTrackerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/reminders/ReminderTrackerSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/reminders/ReminderTrackerSource;

    return-object v0
.end method

.method public static values()[Lcom/kikin/reminders/ReminderTrackerSource;
    .locals 1

    .prologue
    sget-object v0, Lcom/kikin/reminders/ReminderTrackerSource;->$VALUES:[Lcom/kikin/reminders/ReminderTrackerSource;

    invoke-virtual {v0}, [Lcom/kikin/reminders/ReminderTrackerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/reminders/ReminderTrackerSource;

    return-object v0
.end method
