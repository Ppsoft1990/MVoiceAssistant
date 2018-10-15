.class public final enum Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;
.super Ljava/lang/Enum;
.source "ScheduleEditType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

.field public static final enum MODIFY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

.field public static final enum NEW:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->NEW:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    .line 8
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    const-string/jumbo v1, "MODIFY"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->MODIFY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->NEW:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->MODIFY:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleEditType;

    return-object v0
.end method
