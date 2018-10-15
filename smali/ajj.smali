.class public abstract Lajj;
.super Ljava/lang/Object;
.source "AbsHomePagePresenter.java"


# instance fields
.field public a:Lail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lajj;->a:Lail;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lajj;->a:Lail;

    invoke-interface {v0, p1, p2}, Lail;->a(ILjava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public abstract g()V
.end method

.method public abstract h()Ljava/lang/String;
.end method
