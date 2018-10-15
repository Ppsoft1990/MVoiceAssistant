.class Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;
.super Landroid/os/Handler;
.source "PluginManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0c02c5

    .line 353
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-virtual {v3}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    const-string/jumbo v3, "PluginManagerActivity"

    const-string/jumbo v4, "Activity finishing, handler do nothing"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v2, 0x0

    .line 360
    .local v2, "pluginType":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 366
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Lasu;

    move-result-object v4

    .line 367
    invoke-virtual {v4, v2}, Lasu;->a(I)I

    move-result v4

    .line 366
    invoke-static {v3, v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;I)Lasq;

    move-result-object v0

    .line 368
    .local v0, "basePluginItem":Lasq;
    if-eqz v0, :cond_0

    .line 369
    invoke-static {v2}, Lasa;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lasq;->a(Z)V

    goto :goto_0

    .line 362
    .end local v0    # "basePluginItem":Lasq;
    :pswitch_1
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)V

    goto :goto_0

    .line 372
    .restart local v0    # "basePluginItem":Lasq;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .line 373
    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lasq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0    # "basePluginItem":Lasq;
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 379
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Lasu;

    move-result-object v4

    .line 380
    invoke-virtual {v4, v2}, Lasu;->a(I)I

    move-result v4

    .line 379
    invoke-static {v3, v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;I)Lasq;

    move-result-object v0

    .line 381
    .restart local v0    # "basePluginItem":Lasq;
    if-eqz v0, :cond_0

    .line 382
    invoke-static {v2}, Lasb;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    .line 384
    invoke-virtual {v3, v5}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lasq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    const v4, 0x7f0c02ce

    .line 387
    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lasq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v0    # "basePluginItem":Lasq;
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 393
    iget-object v3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    iget-object v4, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity$4;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-static {v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->d(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;)Lasu;

    move-result-object v4

    .line 394
    invoke-virtual {v4, v2}, Lasu;->a(I)I

    move-result v4

    .line 393
    invoke-static {v3, v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;I)Lasq;

    move-result-object v0

    .line 395
    .restart local v0    # "basePluginItem":Lasq;
    if-eqz v0, :cond_0

    .line 396
    instance-of v3, v0, Lass;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 397
    check-cast v1, Lass;

    .line 398
    .local v1, "item":Lass;
    invoke-virtual {v1}, Lass;->h()V

    goto/16 :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
