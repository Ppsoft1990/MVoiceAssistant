.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/translate/ui/TranslateReportErrorLayout$a;


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
    .line 1186
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1191
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1192
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1193
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1197
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1202
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1203
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$20;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1206
    :cond_0
    return-void
.end method
