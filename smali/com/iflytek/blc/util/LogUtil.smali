.class public Lcom/iflytek/blc/util/LogUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static priority2Int(Lcom/iflytek/blc/log/LogPriority;)I
    .locals 1

    sget-object v0, Lcom/iflytek/blc/log/LogPriority;->Low:Lcom/iflytek/blc/log/LogPriority;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/iflytek/blc/log/LogPriority;->High:Lcom/iflytek/blc/log/LogPriority;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/blc/log/LogPriority;->RealTime:Lcom/iflytek/blc/log/LogPriority;

    if-ne p0, v0, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
