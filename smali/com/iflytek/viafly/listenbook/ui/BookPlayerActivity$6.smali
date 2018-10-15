.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;
.super Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.source "BookPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;->this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1891
    const-string/jumbo v0, "BookPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const-string/jumbo v0, "weixinFriend"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;->this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const-string/jumbo v1, "FT89611"

    const-string/jumbo v2, "wechatSession"

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    const-string/jumbo v0, "weixinTimeLine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;->this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const-string/jumbo v1, "FT89611"

    const-string/jumbo v2, "wechatTimeline"

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    :cond_2
    const-string/jumbo v0, "weibo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;->this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const-string/jumbo v1, "FT89611"

    const-string/jumbo v2, "sinaWeibo"

    invoke-static {v0, v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1874
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    if-nez p1, :cond_1

    .line 1876
    const-string/jumbo v0, ""

    .line 1877
    .local v0, "channel":Ljava/lang/String;
    const-string/jumbo v1, "weixinFriend"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1878
    const-string/jumbo v0, "1"

    .line 1882
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1883
    const-string/jumbo v1, "BookPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start share report channel is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$6;->this$0:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lamp;->b(Ljava/lang/String;)V

    .line 1887
    .end local v0    # "channel":Ljava/lang/String;
    :cond_1
    return-void

    .line 1879
    .restart local v0    # "channel":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "weixinTimeLine"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1880
    const-string/jumbo v0, "2"

    goto :goto_0
.end method
