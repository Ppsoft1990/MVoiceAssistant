.class Lbaf$8;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->b(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/UpdateInfo;

.field final synthetic b:Lbaf;


# direct methods
.method constructor <init>(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lbaf;

    .prologue
    .line 279
    iput-object p1, p0, Lbaf$8;->b:Lbaf;

    iput-object p2, p0, Lbaf$8;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lbaf$8;->b:Lbaf;

    invoke-static {v0}, Lbaf;->e(Lbaf;)Lxr;

    move-result-object v0

    iget-object v1, p0, Lbaf$8;->b:Lbaf;

    invoke-static {v1}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->g(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lbaf$8;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "finish sendBroadcast ACTION_FORCE_CLOSE "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lbaf$8;->b:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lbaf$8;->b:Lbaf;

    invoke-static {v0}, Lbaf;->d(Lbaf;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 292
    return-void
.end method
