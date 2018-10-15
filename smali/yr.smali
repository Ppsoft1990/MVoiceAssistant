.class public Lyr;
.super Ljava/lang/Object;
.source "AllowTime.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/iflytek/viafly/blcpush/WeekDay;",
            "Lyq;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 51
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lyr;->a(Ljava/util/Calendar;)Z

    move-result v1

    return v1
.end method

.method public a(Ljava/util/Calendar;)Z
    .locals 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Lyr;->a:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lyr;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    :cond_0
    const/4 v3, 0x1

    .line 46
    :cond_1
    :goto_0
    return v3

    .line 34
    :cond_2
    if-eqz p1, :cond_1

    .line 38
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 39
    .local v1, "w":I
    invoke-static {}, Lcom/iflytek/viafly/blcpush/WeekDay;->values()[Lcom/iflytek/viafly/blcpush/WeekDay;

    move-result-object v4

    aget-object v2, v4, v1

    .line 41
    .local v2, "weekDay":Lcom/iflytek/viafly/blcpush/WeekDay;
    iget-object v4, p0, Lyr;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq;

    .line 42
    .local v0, "allowDay":Lyq;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, p1}, Lyq;->a(Ljava/util/Calendar;)Z

    move-result v3

    goto :goto_0
.end method
