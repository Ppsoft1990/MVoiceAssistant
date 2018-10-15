.class public final enum Lcom/iflytek/blc/push/WeekDay;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/push/WeekDay;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FRIDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum MONDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum SATURDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum SUNDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum THURSDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum TUESDAY:Lcom/iflytek/blc/push/WeekDay;

.field public static final enum WEDNESDAY:Lcom/iflytek/blc/push/WeekDay;

.field private static final synthetic a:[Lcom/iflytek/blc/push/WeekDay;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "SUNDAY"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->SUNDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "MONDAY"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->MONDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "TUESDAY"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->TUESDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "WEDNESDAY"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->WEDNESDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "THURSDAY"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->THURSDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "FRIDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->FRIDAY:Lcom/iflytek/blc/push/WeekDay;

    new-instance v0, Lcom/iflytek/blc/push/WeekDay;

    const-string/jumbo v1, "SATURDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/push/WeekDay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->SATURDAY:Lcom/iflytek/blc/push/WeekDay;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/iflytek/blc/push/WeekDay;

    sget-object v1, Lcom/iflytek/blc/push/WeekDay;->SUNDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/push/WeekDay;->MONDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/blc/push/WeekDay;->TUESDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/blc/push/WeekDay;->WEDNESDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/blc/push/WeekDay;->THURSDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/blc/push/WeekDay;->FRIDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/blc/push/WeekDay;->SATURDAY:Lcom/iflytek/blc/push/WeekDay;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/blc/push/WeekDay;->a:[Lcom/iflytek/blc/push/WeekDay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/push/WeekDay;
    .locals 1

    const-class v0, Lcom/iflytek/blc/push/WeekDay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/WeekDay;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/push/WeekDay;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/push/WeekDay;->a:[Lcom/iflytek/blc/push/WeekDay;

    invoke-virtual {v0}, [Lcom/iflytek/blc/push/WeekDay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/push/WeekDay;

    return-object v0
.end method
