.class public final enum Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
.super Ljava/lang/Enum;
.source "ScheduleRepeat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum month_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum other:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

.field public static final enum year_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "once"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "everyday"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "week"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "month_date"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "year_date"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "month_special"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "year_special"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 31
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    const-string/jumbo v1, "other"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->other:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->once:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->everyday:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->week:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->year_special:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->other:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    return-object v0
.end method
