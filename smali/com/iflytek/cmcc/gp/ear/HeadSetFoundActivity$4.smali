.class Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;
.super Landroid/os/Handler;
.source "HeadSetFoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    .line 256
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_HEADSET_AUTO_START"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->c(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V

    goto :goto_0

    .line 263
    :pswitch_2
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v2}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v2}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    goto :goto_0

    .line 269
    :pswitch_4
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    goto :goto_0

    .line 272
    :pswitch_5
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$4;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0, v1}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->b(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;Z)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
