.class Laiz$1;
.super Ljava/lang/Object;
.source "HomeBannerPresenter.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laiz;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laiz;


# direct methods
.method constructor <init>(Laiz;)V
    .locals 0
    .param p1, "this$0"    # Laiz;

    .prologue
    .line 32
    iput-object p1, p0, Laiz$1;->a:Laiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 46
    iget-object v0, p0, Laiz$1;->a:Laiz;

    invoke-static {v0}, Laiz;->a(Laiz;)Lajk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "HomeBannerPresenter onResult null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Laiz$1;->a:Laiz;

    invoke-static {v0}, Laiz;->a(Laiz;)Lajk;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lajk;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 51
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "call request no need"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Laiz$1;->a:Laiz;

    const/16 v1, 0x3eb

    iget-object v2, p0, Laiz$1;->a:Laiz;

    invoke-virtual {v2}, Laiz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laiz;->b(Laiz;ILjava/lang/String;)V

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    if-nez p1, :cond_1

    .line 54
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "call request fail"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Laiz$1;->a:Laiz;

    const/16 v1, 0x3ea

    iget-object v2, p0, Laiz$1;->a:Laiz;

    invoke-virtual {v2}, Laiz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laiz;->c(Laiz;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Laiz$1;->a:Laiz;

    invoke-static {v0}, Laiz;->a(Laiz;)Lajk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "HomeBannerPresenter onResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Laiz$1;->a:Laiz;

    invoke-static {v0}, Laiz;->a(Laiz;)Lajk;

    move-result-object v0

    invoke-interface {v0, p1}, Lajk;->a(Ljava/lang/String;)V

    .line 40
    :cond_0
    const-string/jumbo v0, "HomeBannerPresenter"

    const-string/jumbo v1, "call request success"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Laiz$1;->a:Laiz;

    const/16 v1, 0x3e9

    iget-object v2, p0, Laiz$1;->a:Laiz;

    invoke-virtual {v2}, Laiz;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laiz;->a(Laiz;ILjava/lang/String;)V

    .line 42
    return-void
.end method
