.class public final enum Lcom/iflytek/viafly/blcpush/WeekDay;
.super Ljava/lang/Enum;
.source "WeekDay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blcpush/WeekDay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum FRIDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum MONDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum SATURDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum SUNDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum THURSDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum TUESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

.field public static final enum WEDNESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "SUNDAY"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->SUNDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "MONDAY"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->MONDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "TUESDAY"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->TUESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "WEDNESDAY"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->WEDNESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "THURSDAY"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->THURSDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->FRIDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    new-instance v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    const-string/jumbo v1, "SATURDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blcpush/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->SATURDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/viafly/blcpush/WeekDay;

    sget-object v1, Lcom/iflytek/viafly/blcpush/WeekDay;->SUNDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blcpush/WeekDay;->MONDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/blcpush/WeekDay;->TUESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/blcpush/WeekDay;->WEDNESDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/blcpush/WeekDay;->THURSDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/blcpush/WeekDay;->FRIDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/blcpush/WeekDay;->SATURDAY:Lcom/iflytek/viafly/blcpush/WeekDay;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->$VALUES:[Lcom/iflytek/viafly/blcpush/WeekDay;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/WeekDay;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/WeekDay;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blcpush/WeekDay;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/iflytek/viafly/blcpush/WeekDay;->$VALUES:[Lcom/iflytek/viafly/blcpush/WeekDay;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blcpush/WeekDay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blcpush/WeekDay;

    return-object v0
.end method
