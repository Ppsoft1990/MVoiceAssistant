.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->h()V
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
    .line 1141
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 1161
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onError: getTranslateEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->l(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layf;

    move-result-object v2

    invoke-virtual {v2, p1}, Layf;->a(Ljava/lang/String;)Laxy;

    move-result-object v1

    .line 1145
    .local v1, "translateEntry":Laxy;
    if-eqz v1, :cond_0

    .line 1146
    const-string/jumbo v2, "TranslateMainActivity"

    const-string/jumbo v3, "onResult: mTranslateEntry \uff01= null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Laxy;)Laxy;

    .line 1148
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->j(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxy;

    move-result-object v3

    invoke-virtual {v3}, Laxy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1151
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1152
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->r(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1153
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$19;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1157
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
