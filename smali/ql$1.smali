.class Lql$1;
.super Landroid/os/Handler;
.source "NovelDetailPageBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lql;


# direct methods
.method constructor <init>(Lql;)V
    .locals 0
    .param p1, "this$0"    # Lql;

    .prologue
    .line 106
    iput-object p1, p0, Lql$1;->a:Lql;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 109
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p0, Lql$1;->a:Lql;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lql;->a(Lql;Ljava/util/List;)Ljava/util/List;

    .line 112
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1, v3}, Lql;->a(Lql;I)I

    .line 113
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1}, Lql;->a(Lql;)Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/pageFlow/page/LxWebView;->setIsNeedTitlePlayBtn(Z)V

    .line 114
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1}, Lql;->b(Lql;)I

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1}, Lql;->c(Lql;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1, v3}, Lql;->b(Lql;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1, v0}, Lql;->a(Lql;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "content":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lql$1;->a:Lql;

    iget-object v2, p0, Lql$1;->a:Lql;

    invoke-static {v2}, Lql;->d(Lql;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lql;->a(Lql;Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 129
    .restart local v0    # "content":Ljava/lang/String;
    iget-object v1, p0, Lql$1;->a:Lql;

    invoke-static {v1, v0}, Lql;->a(Lql;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
