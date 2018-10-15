.class Ltk$1;
.super Ljava/lang/Object;
.source "UserCenterFragment.java"

# interfaces
.implements Ltj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltk;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 0
    .param p1, "this$0"    # Ltk;

    .prologue
    .line 588
    iput-object p1, p0, Ltk$1;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 612
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUserVoicePrintSetted des "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public a(Z)V
    .locals 3
    .param p1, "isExist"    # Z

    .prologue
    .line 591
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUserVoicePrintSetted user voice print exist state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0, p1}, Ltk;->a(Ltk;Z)Z

    .line 594
    iget-object v0, p0, Ltk$1;->a:Ltk;

    iget-object v1, p0, Ltk$1;->a:Ltk;

    invoke-static {v1}, Ltk;->b(Ltk;)Z

    move-result v1

    invoke-static {v0, v1}, Ltk;->b(Ltk;Z)V

    .line 596
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0}, Ltk;->b(Ltk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSearch\u8bbe\u7f6e\u6211\u7684\u58f0\u7eb9\u5bc6\u7801"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Ltk$1;->a:Ltk;

    iget-object v0, v0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v1, "\u9996\u6b21\u8bbe\u7f6e\u58f0\u7eb9\u5bc6\u7801+20\u54aa\u5495\u5e01"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/account/ui/UserSettingView;->a(Ljava/lang/String;I)V

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Ltk$1;->a:Ltk;

    invoke-static {v0}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSearch\u6211\u7684\u58f0\u7eb9"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Ltk$1;->a:Ltk;

    iget-object v0, v0, Ltk;->e:Lcom/iflytek/viafly/account/ui/UserSettingView;

    const-string/jumbo v1, "\u6211\u7684\u58f0\u7eb9"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/account/ui/UserSettingView;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
