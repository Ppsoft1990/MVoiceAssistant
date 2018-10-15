.class public Laao;
.super Ljava/lang/Object;
.source "LoadingWaitDialogHelper.java"


# static fields
.field private static a:Laao;


# instance fields
.field private b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static a()Laao;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Laao;->a:Laao;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Laao;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Laao;->a:Laao;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Laao;

    invoke-direct {v0}, Laao;-><init>()V

    sput-object v0, Laao;->a:Laao;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Laao;->a:Laao;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    if-nez v0, :cond_1

    .line 54
    const-string/jumbo v0, "LoadingWaitDialogHelper"

    const-string/jumbo v1, "showLoadingWaitDialog dialog == null "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    .line 57
    :cond_1
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->show()V

    .line 59
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->setLoadindText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "LoadingWaitDialogHelper"

    const-string/jumbo v1, "dismissLoadingWaitDialog "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->dismiss()V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    .line 68
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laao;->b:Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/LoadingWaitDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
