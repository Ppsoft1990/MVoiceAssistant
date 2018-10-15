.class public Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# instance fields
.field final synthetic this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;


# direct methods
.method public constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 3

    invoke-static {}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "exec start, aciton is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,args is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "showProgressDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->showProgressBar()V

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "dismissProgressDialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->dismissProgressBar()V

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "exec error"

    invoke-static {p1, v1, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "Error"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "retry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    invoke-static {v0}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->access$100(Lcom/iflytek/mmp/core/webcore/BrowserContainer;)Lcom/iflytek/mmp/core/webcore/BrowserCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/mmp/core/webcore/BrowserCore;->reload()V

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserContainer$NativeUI;->this$0:Lcom/iflytek/mmp/core/webcore/BrowserContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/mmp/core/webcore/BrowserContainer;->access$202(Lcom/iflytek/mmp/core/webcore/BrowserContainer;Z)Z

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
