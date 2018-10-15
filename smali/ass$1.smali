.class Lass$1;
.super Lasi$a;
.source "PluginItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lass;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lass;


# direct methods
.method constructor <init>(Lass;)V
    .locals 0
    .param p1, "this$0"    # Lass;

    .prologue
    .line 148
    iput-object p1, p0, Lass$1;->a:Lass;

    invoke-direct {p0}, Lasi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeHandlePlugin(I)Z
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lass$1;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Z

    move-result v0

    return v0
.end method

.method public onEnterPlugin(I)V
    .locals 1
    .param p1, "pluginType"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lass$1;->a:Lass;

    invoke-static {v0}, Lass;->a(Lass;)V

    .line 153
    return-void
.end method

.method public onOutsidePluginStartSuccess(I)V
    .locals 2
    .param p1, "pluginType"    # I

    .prologue
    .line 170
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lass$1;->a:Lass;

    iget-object v0, v0, Lass;->k:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100045"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onStartInstallPlugin(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lass$1;->a:Lass;

    invoke-static {v0}, Lass;->c(Lass;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lass$1;->a:Lass;

    invoke-static {v0}, Lass;->c(Lass;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    :cond_0
    return-void
.end method
