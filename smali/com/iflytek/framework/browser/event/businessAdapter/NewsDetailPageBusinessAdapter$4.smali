.class Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;
.super Ljava/lang/Object;
.source "NewsDetailPageBusinessAdapter.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 243
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;J)J

    .line 244
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 245
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 246
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 247
    .local v0, "errorTip":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->v(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-static {}, Laqm;->b()Lwc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method

.method public a(Lwa;)V
    .locals 6
    .param p1, "result"    # Lwa;

    .prologue
    .line 224
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;J)J

    move-object v1, p1

    .line 225
    check-cast v1, Laqo;

    .line 226
    .local v1, "newsBizDetailResult":Laqo;
    const-string/jumbo v3, "000000"

    invoke-virtual {v1}, Laqo;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, "message":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 229
    invoke-static {}, Laqm;->b()Lwc;

    move-result-object v3

    invoke-virtual {p1}, Lwa;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    :goto_0
    return-void

    .line 232
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 233
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 235
    invoke-virtual {v1}, Laqo;->a()Laqr;

    move-result-object v2

    .line 236
    .local v2, "sohuNewsDetailItem":Laqr;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$4;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->u(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
