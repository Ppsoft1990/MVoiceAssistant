.class public Laio;
.super Ljava/lang/Object;
.source "LxHomeTopBarPresenter.java"

# interfaces
.implements Lain;


# static fields
.field private static b:Laio;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lain;

.field private d:Laim;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laio;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static b()Laio;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Laio;->b:Laio;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Laio;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Laio;->b:Laio;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Laio;

    invoke-direct {v0}, Laio;-><init>()V

    sput-object v0, Laio;->b:Laio;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Laio;->b:Laio;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Laio;->c:Lain;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Laio;->c:Lain;

    invoke-interface {v0}, Lain;->a()V

    .line 73
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 56
    iget-object v0, p0, Laio;->c:Lain;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Laio;->c:Lain;

    invoke-interface {v0, p1}, Lain;->a(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Laim;)V
    .locals 0
    .param p1, "listener"    # Laim;

    .prologue
    .line 29
    iput-object p1, p0, Laio;->d:Laim;

    .line 30
    return-void
.end method

.method public a(Lain;)V
    .locals 0
    .param p1, "listener"    # Lain;

    .prologue
    .line 25
    iput-object p1, p0, Laio;->c:Lain;

    .line 26
    return-void
.end method

.method public a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V
    .locals 1
    .param p1, "type"    # Lcom/iflytek/viafly/player/base/PlayerBizType;

    .prologue
    .line 63
    iget-object v0, p0, Laio;->c:Lain;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Laio;->c:Lain;

    invoke-interface {v0, p1}, Lain;->a(Lcom/iflytek/viafly/player/base/PlayerBizType;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Laio;->c:Lain;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Laio;->c:Lain;

    invoke-interface {v0, p1, p2, p3}, Lain;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Laio;->d:Laim;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Laio;->d:Laim;

    invoke-interface {v0}, Laim;->b()V

    .line 79
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Laio;->d:Laim;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Laio;->d:Laim;

    invoke-interface {v0}, Laim;->c()V

    .line 85
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Laio;->d:Laim;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Laio;->d:Laim;

    invoke-interface {v0}, Laim;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Laio;->d:Laim;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Laio;->d:Laim;

    invoke-interface {v0}, Laim;->d()Z

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Laio;->d:Laim;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Laio;->d:Laim;

    invoke-interface {v0}, Laim;->e()V

    .line 104
    :cond_0
    return-void
.end method
