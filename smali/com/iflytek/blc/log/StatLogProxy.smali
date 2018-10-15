.class public Lcom/iflytek/blc/log/StatLogProxy;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static increase(Ljava/lang/String;ILcom/iflytek/blc/log/LogPriority;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/iflytek/blc/util/LogUtil;->priority2Int(Lcom/iflytek/blc/log/LogPriority;)I

    move-result v0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/iflytek/blc/log/StatLogProxy;->nativeIncrease(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeIncrease(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V
.end method
