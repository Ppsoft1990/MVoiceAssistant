.class Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;
.super Landroid/os/Handler;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    .line 1565
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1566
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 1570
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 1572
    if-nez p1, :cond_1

    .line 1573
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v6, "PluginHandler message is null"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1578
    .local v3, "object":Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1580
    :pswitch_1
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1581
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1582
    .local v2, "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1583
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1584
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_PLUGIN_INSTALL | pluginType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1585
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1584
    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginPath:Ljava/lang/String;

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1587
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v8, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 1586
    invoke-static {v6, v7, v5, v8}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1000(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto :goto_0

    .line 1592
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_2
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1593
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1594
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1595
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1596
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_PLUGIN_START | pluginType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1597
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1596
    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-static {v6, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1100(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_0

    .line 1604
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_3
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1605
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1606
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1607
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1608
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_PLUGIN_STOP | pluginType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1609
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1608
    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-static {v6, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1200(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_0

    .line 1616
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_4
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1617
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1618
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1619
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1620
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_PLUGIN_DELETE | pluginType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1621
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1620
    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-static {v6, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1300(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_0

    .line 1628
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_5
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1629
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1630
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v6, "MSG_PLUGIN_NETCHECK"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v6, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->listener:Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;

    invoke-static {v5, v6, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1400(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/util/List;Lcom/iflytek/framework/plugin/internal/interfaces/PluginNetUpdateListener;)V

    goto/16 :goto_0

    .line 1635
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_6
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1636
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1637
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v6, "MSG_PLUGIN_LOAD"

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v6, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    invoke-static {v5, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1500(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V

    goto/16 :goto_0

    .line 1642
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_7
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1643
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1644
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_APK_PLUGIN_DELETE packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v6, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1600(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_8
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1651
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1652
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_APK_PLUGIN_INSTALL packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v5, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v6, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1700(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1658
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_9
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1659
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1661
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :try_start_0
    iget-object v4, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    .line 1662
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_PLUGIN_ENTER packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v1, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->apkPluginIntent:Landroid/content/Intent;

    .line 1665
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 1666
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1667
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1669
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.iflytek.lockscreen"

    .line 1671
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1672
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1800()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100034"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1675
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1681
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :pswitch_a
    instance-of v5, v3, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 1682
    check-cast v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;

    .line 1684
    .restart local v2    # "message":Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;
    :try_start_1
    iget-object v4, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->packageName:Ljava/lang/String;

    .line 1685
    .restart local v4    # "packageName":Ljava/lang/String;
    const-string/jumbo v5, "PluginManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MSG_APK_EXIST_PLUGIN_INSTALL packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    .line 1688
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1689
    iget-object v6, p0, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginHandler;->this$0:Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;

    iget-object v5, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->pluginTypeList:Ljava/util/List;

    const/4 v7, 0x0

    .line 1690
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v2, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl$PluginMessage;->callback:Lcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;

    .line 1689
    invoke-static {v6, v4, v5, v7}, Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;->access$1900(Lcom/iflytek/framework/plugin/internal/PluginManagerImpl;Ljava/lang/String;ILcom/iflytek/framework/plugin/internal/interfaces/PluginEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1693
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1694
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PluginManagerImpl"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
