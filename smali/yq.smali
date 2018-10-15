.class public Lyq;
.super Ljava/lang/Object;
.source "AllowDay.java"


# instance fields
.field private a:Lcom/iflytek/viafly/blcpush/WeekDay;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    iget-object v3, p0, Lyq;->a:Lcom/iflytek/viafly/blcpush/WeekDay;

    if-eqz v3, :cond_0

    .line 60
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 61
    .local v1, "w":I
    iget-object v3, p0, Lyq;->a:Lcom/iflytek/viafly/blcpush/WeekDay;

    invoke-virtual {v3}, Lcom/iflytek/viafly/blcpush/WeekDay;->ordinal()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 65
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 66
    .local v0, "hour":I
    iget v3, p0, Lyq;->b:I

    if-lt v0, v3, :cond_0

    iget v3, p0, Lyq;->c:I

    if-gt v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
