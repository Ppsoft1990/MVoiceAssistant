.class public Lqw;
.super Ljava/lang/Object;
.source "DefaultPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqw$b;,
        Lqw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqv",
            "<TV;TT;>;"
        }
    .end annotation
.end field

.field private b:Lqw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqw$a",
            "<TV;TT;>;"
        }
    .end annotation
.end field

.field private c:Lqv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqv$a",
            "<TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lqw;, "Lqw<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lqw$1;

    invoke-direct {v0, p0}, Lqw$1;-><init>(Lqw;)V

    iput-object v0, p0, Lqw;->c:Lqv$a;

    .line 60
    return-void
.end method

.method public constructor <init>(Lqv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lqw;, "Lqw<TV;TT;>;"
    .local p1, "absModel":Lqv;, "Lqv<TV;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lqw$1;

    invoke-direct {v0, p0}, Lqw$1;-><init>(Lqw;)V

    iput-object v0, p0, Lqw;->c:Lqv$a;

    .line 63
    invoke-virtual {p0, p1}, Lqw;->a(Lqv;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lqw;)Lqw$a;
    .locals 1
    .param p0, "x0"    # Lqw;

    .prologue
    .line 12
    iget-object v0, p0, Lqw;->b:Lqw$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 77
    .local p0, "this":Lqw;, "Lqw<TV;TT;>;"
    iget-object v0, p0, Lqw;->a:Lqv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqw;->b:Lqw$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lqw;->b:Lqw$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    iget-object v0, p0, Lqw;->a:Lqv;

    iget-object v1, p0, Lqw;->b:Lqw$a;

    invoke-static {v1}, Lqw$a;->a(Lqw$a;)Lqw$b;

    move-result-object v1

    invoke-interface {v1}, Lqw$b;->e()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lqw;->c:Lqv$a;

    invoke-virtual {v0, v1, v2}, Lqv;->a(Ljava/lang/Object;Lqv$a;)V

    .line 81
    :cond_0
    return-void
.end method

.method public a(Lqv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lqw;, "Lqw<TV;TT;>;"
    .local p1, "absModel":Lqv;, "Lqv<TV;TT;>;"
    iput-object p1, p0, Lqw;->a:Lqv;

    .line 68
    return-void
.end method

.method public a(Lqw$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqw$b",
            "<TV;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lqw;, "Lqw<TV;TT;>;"
    .local p1, "onCommonUIListener":Lqw$b;, "Lqw$b<TV;TT;>;"
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lqw$a;

    invoke-direct {v0, p1}, Lqw$a;-><init>(Lqw$b;)V

    iput-object v0, p0, Lqw;->b:Lqw$a;

    .line 74
    :cond_0
    return-void
.end method
