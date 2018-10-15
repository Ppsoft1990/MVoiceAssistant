.class public Lcom/iflytek/blc/push/AllowDay;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/iflytek/blc/push/WeekDay;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/push/WeekDay;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/blc/push/AllowDay;->a:Lcom/iflytek/blc/push/WeekDay;

    iput p2, p0, Lcom/iflytek/blc/push/AllowDay;->b:I

    iput p3, p0, Lcom/iflytek/blc/push/AllowDay;->c:I

    return-void
.end method


# virtual methods
.method public getDay()Lcom/iflytek/blc/push/WeekDay;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/AllowDay;->a:Lcom/iflytek/blc/push/WeekDay;

    return-object v0
.end method

.method public getEndHour()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/AllowDay;->c:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/AllowDay;->b:I

    return v0
.end method

.method public isInAllowedTime(J)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/AllowDay;->isInAllowedTime(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public isInAllowedTime(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/iflytek/blc/push/AllowDay;->a:Lcom/iflytek/blc/push/WeekDay;

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/blc/push/AllowDay;->a:Lcom/iflytek/blc/push/WeekDay;

    invoke-virtual {v2}, Lcom/iflytek/blc/push/WeekDay;->ordinal()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/iflytek/blc/push/AllowDay;->b:I

    if-lt v1, v2, :cond_0

    iget v2, p0, Lcom/iflytek/blc/push/AllowDay;->c:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDay(Lcom/iflytek/blc/push/WeekDay;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/AllowDay;->a:Lcom/iflytek/blc/push/WeekDay;

    return-void
.end method

.method public setEndHour(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/AllowDay;->c:I

    return-void
.end method

.method public setStartHour(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/AllowDay;->b:I

    return-void
.end method
