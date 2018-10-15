.class public final enum Lcom/iflytek/viafly/blcpush/OrderbyType;
.super Ljava/lang/Enum;
.source "OrderbyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blcpush/OrderbyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum EndTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum EndTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum ReceiveTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum StartTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

.field public static final enum StartTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;


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
    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "ReceiveTimeASC"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "ReceiveTimeDESC"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "StartTimeASC"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->StartTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "StartTimeDESC"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->StartTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "EndTimeASC"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->EndTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    new-instance v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    const-string/jumbo v1, "EndTimeDESC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blcpush/OrderbyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->EndTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/viafly/blcpush/OrderbyType;

    sget-object v1, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blcpush/OrderbyType;->ReceiveTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/blcpush/OrderbyType;->StartTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/blcpush/OrderbyType;->StartTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/blcpush/OrderbyType;->EndTimeASC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/blcpush/OrderbyType;->EndTimeDESC:Lcom/iflytek/viafly/blcpush/OrderbyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->$VALUES:[Lcom/iflytek/viafly/blcpush/OrderbyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/OrderbyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/OrderbyType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blcpush/OrderbyType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/iflytek/viafly/blcpush/OrderbyType;->$VALUES:[Lcom/iflytek/viafly/blcpush/OrderbyType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blcpush/OrderbyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blcpush/OrderbyType;

    return-object v0
.end method
