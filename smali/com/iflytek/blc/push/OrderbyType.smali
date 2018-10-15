.class public final enum Lcom/iflytek/blc/push/OrderbyType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/push/OrderbyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EndTimeASC:Lcom/iflytek/blc/push/OrderbyType;

.field public static final enum EndTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

.field public static final enum ReceiveTimeASC:Lcom/iflytek/blc/push/OrderbyType;

.field public static final enum ReceiveTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

.field public static final enum StartTimeASC:Lcom/iflytek/blc/push/OrderbyType;

.field public static final enum StartTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

.field private static final synthetic a:[Lcom/iflytek/blc/push/OrderbyType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "ReceiveTimeASC"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->ReceiveTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "ReceiveTimeDESC"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "StartTimeASC"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->StartTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "StartTimeDESC"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->StartTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "EndTimeASC"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->EndTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    new-instance v0, Lcom/iflytek/blc/push/OrderbyType;

    const-string/jumbo v1, "EndTimeDESC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/push/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->EndTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/blc/push/OrderbyType;

    sget-object v1, Lcom/iflytek/blc/push/OrderbyType;->ReceiveTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/push/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/blc/push/OrderbyType;->StartTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/blc/push/OrderbyType;->StartTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/blc/push/OrderbyType;->EndTimeASC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/blc/push/OrderbyType;->EndTimeDESC:Lcom/iflytek/blc/push/OrderbyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/blc/push/OrderbyType;->a:[Lcom/iflytek/blc/push/OrderbyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/push/OrderbyType;
    .locals 1

    const-class v0, Lcom/iflytek/blc/push/OrderbyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/OrderbyType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/push/OrderbyType;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/push/OrderbyType;->a:[Lcom/iflytek/blc/push/OrderbyType;

    invoke-virtual {v0}, [Lcom/iflytek/blc/push/OrderbyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/push/OrderbyType;

    return-object v0
.end method
