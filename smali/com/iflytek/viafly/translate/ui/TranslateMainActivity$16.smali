.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;
.super Lcom/iflytek/framework/ui/share/AbsShareResultListener;
.source "TranslateMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 1523
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;->this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1534
    const-string/jumbo v0, "translateText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    const-string/jumbo v0, "weixinFriend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;->this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "friend_share"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    const-string/jumbo v0, "weixinTimeLine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;->this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "timeline_share"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->e(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_2
    const-string/jumbo v0, "translateMain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    const-string/jumbo v0, "weixinFriend"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;->this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "friend_share"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1543
    :cond_3
    const-string/jumbo v0, "weixinTimeLine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$16;->this$0:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    const-string/jumbo v1, "timeline_share"

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->f(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "shareId"    # Ljava/lang/String;

    .prologue
    .line 1527
    if-nez p1, :cond_0

    .line 1530
    :cond_0
    return-void
.end method
