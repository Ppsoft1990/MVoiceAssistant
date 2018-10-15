.class Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;
.super Ljava/lang/Object;
.source "NewsPresenter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/news/NewsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 245
    :pswitch_0
    const-string/jumbo v0, "NewsPresenter"

    const-string/jumbo v1, "\u5f00\u59cb\u8c03\u7528\u63a5\u53e3"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V

    goto :goto_0

    .line 249
    :pswitch_1
    const-string/jumbo v0, "NewsPresenter"

    const-string/jumbo v1, "\u91cd\u8bd5\u63a5\u53e3\u8c03\u7528"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->c(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)I

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/news/NewsPresenter$2;->a:Lcom/iflytek/viafly/homepage/news/NewsPresenter;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/news/NewsPresenter;->b(Lcom/iflytek/viafly/homepage/news/NewsPresenter;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
