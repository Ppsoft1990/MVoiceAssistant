.class Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;
.super Landroid/os/Handler;
.source "NewsDetailPageBusinessAdapter.java"


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
    .line 96
    iput-object p1, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v2

    invoke-virtual {v2}, Lhl;->c()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->b(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u7edc\u4e0d\u53ef\u7528,\u83b7\u53d6\u64ad\u62a5\u5185\u5bb9\u5931\u8d25"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->c(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "\u6b63\u5728\u52aa\u529b\u83b7\u53d6\u5185\u5bb9"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 109
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->d(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->e(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    iget-object v3, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->i(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Laqq;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v4}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->f(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v5}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->g(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v6}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->h(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Laqq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;J)J

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "errorTip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6,\u83b7\u53d6\u64ad\u62a5\u5185\u5bb9\u5931\u8d25"

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->j(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 123
    .end local v0    # "errorTip":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Laqr;

    .line 124
    .local v1, "sohuNewsDetailItem":Laqr;
    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter$1;->a:Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;

    invoke-virtual {v1}, Laqr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;->a(Lcom/iflytek/framework/browser/event/businessAdapter/NewsDetailPageBusinessAdapter;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
