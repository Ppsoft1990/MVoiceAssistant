.class public Ladw;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lap",
            "<",
            "Ladv",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lap;

    invoke-direct {v0}, Lap;-><init>()V

    iput-object v0, p0, Ladw;->a:Lap;

    .line 19
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    iget-object v0, p0, Ladw;->a:Lap;

    invoke-virtual {v0}, Lap;->b()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Ladv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ladv;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2}, Lap;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 34
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2, v1}, Lap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladv;

    .line 35
    .local v0, "delegate":Ladv;, "Ladv<TT;>;"
    invoke-interface {v0, p1}, Ladv;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    return-object v0

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "delegate":Ladv;, "Ladv<TT;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No ItemViewDelegate added that matches current item in data source"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ladv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ladv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    .local p1, "delegate":Ladv;, "Ladv<TT;>;"
    if-nez p1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Ladw;->a:Lap;

    invoke-virtual {v1}, Lap;->b()I

    move-result v0

    .line 29
    .local v0, "viewType":I
    iget-object v1, p0, Ladw;->a:Lap;

    invoke-virtual {v1, v0, p1}, Lap;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/viafly/homepage/base/HomeEvent;

    .prologue
    .line 61
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2}, Lap;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2, v1}, Lap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladv;

    .line 63
    .local v0, "delegate":Ladv;, "Ladv<TT;>;"
    invoke-interface {v0, p1}, Ladv;->a(Lcom/iflytek/viafly/homepage/base/HomeEvent;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "delegate":Ladv;, "Ladv<TT;>;"
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Ladw;, "Ladw<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2}, Lap;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 50
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2, v1}, Lap;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladv;

    .line 51
    .local v0, "delegate":Ladv;, "Ladv<TT;>;"
    invoke-interface {v0, p1}, Ladv;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Ladw;->a:Lap;

    invoke-virtual {v2, v1}, Lap;->a(I)I

    move-result v2

    return v2

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "delegate":Ladv;, "Ladv<TT;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No ItemViewDelegate added that matches this item in data source"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
