.class public Laig;
.super Lahz;
.source "HomeOperationPageState.java"


# instance fields
.field private a:Lcom/iflytek/framework/browser/localControlView/OperationView;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/browser/localControlView/OperationView;)V
    .locals 0
    .param p1, "operationView"    # Lcom/iflytek/framework/browser/localControlView/OperationView;

    .prologue
    .line 19
    invoke-direct {p0}, Lahz;-><init>()V

    .line 20
    iput-object p1, p0, Laig;->a:Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 21
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_for_result:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->on_key_down:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 62
    invoke-super {p0, p1, p2}, Lahz;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Laig;->a:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->b()V

    .line 51
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Laig;->a:Lcom/iflytek/framework/browser/localControlView/OperationView;

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->c()V

    .line 56
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_resume:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_pause:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_stop:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/iflytek/framework/business/BusinessFactory;->getManager()Lcom/iflytek/framework/business/interfaces/IBussinessManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/framework/business/entities/UIEvent;->activity_destory:Lcom/iflytek/framework/business/entities/UIEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/iflytek/framework/business/interfaces/IBussinessManager;->onUIEventChanged(Lcom/iflytek/framework/business/entities/UIEvent;[Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
