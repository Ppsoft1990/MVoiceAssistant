.class Lbaf$1;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/CheckUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaf;


# direct methods
.method constructor <init>(Lbaf;)V
    .locals 0
    .param p1, "this$0"    # Lbaf;

    .prologue
    .line 60
    iput-object p1, p0, Lbaf$1;->a:Lbaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdateCallback(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 6
    .param p1, "updateInfo"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    const-string/jumbo v2, "onCheckUpdateCallback: updateInfo == null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: changelog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: forceupdate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lbaf$1;->a:Lbaf;

    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbaf;->a(Lbaf;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lbaf$1;->a:Lbaf;

    invoke-static {v1}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "update_bd_chanel_version"

    iget-object v3, p0, Lbaf$1;->a:Lbaf;

    invoke-static {v3}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: save setting version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbaf$1;->a:Lbaf;

    invoke-static {v3}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "bd_channel_update_no_prompt_version"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "noPromptVerison":Ljava/lang/String;
    const-string/jumbo v1, "BaiduChanelUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCheckUpdateCallback: get noprompt version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lbaf$1;->a:Lbaf;

    invoke-static {v1}, Lbaf;->a(Lbaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lbaf$1;->a:Lbaf;

    invoke-static {v1, p1}, Lbaf;->a(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    goto/16 :goto_0
.end method
