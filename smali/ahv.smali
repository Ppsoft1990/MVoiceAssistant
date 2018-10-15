.class public Lahv;
.super Ljava/lang/Object;
.source "HomeContextImpl.java"

# interfaces
.implements Lahu;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lahw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/HomeRootView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/Home$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/yd/speech/ISpeechHandler;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpp;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lqr;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lahv;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "homeSplashView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/RelativeLayout;>;"
    iput-object p1, p0, Lahv;->j:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method public b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lahv;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public b(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "appContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    iput-object p1, p0, Lahv;->a:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method public c()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lahw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lahv;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public c(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "homeContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    iput-object p1, p0, Lahv;->b:Ljava/lang/ref/WeakReference;

    .line 67
    return-void
.end method

.method public d()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lahv;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public d(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lahw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "homeHandler":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lahw;>;"
    iput-object p1, p0, Lahv;->c:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method

.method public e()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/Home$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lahv;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public e(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/HomeRootView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "homeRootView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/iflytek/viafly/HomeRootView;>;"
    iput-object p1, p0, Lahv;->d:Ljava/lang/ref/WeakReference;

    .line 85
    return-void
.end method

.method public f()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/yd/speech/ISpeechHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lahv;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public f(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "parentRootView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/RelativeLayout;>;"
    iput-object p1, p0, Lahv;->e:Ljava/lang/ref/WeakReference;

    .line 94
    return-void
.end method

.method public g()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lahv;->h:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public g(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/Home$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "homeState":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/iflytek/viafly/Home$b;>;"
    iput-object p1, p0, Lahv;->f:Ljava/lang/ref/WeakReference;

    .line 127
    return-void
.end method

.method public h()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lqr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lahv;->i:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public h(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/yd/speech/ISpeechHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "speechHandler":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/iflytek/yd/speech/ISpeechHandler;>;"
    iput-object p1, p0, Lahv;->g:Ljava/lang/ref/WeakReference;

    .line 131
    return-void
.end method

.method public i()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lahv;->j:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public i(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "speechService":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lpp;>;"
    iput-object p1, p0, Lahv;->h:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method

.method public j(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lqr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "micController":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lqr;>;"
    iput-object p1, p0, Lahv;->i:Ljava/lang/ref/WeakReference;

    .line 139
    return-void
.end method
