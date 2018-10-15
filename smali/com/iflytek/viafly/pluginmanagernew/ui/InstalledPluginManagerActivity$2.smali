.class Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;
.super Landroid/os/Handler;
.source "InstalledPluginManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->b(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lase;

    .line 278
    .local v8, "uniformPlugin":Lase;
    if-eqz v8, :cond_0

    .line 282
    invoke-virtual {v8}, Lase;->b()I

    move-result v1

    .line 284
    .local v1, "pluginType":I
    invoke-static {v1}, Lasa;->h(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0c02d1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 291
    :cond_2
    const-string/jumbo v0, "gp_apk"

    invoke-virtual {v8}, Lase;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v8}, Lase;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/greenplug/client/GreenPlug;->isPluginRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    const-string/jumbo v0, "InstalledPluginManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update GP Plugin "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lase;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is running, force stop it"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v8}, Lase;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/greenplug/client/GreenPlug;->stopPackage(Ljava/lang/String;)I

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;

    move-result-object v0

    invoke-virtual {v0, v1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v6

    .line 301
    .local v6, "info":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-eqz v6, :cond_5

    .line 302
    invoke-virtual {v6}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "url":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lase;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.iflytek.cmcc.ACTION_ACTIVE"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    const-class v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0, v7}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "url":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->d(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lasj;

    move-result-object v0

    invoke-virtual {v0}, Lasj;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 311
    .restart local v9    # "url":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;

    move-result-object v0

    invoke-virtual {v8}, Lase;->b()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lari;->a(IZ)Z

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->update_plugin:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxk;->b(I)V

    goto :goto_1

    .line 320
    .end local v9    # "url":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->c(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;)Lari;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->update_plugin:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxk;->a(Landroid/content/Context;)Lxk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxk;->b(I)V

    goto :goto_1

    .line 329
    .end local v1    # "pluginType":I
    .end local v6    # "info":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .end local v8    # "uniformPlugin":Lase;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lase;

    .line 330
    .restart local v8    # "uniformPlugin":Lase;
    if-eqz v8, :cond_0

    .line 333
    iget-object v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    iget-object v2, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity$2;->a:Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;

    invoke-static {v0, v2, v8}, Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;->a(Lcom/iflytek/viafly/pluginmanagernew/ui/InstalledPluginManagerActivity;Landroid/content/Context;Lase;)V

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
