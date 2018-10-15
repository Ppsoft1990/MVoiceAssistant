.class public final enum Lcom/iflytek/blc/page/OrderBy$OrderType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/page/OrderBy$OrderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASC:Lcom/iflytek/blc/page/OrderBy$OrderType;

.field public static final enum DESC:Lcom/iflytek/blc/page/OrderBy$OrderType;

.field private static final synthetic a:[Lcom/iflytek/blc/page/OrderBy$OrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/blc/page/OrderBy$OrderType;

    const-string/jumbo v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/page/OrderBy$OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/page/OrderBy$OrderType;->ASC:Lcom/iflytek/blc/page/OrderBy$OrderType;

    new-instance v0, Lcom/iflytek/blc/page/OrderBy$OrderType;

    const-string/jumbo v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/page/OrderBy$OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/page/OrderBy$OrderType;->DESC:Lcom/iflytek/blc/page/OrderBy$OrderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/blc/page/OrderBy$OrderType;

    sget-object v1, Lcom/iflytek/blc/page/OrderBy$OrderType;->ASC:Lcom/iflytek/blc/page/OrderBy$OrderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/blc/page/OrderBy$OrderType;->DESC:Lcom/iflytek/blc/page/OrderBy$OrderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/blc/page/OrderBy$OrderType;->a:[Lcom/iflytek/blc/page/OrderBy$OrderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/page/OrderBy$OrderType;
    .locals 1

    const-class v0, Lcom/iflytek/blc/page/OrderBy$OrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/page/OrderBy$OrderType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/page/OrderBy$OrderType;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/page/OrderBy$OrderType;->a:[Lcom/iflytek/blc/page/OrderBy$OrderType;

    invoke-virtual {v0}, [Lcom/iflytek/blc/page/OrderBy$OrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/page/OrderBy$OrderType;

    return-object v0
.end method
