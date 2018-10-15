.class public Lry;
.super Ljava/lang/Object;
.source "ProcessItemComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx;",
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
.method public a(Lrx;Lrx;)I
    .locals 4
    .param p1, "lhs"    # Lrx;
    .param p2, "rhs"    # Lrx;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 10
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v0

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lrx;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lrx;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Lrx;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lrx;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lrx;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lrx;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 21
    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Lrx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lrx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lrx;

    check-cast p2, Lrx;

    invoke-virtual {p0, p1, p2}, Lry;->a(Lrx;Lrx;)I

    move-result v0

    return v0
.end method
