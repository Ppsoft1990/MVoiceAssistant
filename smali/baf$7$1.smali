.class Lbaf$7$1;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/CheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaf$7;


# direct methods
.method constructor <init>(Lbaf$7;)V
    .locals 0
    .param p1, "this$1"    # Lbaf$7;

    .prologue
    .line 224
    iput-object p1, p0, Lbaf$7$1;->a:Lbaf$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdateCallback(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    iget-object v0, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v0, v0, Lbaf$7;->a:Lbaf;

    invoke-static {v0}, Lbaf;->d(Lbaf;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 230
    iget-object v0, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v0, v0, Lbaf$7;->a:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "onCheckUpdateCallback: updateInfo == null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckUpdateCallback: version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckUpdateCallback: size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckUpdateCallback: changelog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckUpdateCallback: forceupdate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v0, v0, Lbaf$7;->a:Lbaf;

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbaf;->a(Lbaf;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v0, v0, Lbaf$7;->a:Lbaf;

    invoke-static {v0}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "update_bd_chanel_version"

    iget-object v2, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v2, v2, Lbaf$7;->a:Lbaf;

    invoke-static {v2}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lbaf$7$1;->a:Lbaf$7;

    iget-object v0, v0, Lbaf$7;->a:Lbaf;

    invoke-static {v0, p1}, Lbaf;->b(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    goto/16 :goto_0
.end method
