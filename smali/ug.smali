.class public Lug;
.super Ljava/lang/Object;
.source "AppActionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug$a;
    }
.end annotation


# instance fields
.field private a:Lug$a;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/app/install/AppInstallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lug$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lug$a;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lug;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    iput-object p1, p0, Lug;->b:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lug;->a:Lug$a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v1, p0, Lug;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 58
    .local v0, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lug;->a:Lug$a;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lug;->a:Lug$a;

    invoke-interface {v1, v0}, Lug$a;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Z)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "needRealInstall"    # Z

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lug;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lug;->b:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lns;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lug;->b:Landroid/content/Context;

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lug;->b:Landroid/content/Context;

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgq;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
