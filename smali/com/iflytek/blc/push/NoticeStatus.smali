.class public final enum Lcom/iflytek/blc/push/NoticeStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/push/NoticeStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATED:Lcom/iflytek/blc/push/NoticeStatus;

.field public static final enum EFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

.field public static final enum UNEFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

.field private static final synthetic b:[Lcom/iflytek/blc/push/NoticeStatus;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/blc/push/NoticeStatus;

    const-string/jumbo v1, "EFFECTIVE"

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/blc/push/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/blc/push/NoticeStatus;->EFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

    new-instance v0, Lcom/iflytek/blc/push/NoticeStatus;

    const-string/jumbo v1, "UNEFFECTIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/iflytek/blc/push/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/blc/push/NoticeStatus;->UNEFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

    new-instance v0, Lcom/iflytek/blc/push/NoticeStatus;

    const-string/jumbo v1, "DATED"

    invoke-direct {v0, v1, v4, v4}, Lcom/iflytek/blc/push/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/blc/push/NoticeStatus;->DATED:Lcom/iflytek/blc/push/NoticeStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/blc/push/NoticeStatus;

    sget-object v1, Lcom/iflytek/blc/push/NoticeStatus;->EFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/blc/push/NoticeStatus;->UNEFFECTIVE:Lcom/iflytek/blc/push/NoticeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/push/NoticeStatus;->DATED:Lcom/iflytek/blc/push/NoticeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/blc/push/NoticeStatus;->b:[Lcom/iflytek/blc/push/NoticeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iflytek/blc/push/NoticeStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/push/NoticeStatus;
    .locals 1

    const-class v0, Lcom/iflytek/blc/push/NoticeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/NoticeStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/push/NoticeStatus;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/push/NoticeStatus;->b:[Lcom/iflytek/blc/push/NoticeStatus;

    invoke-virtual {v0}, [Lcom/iflytek/blc/push/NoticeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/push/NoticeStatus;

    return-object v0
.end method
