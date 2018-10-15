.class public final enum Lcom/iflytek/blc/system/ApnAccessorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/system/ApnAccessorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMNET:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum CMWAP:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum CTNET:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum CTWAP:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum UNINET:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum UNIWAP:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum UNKNOWN:Lcom/iflytek/blc/system/ApnAccessorType;

.field public static final enum WIFI:Lcom/iflytek/blc/system/ApnAccessorType;

.field private static final synthetic a:[Lcom/iflytek/blc/system/ApnAccessorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->WIFI:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "CMWAP"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CMWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "CTWAP"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CTWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "UNIWAP"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->UNIWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "CMNET"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CMNET:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "UNINET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->UNINET:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "CTNET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->CTNET:Lcom/iflytek/blc/system/ApnAccessorType;

    new-instance v0, Lcom/iflytek/blc/system/ApnAccessorType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/system/ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/blc/system/ApnAccessorType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/iflytek/blc/system/ApnAccessorType;

    sget-object v1, Lcom/iflytek/blc/system/ApnAccessorType;->WIFI:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/system/ApnAccessorType;->CMWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/blc/system/ApnAccessorType;->CTWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/blc/system/ApnAccessorType;->UNIWAP:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/blc/system/ApnAccessorType;->CMNET:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/blc/system/ApnAccessorType;->UNINET:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/blc/system/ApnAccessorType;->CTNET:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/blc/system/ApnAccessorType;->UNKNOWN:Lcom/iflytek/blc/system/ApnAccessorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->a:[Lcom/iflytek/blc/system/ApnAccessorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/system/ApnAccessorType;
    .locals 1

    const-class v0, Lcom/iflytek/blc/system/ApnAccessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/system/ApnAccessorType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/system/ApnAccessorType;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/system/ApnAccessorType;->a:[Lcom/iflytek/blc/system/ApnAccessorType;

    invoke-virtual {v0}, [Lcom/iflytek/blc/system/ApnAccessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/system/ApnAccessorType;

    return-object v0
.end method
