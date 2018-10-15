.class public Lux;
.super Ljava/lang/Object;
.source "HourMinuteItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lux;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lux;->a:I

    .line 22
    iput p2, p0, Lux;->b:I

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)Lux;
    .locals 10
    .param p0, "hhmm"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 26
    invoke-static {p0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 43
    :cond_1
    :goto_0
    return-object v3

    .line 29
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "hh":Ljava/lang/String;
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "mm":Ljava/lang/String;
    const/4 v3, 0x0

    .line 34
    .local v3, "item":Lux;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 35
    .local v2, "hour":I
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "minute":I
    if-ltz v2, :cond_1

    const/16 v7, 0x17

    if-gt v2, v7, :cond_1

    if-ltz v5, :cond_1

    const/16 v7, 0x3b

    if-gt v5, v7, :cond_1

    .line 37
    new-instance v4, Lux;

    invoke-direct {v4, v2, v5}, Lux;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "item":Lux;
    .local v4, "item":Lux;
    move-object v3, v4

    .end local v4    # "item":Lux;
    .restart local v3    # "item":Lux;
    goto :goto_0

    .line 39
    .end local v2    # "hour":I
    .end local v5    # "minute":I
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "HourMinuteItem"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Lux;)Z
    .locals 2
    .param p0, "hm"    # Lux;

    .prologue
    .line 116
    if-eqz p0, :cond_0

    iget v0, p0, Lux;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lux;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    iget v0, p0, Lux;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lux;->b:I

    const/16 v1, 0x3b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lux;Lux;)I
    .locals 4
    .param p1, "lhs"    # Lux;
    .param p2, "rhs"    # Lux;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 71
    iget v2, p1, Lux;->a:I

    iget v3, p2, Lux;->a:I

    if-ge v2, v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget v2, p1, Lux;->a:I

    iget v3, p2, Lux;->a:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget v2, p1, Lux;->b:I

    iget v3, p2, Lux;->b:I

    if-lt v2, v3, :cond_0

    .line 77
    iget v0, p1, Lux;->b:I

    iget v2, p2, Lux;->b:I

    if-ge v0, v2, :cond_3

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public a()J
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lux;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v1, 0xc

    iget v2, p0, Lux;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public b()J
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 109
    const/16 v1, 0xb

    iget v2, p0, Lux;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 110
    const/16 v1, 0xc

    iget v2, p0, Lux;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lux;

    check-cast p2, Lux;

    invoke-virtual {p0, p1, p2}, Lux;->a(Lux;Lux;)I

    move-result v0

    return v0
.end method
