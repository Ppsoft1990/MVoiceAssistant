.class public Lcom/iflytek/blc/push/AllowTime;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/blc/push/WeekDay;",
            "Lcom/iflytek/blc/push/AllowDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/blc/push/AllowDay;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/AllowTime;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/AllowDay;

    iget-object v2, p0, Lcom/iflytek/blc/push/AllowTime;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/iflytek/blc/push/AllowDay;->getDay()Lcom/iflytek/blc/push/WeekDay;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public isInAllowedTime()Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/AllowTime;->isInAllowedTime(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public isInAllowedTime(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/blc/push/AllowTime;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/AllowTime;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Lcom/iflytek/blc/push/WeekDay;->values()[Lcom/iflytek/blc/push/WeekDay;

    move-result-object v2

    aget-object v0, v2, v0

    iget-object v2, p0, Lcom/iflytek/blc/push/AllowTime;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/push/AllowDay;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/iflytek/blc/push/AllowDay;->isInAllowedTime(Ljava/util/Calendar;)Z

    move-result v0

    goto :goto_0
.end method
