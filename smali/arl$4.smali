.class Larl$4;
.super Landroid/os/Handler;
.source "PluginControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larl;


# direct methods
.method constructor <init>(Larl;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 108
    iput-object p1, p0, Larl$4;->a:Larl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    const-string/jumbo v10, "PluginControllerView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handleMessage| msg= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 117
    .local v9, "tip":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 118
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10}, Larl;->b(Larl;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    .end local v9    # "tip":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 123
    .local v0, "data3":Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 124
    .local v6, "pluginType3":I
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10}, Larl;->c(Larl;)Landroid/util/SparseArray;

    move-result-object v10

    .line 125
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    .line 127
    .local v1, "dialog3":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 128
    const-string/jumbo v10, "sizeStr"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v10, "installPercent"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    goto :goto_0

    .line 133
    .end local v0    # "data3":Landroid/os/Bundle;
    .end local v1    # "dialog3":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    .end local v6    # "pluginType3":I
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 134
    .local v4, "infoInstall":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10, v4}, Larl;->a(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    goto :goto_0

    .line 137
    .end local v4    # "infoInstall":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 138
    .local v5, "infoTraffic":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10, v5}, Larl;->b(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    goto :goto_0

    .line 141
    .end local v5    # "infoTraffic":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 142
    .local v7, "pluginType7":I
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10}, Larl;->c(Larl;)Landroid/util/SparseArray;

    move-result-object v10

    .line 143
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    .line 144
    .local v2, "dialog7":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->switchDownloadView()V

    .line 146
    const-string/jumbo v10, "0.0M/0.0M"

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    .line 147
    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    .line 148
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPositiveButtonClickable(Z)V

    .line 149
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPositiveButtonClickableTextColor()V

    goto/16 :goto_0

    .line 154
    .end local v2    # "dialog7":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    .end local v7    # "pluginType7":I
    :pswitch_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 155
    .local v8, "pluginType8":I
    iget-object v10, p0, Larl$4;->a:Larl;

    invoke-static {v10}, Larl;->c(Larl;)Landroid/util/SparseArray;

    move-result-object v10

    .line 156
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    .line 157
    .local v3, "dialog8":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    const-string/jumbo v10, "PluginControllerView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dismiss install dialog| pluginType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " dialog8: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 160
    const-string/jumbo v10, "PluginControllerView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "real dismiss| pluginType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dismiss()V

    .line 162
    const-string/jumbo v10, "0.0M/0.0M"

    invoke-virtual {v3, v10}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    .line 163
    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    goto/16 :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
