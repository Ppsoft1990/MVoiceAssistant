.class public Lauh;
.super Ljava/lang/Object;
.source "ScheduleBusinessChannelHandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauh$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iflytek/framework/business/entities/HandleContext;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lauh$1;)V
    .locals 0
    .param p1, "x0"    # Lauh$1;

    .prologue
    .line 13
    invoke-direct {p0}, Lauh;-><init>()V

    return-void
.end method

.method public static a()Lauh;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lauh$a;->a:Lauh;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/framework/business/entities/HandleContext;)V
    .locals 1
    .param p1, "mHandleContext"    # Lcom/iflytek/framework/business/entities/HandleContext;

    .prologue
    .line 36
    iput-object p1, p0, Lauh;->a:Lcom/iflytek/framework/business/entities/HandleContext;

    .line 37
    invoke-virtual {p1}, Lcom/iflytek/framework/business/entities/HandleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lauh;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lauh;->a:Lcom/iflytek/framework/business/entities/HandleContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lauh;->b:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v2, p0, Lauh;->a:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v1

    check-cast v1, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 56
    .local v1, "operationView":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v0

    .line 58
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    if-eqz v0, :cond_2

    .line 59
    const-string/jumbo v2, "remindView.showSpeekView(\'0\')"

    invoke-virtual {v0, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 63
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;
    :cond_2
    iget-object v2, p0, Lauh;->b:Landroid/content/Context;

    invoke-static {v2}, Lavb;->a(Landroid/content/Context;)Lavb;

    move-result-object v2

    invoke-virtual {v2}, Lavb;->a()V

    .line 64
    invoke-static {}, Laun;->f()Ljava/util/TimerTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {}, Laun;->f()Ljava/util/TimerTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
