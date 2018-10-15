.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;
.super Ljava/lang/Enum;
.source "ScheduleTimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

.field public static final enum all:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

.field public static final enum complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

.field public static final enum dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

.field public static final enum todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    const-string/jumbo v1, "all"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->all:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .line 9
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    const-string/jumbo v1, "todo"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    const-string/jumbo v1, "complete"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    const-string/jumbo v1, "dated"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->all:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    return-object v0
.end method
