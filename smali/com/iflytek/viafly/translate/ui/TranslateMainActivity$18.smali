.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/translate/ui/TranslateTextLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 973
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 976
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 964
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 965
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 966
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 969
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 949
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {p1}, Layb;->a(Ljava/lang/String;)Laxr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Laxr;)Laxr;

    .line 953
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v0

    const-string/jumbo v1, "translation"

    const-string/jumbo v2, "input"

    invoke-virtual {v0, v1, p2, v2}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$18;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v1

    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Laxr;->a(Lcom/iflytek/viafly/translate/TranslateMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Laxr;->a(Z)V

    .line 959
    :cond_0
    return-void
.end method
