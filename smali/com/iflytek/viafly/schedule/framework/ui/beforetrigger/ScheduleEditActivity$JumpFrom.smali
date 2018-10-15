.class public final enum Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;
.super Ljava/lang/Enum;
.source "ScheduleEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JumpFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

.field public static final enum dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

.field public static final enum other:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    const-string/jumbo v1, "dialogmode"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    .line 68
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    const-string/jumbo v1, "other"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->other:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->dialogmode:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->other:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleEditActivity$JumpFrom;

    return-object v0
.end method
