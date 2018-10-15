.class public Lamc;
.super Lajj;
.source "TextEventPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamc$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lajk;

.field private d:Lamc$a;


# direct methods
.method public constructor <init>(Lajk;)V
    .locals 2
    .param p1, "textEventView"    # Lajk;

    .prologue
    .line 45
    invoke-direct {p0}, Lajj;-><init>()V

    .line 39
    const-string/jumbo v0, "TextEventPresenter"

    iput-object v0, p0, Lamc;->b:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lamc;->c:Lajk;

    .line 47
    new-instance v0, Lamc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamc$a;-><init>(Lamc;Lamc$1;)V

    iput-object v0, p0, Lamc;->d:Lamc$a;

    .line 48
    return-void
.end method

.method static synthetic a(Lamc;)Lajk;
    .locals 1
    .param p0, "x0"    # Lamc;

    .prologue
    .line 38
    iget-object v0, p0, Lamc;->c:Lajk;

    return-object v0
.end method

.method static synthetic a(Lamc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lamc;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lamc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lamc;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lamc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lamc;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lamc;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lamc;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lamc;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 71
    iput-object p1, p0, Lamc;->a:Lail;

    .line 72
    return-void
.end method

.method public a(Lamd;Landroid/content/Context;)V
    .locals 6
    .param p1, "textEvent"    # Lamd;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Lamd;->b()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lamd;->a()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "clickUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lamd;->c()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const-string/jumbo v3, "TextEventPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCardClick title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p2}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100103"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v2, v0}, Lamc;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lamc;->d:Lamc$a;

    new-instance v1, Lamc$1;

    invoke-direct {v1, p0}, Lamc$1;-><init>(Lamc;)V

    invoke-virtual {v0, v1}, Lamc$a;->a(Lajm;)V

    .line 67
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "Notificationnotification_category"

    return-object v0
.end method
