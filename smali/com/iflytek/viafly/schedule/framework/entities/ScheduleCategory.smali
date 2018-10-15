.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
.super Ljava/lang/Enum;
.source "ScheduleCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

.field public static final enum SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

.field public static final enum SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    const-string/jumbo v1, "SCHEDULE"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .line 8
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    const-string/jumbo v1, "SMARTSCHEDULE"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->SMARTSCHEDULE:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleCategory;

    return-object v0
.end method
