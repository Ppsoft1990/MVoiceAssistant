.class public final enum Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;
.super Ljava/lang/Enum;
.source "ScheduleEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field public static final enum add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field public static final enum delete:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field public static final enum modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field public static final enum save:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

.field public static final enum view:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    const-string/jumbo v1, "add"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 57
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    const-string/jumbo v1, "view"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->view:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 58
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    const-string/jumbo v1, "modify"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 59
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    const-string/jumbo v1, "delete"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->delete:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 60
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    const-string/jumbo v1, "save"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->save:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->add:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->view:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->modify:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->delete:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->save:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$OperationType;

    return-object v0
.end method
