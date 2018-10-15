.class public Lgp;
.super Ljava/lang/Object;
.source "AppComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/iflytek/base/app/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/app/AppItem;Lcom/iflytek/base/app/AppItem;)I
    .locals 3
    .param p1, "lhs"    # Lcom/iflytek/base/app/AppItem;
    .param p2, "rhs"    # Lcom/iflytek/base/app/AppItem;

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "distanceLhs":I
    const/4 v1, 0x0

    .line 12
    .local v1, "distanceRhs":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/iflytek/base/app/AppItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/iflytek/base/app/AppItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/iflytek/base/app/AppItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 19
    :cond_1
    if-le v0, v1, :cond_2

    .line 20
    const/4 v2, 0x1

    .line 24
    :goto_0
    return v2

    .line 21
    :cond_2
    if-ne v0, v1, :cond_3

    .line 22
    const/4 v2, 0x0

    goto :goto_0

    .line 24
    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/iflytek/base/app/AppItem;

    check-cast p2, Lcom/iflytek/base/app/AppItem;

    invoke-virtual {p0, p1, p2}, Lgp;->a(Lcom/iflytek/base/app/AppItem;Lcom/iflytek/base/app/AppItem;)I

    move-result v0

    return v0
.end method
