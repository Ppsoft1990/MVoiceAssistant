.class public final enum Lcom/iflytek/viafly/dial/business30/DialCancelReason;
.super Ljava/lang/Enum;
.source "DialCancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/dial/business30/DialCancelReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum activity_destory:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum activity_for_result:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum activity_resume:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum activity_stop:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum cancelButton_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum show_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum speak_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

.field public static final enum start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "cancelButton_down"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancelButton_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "start_new_task"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "activity_stop"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_stop:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 21
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "activity_destory"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_destory:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "activity_resume"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_resume:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 31
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "activity_for_result"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_for_result:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 36
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "speech_button_down"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 41
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "speak_button_down"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speak_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 46
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "show_local_business"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->show_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 51
    new-instance v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    const-string/jumbo v1, "cancel_local_business"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/dial/business30/DialCancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    sget-object v1, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancelButton_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->start_new_task:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_stop:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_destory:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_resume:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->activity_for_result:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speech_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->speak_button_down:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->show_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->cancel_local_business:Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->$VALUES:[Lcom/iflytek/viafly/dial/business30/DialCancelReason;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/dial/business30/DialCancelReason;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/dial/business30/DialCancelReason;->$VALUES:[Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/dial/business30/DialCancelReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/dial/business30/DialCancelReason;

    return-object v0
.end method
