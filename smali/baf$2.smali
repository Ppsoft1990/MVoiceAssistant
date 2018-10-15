.class Lbaf$2;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->a(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
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
    .line 124
    iput-object p1, p0, Lbaf$2;->b:Lbaf;

    iput-object p2, p0, Lbaf$2;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "on cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lbaf$2;->b:Lbaf;

    invoke-static {v0}, Lbaf;->b(Lbaf;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->getSelectedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "bd_channel_update_no_prompt_version"

    iget-object v2, p0, Lbaf$2;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-virtual {v2}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckUpdateCallback: save noprompt version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbaf$2;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-virtual {v2}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lbaf$2;->a:Lcom/baidu/aiupdatesdk/UpdateInfo;

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "finish sendBroadcast ACTION_FORCE_CLOSE "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lbaf$2;->b:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lbaf$2;->b:Lbaf;

    invoke-static {v0}, Lbaf;->b(Lbaf;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->dismiss()V

    .line 144
    return-void
.end method
